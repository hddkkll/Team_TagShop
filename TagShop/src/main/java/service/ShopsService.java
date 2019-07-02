package service;

import java.math.BigInteger; 
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ShopsDao;
import vo.CategoriesVo;
import vo.OptionsVo;
import vo.ProductDetailVo;
import vo.ProductItemVo;
import vo.ProductsVo;
import vo.SelectedCategoriesVo;
import vo.ShopsVo;

@Service
public class ShopsService {

	@Autowired
	private SqlSession sqlSession;

	public void sellerRegister(ShopsVo vo) {
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		
		
		String bankAccount = vo.getBankAccount1() + "-" + vo.getBankAccount2() + "-" + vo.getBankAccount2();
		String phone = vo.getPhone1() + "-" + vo.getPhone2() + "-" + vo.getPhone3();
		vo.setBankAccount(bankAccount);
		vo.setPhone(phone);
		dao.sellerRegister(vo);
	}
	
	public List<ProductsVo> getSellerList() throws Exception {
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		return dao.getSellerList();
	}

	public void insertCategories(SelectedCategoriesVo vo) {
		
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		dao.insertCategories(vo);
	}
	
	@Transactional
	public void productsRegister(ProductsVo productsVo, ProductItemVo productItemVo, OptionsVo optionsVo) {
		
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		
		
		dao.productsRegister(productsVo);
		dao.productItemRegister(productItemVo);
		System.out.println(optionsVo.toString());
		dao.optionsColor(optionsVo);
		dao.optionsSize(optionsVo);
	}
	
	public List<ProductsVo> productCategories(){
		
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		return dao.productCategories();
	};
	
	public List<ProductsVo> productOrderBy(String sort){
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("column", sort);
		
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		List<ProductsVo> list = dao.productOrderBy(map);
		System.out.println(list);
		return list;
	};
	
	public List<ProductsVo> smallCategories(String code){
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("code", code);
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		List<ProductsVo> list = dao.smallCategories(map);
		System.out.println(list);
		return list;
	};
	
	public ProductDetailVo productDetail(BigInteger productid) {
		
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		return dao.productDetail(productid);
	}
	
	public List<OptionsVo> getOptions(BigInteger productid){
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		return dao.getOptions(productid);
	}
	
	public List<OptionsVo> getOption(BigInteger productItemid){
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		return dao.getOption(productItemid);
	}
	
	public void deleteSelectedOption(BigInteger buyItemsId) {
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		dao.deleteSelectedOption(buyItemsId);
	}
	
	public void deleteBuyItems(BigInteger buyItemsId) {
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		dao.deleteBuyItems(buyItemsId);
	}
	
	public List<CategoriesVo> getCategories() {
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		return dao.getCategories();
	}
	
	public int selectUsername(String name) {
		ShopsDao dao = sqlSession.getMapper(ShopsDao.class);
		return dao.checkname(name);
	}
}
