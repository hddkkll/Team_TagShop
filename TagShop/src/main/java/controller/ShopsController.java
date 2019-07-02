package controller;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import service.AuthoritiesService;
import service.BuyService;
import service.ShopsService;
import service.TagsLocaleService;
import utils.GoogleTranslation;
import vo.AuthoritiesVo;
import vo.CategoriesVo;
import vo.OptionsVo;
import vo.ProductDetailVo;
import vo.ProductItemVo;
import vo.ProductsVo;
import vo.SelectedCategoriesVo;
import vo.ShopsVo;
import vo.TagsLocaleVo;

@Controller
@RequestMapping(value = "/shops")
public class ShopsController {

	private static final Logger logger = LoggerFactory.getLogger(ShopsController.class);

	@Autowired
	private ShopsService service;
	
	@Autowired
	private BuyService buyService;
	
	@Autowired
	private AuthoritiesService authService;
	
	@Autowired
	private AuthoritiesVo authVo;

	@Autowired
	private TagsLocaleService tagsLocaleService;
	
	@Autowired
	private TagsLocaleVo tagsLocaleVo;
	
	/*
     * @method name : sellerList
     *
     * @date : 2019.06.25
     *
     * @author : 김동현
     *
     * @description : 개별 Shop홈페이지 해당 샵의 제품목록을 출력
     *
     * @parameters : Model model
     *
     * @return : String
     *
     * @example 
     */
	
