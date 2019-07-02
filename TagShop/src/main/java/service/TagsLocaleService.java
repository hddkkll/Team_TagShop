package service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TagsLocaleDao;
import vo.TagsLocaleVo;

@Service
public class TagsLocaleService {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void addTags(TagsLocaleVo vo) {
		TagsLocaleDao dao = sqlSession.getMapper(TagsLocaleDao.class);
		dao.insertTagsLocale(vo);
	}
	
	public int idCheck(HashMap<String, String> map) {
		TagsLocaleDao dao = sqlSession.getMapper(TagsLocaleDao.class);
		return dao.idCheck(map);
	}
	
	public TagsLocaleVo getTags(HashMap<String, String> map) {
		TagsLocaleDao dao = sqlSession.getMapper(TagsLocaleDao.class);
		return dao.getTagsLocale(map);
	}
}
