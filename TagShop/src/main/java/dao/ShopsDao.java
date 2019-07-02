package dao;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import vo.CategoriesVo;
import vo.OptionsVo;
import vo.ProductDetailVo;
import vo.ProductItemVo;
import vo.ProductsVo;
import vo.SelectedCategoriesVo;
import vo.ShopsVo;

@Repository
public interface ShopsDao {
	public void sellerRegister(ShopsVo vo);
	
	public List<ProductsVo> getSellerList() throws Exception;
	
	public void insertCategories(SelectedCategoriesVo vo);
	
	public void productsRegister(ProductsVo productsVo);
	
	public void productItemRegister(ProductItemVo productItemVo);
	
	public void optionsSize(OptionsVo optionsVo);
	
	public void optionsColor(OptionsVo optionsVo);
	
	public ProductDetailVo productDetail(BigInteger productid);
	
	public List<OptionsVo> getOptions(BigInteger productid);
	
	public List<OptionsVo> getOption(BigInteger productItemid);
	
	public List<ProductsVo> productCategories();
	
	public List<ProductsVo> productOrderBy(HashMap<String, String> map);
	
	public List<ProductsVo> smallCategories(HashMap<String, String> map);
	
	public void deleteSelectedOption(BigInteger buyItemsId);
	
	public void deleteBuyItems(BigInteger buyItemsId);
	
	public List<CategoriesVo> getCategories();
	
	public int checkname(String name);
}
