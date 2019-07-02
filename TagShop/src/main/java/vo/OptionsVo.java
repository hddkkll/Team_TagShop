package vo;

import java.math.BigInteger;

import lombok.Data;

@Data
public class OptionsVo {
	private BigInteger optionid;
	private String optionCode;
	private String optionType;
	private String optionCode2;
	private BigInteger productItemid;
}
