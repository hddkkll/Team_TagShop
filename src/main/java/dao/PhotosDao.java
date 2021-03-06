package dao;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;

import vo.PhotosVo;
import vo.CommentsVo;
import vo.CommentsjoinVo;
import vo.FollowerVo;
import vo.FollowingVo;
import vo.LikesVo;

public interface PhotosDao {
	
//	public void insertPhotos(PhotosVo dto);
	
	public List<PhotosVo> getAllPhotos(String userid);
	
//	public void updatePhotos(PhotosVo dto);
	
	public Integer getLikeCount(int photoid);
	
	public Integer getCommentCount(int photoid);
	
	public List<CommentsVo> getAllComments(int photoid);
	
	public List<CommentsjoinVo> getAllCommentsJoin(int photoid);
	
	public CommentsjoinVo getCommentsJoin(HashMap<String, Object> map);
	
	public int insertComments(CommentsVo comments);
	
	public int insertPhotos(PhotosVo photos);
	
	public int getFollowerCount(String userid); 
	
	public int getFollowingCount(String userid); 
	
	public PhotosVo getPhoto(int photoid);
	
	public List<PhotosVo> getPhotoLikes(String userid);
	
	public int insertLikes(LikesVo likes);
	
	public LikesVo getLikeCheck(HashMap<String, Object> map);
	
	public int getLikeCheckOk(HashMap<String, Object> map);
	
	public int insertFollow(FollowingVo follow);
	
	public int deleteFollow(FollowingVo follow);
	

}
