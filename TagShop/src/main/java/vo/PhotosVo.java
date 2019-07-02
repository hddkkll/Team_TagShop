package vo;

import java.math.BigInteger;
import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class PhotosVo {
	
	private BigInteger photoId;
	private String fileName;
	private String descripTion;
	private BigInteger refPhotoid;
	private BigInteger refProductid;
	private Date createDate;
	private int dateDiff;
	private Date updateDate;
	private String userId;
	
}
