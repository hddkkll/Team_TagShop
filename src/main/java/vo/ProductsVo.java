package vo;

import java.math.BigInteger;
import java.util.Date;

import org.springframework.stereotype.Service;

import lombok.Data;

@Service
@Data
public class ProductsVo {
	private BigInteger productid;
	private String title;
	private String description;
	private double price;
	
	private String photoFile;
	private String smallCategoryCode;
	private Date createDate;
	private Date UpdateDate;
	private String shopid;

	
}
