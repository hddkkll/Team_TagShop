package controller;


import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import service.BuyService;
import service.ProfileService;
import service.ShopsService;
import vo.CodeVo;
import vo.OptionsVo;
import vo.OrderedItemsVo;
import vo.ProfileVo;
import vo.SelectedOptionVo;


@RestController
public class UseridRestController {
	
	@Autowired
	private ShopsService service;
	
	@Autowired
	private BuyService buyService;
	
	@Autowired
	private SelectedOptionVo selectedOptionVo;
	
	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private List<OrderedItemsVo> itemList;
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
	@Transactional
	@RequestMapping(value="/{userid}/baskets", method=RequestMethod.GET)
	public List<OrderedItemsVo> getBasketList(@PathVariable("userid") String userid, HttpSession session) {
		itemList = buyService.getBuyitems(userid);
		
		for (int i = 0; i < itemList.size(); i++) {
			itemList.get(i).setOptions(buyService.getOptions(userid, itemList.get(i).getBuyitemsId()));
		}
		
		ProfileVo profileVo = profileService.getProfile(userid);
		List<CodeVo> bankList = buyService.getBankCode();
		List<CodeVo> payTypeList = buyService.getPayTypeCode();
		
		session.setAttribute("itemList", itemList);
		session.setAttribute("profileVo", profileVo);
		session.setAttribute("bankList", bankList);
		session.setAttribute("payTypeList", payTypeList);

		return itemList;
	}
	
	
	
	
	
	@Transactional
	@RequestMapping(value="/{userid}/baskets/{productItemid}", method=RequestMethod.POST)
	public String addBuyitems(@PathVariable("userid") String userid, @PathVariable("productItemid") BigInteger productItemid 
			,double unitPrice, int quantity) {

		HashMap<String, Object> map = new HashMap<String, Object>();

		System.out.println("구매추가전 ");
		map.put("deliveryFee", 2500);
		map.put("usedPoint", 0);
		map.put("userid", userid);
		map.put("unitPrice", unitPrice);
		map.put("quantity", quantity);
		map.put("productItemId", productItemid);
		
		buyService.addBuyitems(map);
		System.out.println("구매추가후");
		
		List<BigInteger> list = buyService.getBuyitemsId(userid);
		List<OptionsVo> optionList = service.getOption(productItemid);
		
		
		for (int i = 0; i < optionList.size(); i++) {
			selectedOptionVo.setBuyItemsId(list.get(list.size()-1));
			selectedOptionVo.setOptionCode(optionList.get(i).getOptionCode());
			selectedOptionVo.setOptionType(optionList.get(i).getOptionType());
			buyService.addSelectedOption(selectedOptionVo);
		}

		return "redirect:/";
	}
	
	@Transactional
	@RequestMapping(value="/{userid}/baskets/{buyItemsId}", method=RequestMethod.DELETE)
	public String deleteBasket(@PathVariable("userid") String userid,@PathVariable("buyItemsId") BigInteger buyItemsId) {
		
		service.deleteSelectedOption(buyItemsId);
		service.deleteBuyItems(buyItemsId);
		return "success";
	}
	

}