	@RequestMapping(value="/{shopid}", method=RequestMethod.GET)
	public String sellerList(Model model, HttpSession session) {
		logger.info("[GET] getSellerList()");
		try {
			List<ProductsVo> ProductsList = service.getSellerList();
			model.addAttribute("productsList", ProductsList);
//			session.setAttribute("shopid", "value");
			System.out.println("##Practice## Shops/sellerHome");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "shops/sellerHome";
	}
	

	
	/*
     * @method name : sellerRegister
     *
     * @date : 2019.06.24
     *
     * @author : 장지훈
     *
     * @description : 판매등록 페이지 이동
     *
     * @parameters : 
     *
     * @return : String
     *
     * @example 
     */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String sellerRegister() {
		logger.debug("[GET] sellerRegister()");
		return "shops/sellerRegister";
	}
	
	
	/*
     * @method name : sellerRegister
     *
     * @date : 2019.06.24
     *
     * @author : 장지훈
     *
     * @description : 판매자 등록
     *
     * @parameters : ShopsVo shopsVo, SelectedCategoriesVo scVo
     *
     * @return : String
     *
     * @example 
     */
	@RequestMapping(value="/new", method = RequestMethod.POST)
	public String sellerRegister(ShopsVo shopsVo, SelectedCategoriesVo scVo) {
		logger.info("[POST] sellerRegister()");
		
		authVo.setUserid("TEST");
		authVo.setAuthority("ROLE_SELLER");
		shopsVo.setUserid("TEST");
		
		System.out.println("컨트롤러");
		
		service.sellerRegister(shopsVo);
		authService.addAuthorities(authVo);
		service.insertCategories(scVo);
		
		return "redirect:/";
	}
	
	/*
     * @method name : productsReg
     *
     * @date : 2019.06.24
     *
     * @author : 장지훈
     *
     * @description : 판매물품 등록 페이지 이동
     *
     * @parameters : 
     *
     * @return : String
     *
     * @example 
     */
	@RequestMapping(value = "/{shopid}/products/new", method = RequestMethod.GET)
	public String productsReg() {
		logger.debug("[GET] productsReg()");
		return "shops/productRegister";
	}

	
	/*
     * @method name : productsReg
     *
     * @date : 2019.06.24
     *
     * @author : 장지훈
     *
     * @description : 판매 물품 등록
     *
     * @parameters : 
     *
     * @return : String
     *
     * @example 
     */
	
	
	@RequestMapping(value = "/{shopid}/products/new", method = RequestMethod.POST)
	public String productsReg(@PathVariable("shopid") String shopid,MultipartHttpServletRequest request,
			ProductsVo productsVo, ProductItemVo productItemVo, OptionsVo optionsVo) throws IllegalStateException, IOException {
		logger.info("[POST] productsReg()");

		//파일
		MultipartFile mf = request.getFile("file");
		if(mf != null) {
			String fileName = mf.getOriginalFilename(); //파일명 얻기
			System.out.println("fileName : " + fileName);
			
			//업로드 파일명을 변경후 저장			
			String uploadedFileName = System.currentTimeMillis() 
					+ UUID.randomUUID().toString()+fileName.substring(fileName.lastIndexOf("."));
		
		    String uploadPath = request.getSession().getServletContext().getRealPath("uploads");
		    System.out.println("uploads : "+ uploadPath);
		    if(mf.getSize() != 0) {	    	
		    	mf.transferTo(new File(uploadPath+"/"+fileName));	 
		    	productsVo.setPhotoFile(fileName);
		    }   
		}
		
		productsVo.setShopid(shopid);
		service.productsRegister(productsVo, productItemVo,optionsVo);

		return "redirect:/";
	}
	
	/*
     * @method name : getProductDetail
     *
     * @date : 2019.06.27
     *
     * @author : 장지훈
     *
     * @description : 상품 상세보기
     *
     * @parameters : 
     *
     * @return : String
     *
     * @example 
     */
	
	@RequestMapping(value = "/{shopid}/products/{productid}", method = RequestMethod.GET)
	public String getProductDetail(@PathVariable("productid") BigInteger productid, Model model) {
		logger.debug("[GET] productDetail()");
		
		ProductDetailVo vo = service.productDetail(productid);
		vo.setOptions(service.getOptions(productid));
				model.addAttribute("vo", vo);
				System.out.println(vo.getOptions().toString());
		return "shops/productDetail";
	}
	 
	/*
     * @method name : productsList
     *
     * @date : 2019.06.25
     *
     * @author : 장지훈
     *
     * @description : 카테고리, 태그별 상품
     *
     * @parameters : model
     *
     * @return : String
     *
     * @example 
     */
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String productsList(Model model) {
		logger.info("[GET] productCategories()");
		
		List<ProductsVo> list = service.productCategories();
		List<CategoriesVo> categories = service.getCategories();
		System.out.println(categories.toString());
		model.addAttribute("list", list);
		model.addAttribute("categories",categories);
		return "shops/productCategories";
	}
	
	/*
     * @method name : addBuyitems
     *
     * @date : 2019.06.27
     *
     * @author : 장지훈
     *
     * @description : 장바구니 리스트 추가
     *
     * @parameters : 
     *
     * @return : String
     *
     * @example 
     */
	
//	@Transactional
//	@RequestMapping(value="/{userid}/baskets/{productItemid}", method=RequestMethod.POST)
//	public String addBuyitems(@PathVariable("userid") String userid, @PathVariable("productItemid") BigInteger productItemid 
//			) {
////		,double unitPrice, int quantity, @RequestBody OptionsVo optionVo
//		HashMap<String, Object> map = new HashMap<String, Object>();
//
//		System.out.println("구매추가전 ");
//		map.put("deliveryFee", 2500);
//		map.put("usedPoint", 0);
//		map.put("userid", userid);
//		map.put("unitPrice", 3000);
//		map.put("quantity", 2);
//		map.put("productItemId", productItemid);
//		
//		buyService.addBuyitems(map);
//		System.out.println("구매추가후");
//		
//		List<BigInteger> list = buyService.getBuyitemsId(userid);
//		List<OptionsVo> optionList = service.getOption(productItemid);
//		
//		System.out.println(list.toString());
//		System.out.println(optionList.toString());
//		
//		for (int i = 0; i < optionList.size()-1; i++) {
//			selectedOptionVo.setBuyItemsId(list.get(list.size()-1));
//			selectedOptionVo.setOptionCode(optionList.get(i).getOptionCode());
//			selectedOptionVo.setOptionType(optionList.get(i).getOptionType());
//			buyService.addSelectedOption(selectedOptionVo);
//		}
//
//		return "redirect:/";
//	}
	
	
	
	
	
	/*
     * @method name : addTagForm
     *
     * @date : 2019.06.21
     *
     * @author : 정일찬 
     *
     * @description : 태그 추가 입력 
     *
     * @parameters : none
     *
     * @return : String
     *
     * @example : 
     */
	@RequestMapping(value = "/tags/new", method = RequestMethod.GET)
	public String addTagForm() {
		return "tags/addTagForm";
	}

	/*
     * @method name : addTag
     *
     * @date : 2019.06.21
     *
     * @author : 정일찬 
     *
     * @description : 태그 추가 
     *
     * @parameters : String tags
     *
     * @return : String
     *
     * @example : 
     */
	@RequestMapping(value = "/tags/new", method = RequestMethod.POST)
	public String addTag(@RequestParam("tags") String tags) {
		
		// 해당언어(한국어, 영어등)로 해당 단어가 이미 존재하는지 검사
		
		HashMap<String, String> map = new HashMap<String, String>();
		String origin = GoogleTranslation.detectLanguage(tags);
		String tagName = "TagsName" + origin;

		map.put("column", tagName);
		map.put("search", tags);

		if (tagsLocaleService.idCheck(map) == 0) {
			String[] languages = { "en", "es", "zh", "hi", "ja", "ru", "pt", "ko" };
			for (int i = 0; i < languages.length; i++) {
				//origin.equals(languages[i])는 NullPointerror가 발생할 가능성이 있음
				String out="";
				if(!languages[i].equals(origin)) {
					out = GoogleTranslation.autoDetectTranslate(tags, languages[i]);
				} else {
					out = tags;
				}
				switch(languages[i]) {
					case "en" : tagsLocaleVo.setTagsNameEn(out); break;
					case "es" : tagsLocaleVo.setTagsNameEs(out); break;
					case "zh" : tagsLocaleVo.setTagsNameZh(out); break;
					case "hi" : tagsLocaleVo.setTagsNameHi(out); break;
					case "ja" : tagsLocaleVo.setTagsNameJa(out); break;
					case "ru" : tagsLocaleVo.setTagsNameRu(out); break;
					case "pt" : tagsLocaleVo.setTagsNamePt(out); break;
					case "ko" : tagsLocaleVo.setTagsNameKo(out); break;
				}
			}

		}

		System.out.println(tagsLocaleVo);
		tagsLocaleService.addTags(tagsLocaleVo);
		
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping(value = "/check_name", method = RequestMethod.POST)
	public int checkname(String name) {
		return service.selectUsername(name);
	}

}
