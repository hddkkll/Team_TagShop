package dao;

import java.util.HashMap;

import vo.TagsLocaleVo;

public interface TagsLocaleDao {
	public void insertTagsLocale(TagsLocaleVo vo);
	
	public int idCheck(HashMap<String, String> map);
	
	public TagsLocaleVo getTagsLocale(HashMap<String, String> map);
}
