package controller;





import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import service.ShopsService;
import vo.ProductsVo;


@RestController
@RequestMapping("/shops")
public class ShopsRestController {
	
	@Autowired
	private ShopsService service;
	
	@RequestMapping(value="/categories/sort/{sort}", method=RequestMethod.GET)
	public List<ProductsVo> psort(@PathVariable("sort") String sort) throws Exception {
		return service.productOrderBy(sort);
	}
	
	@RequestMapping(value="/categories/{code}", method=RequestMethod.GET)
	public List<ProductsVo> byCategories(@PathVariable("code") String code) throws Exception {
		return service.smallCategories(code);
	}
}
