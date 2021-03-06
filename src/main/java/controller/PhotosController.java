package controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import service.PhotosService;
import service.ProfileService;
import service.UsersService;
import vo.CommentsVo;
import vo.CommentsjoinVo;
import vo.FollowingVo;
import vo.LikesVo;
import vo.PhotosVo;
import vo.ProfileVo;
import vo.UsersVo;

@Controller
public class PhotosController {
	
	
	@Autowired
	private PhotosService photoservice;
	
	@Autowired
	private ProfileService profileservice;
	
	@Autowired
	private UsersService usersservice;
	
	@Autowired
	private PhotosVo photosvo;
	
	@Autowired
	private ProfileVo profilevo;
	
	@Autowired
	private CommentsVo commentsvo;
	
	@Autowired
	private CommentsjoinVo commentsjoinvo;
	
	@Autowired
	private LikesVo likesvo;
	
	@Autowired
	private UsersVo usersvo;
	
	@Autowired
	private FollowingVo followingvo;
	
	
	/*
     * @method name : feed
     *
     * @date : 2019.06.26
     *
     * @author : 김동민
     *
     * @description : feed 페이지
     *
     * @parameters : userid
     *
     * @return : String
     *
     * @example 
     */
	
	/* feed 페이지 */
	@RequestMapping(value = "/{userid}/feeds", method = RequestMethod.GET)
	public String feed(@PathVariable("userid") String userid, Model model) {
		
		List<PhotosVo> photos = photoservice.getAllPhotos(userid);
		ProfileVo profile = profileservice.getProfile(userid);
		int follower = photoservice.getFollowerCount(userid);
		int following = photoservice.getFollowingCount(userid);
		
		model.addAttribute("photos", photos);
		model.addAttribute("profile", profile);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		
		
		return "photos/photoFeed";
	}
	
	/* 사진올리기 페이지 */
	@RequestMapping(value = "/{userid}/photos", method = RequestMethod.GET)
	public String getPhotoUpload() {
		
		return "ajaxview/photoUpload";
	}
	
	/* 사진올리기 */
	@RequestMapping(value = "/{userid}/photos", method = RequestMethod.POST)
	public String photoUpload(@PathVariable("userid") String userid, PhotosVo photosvo, MultipartHttpServletRequest request) throws UnsupportedEncodingException {
		
		MultipartFile mf = request.getFile("file");
		if(mf != null) {
			String fileName = new String(mf.getOriginalFilename()); //파일명 얻기
			System.out.println("fileName : " + fileName);
			
			//업로드 파일명을 변경후 저장			
			String uploadedFileName = System.currentTimeMillis() 
					+ UUID.randomUUID().toString()+fileName.substring(fileName.lastIndexOf("."));
		
			System.out.println("변경된 파일 명 : " + uploadedFileName);
			
		    String uploadPath = request.getSession().getServletContext().getRealPath("uploads");
		    System.out.println("uploads : "+ uploadPath);
		    if(mf.getSize() != 0) {	    	
		    	try {
					mf.transferTo(new File(uploadPath+"/"+fileName));
				} catch (IllegalStateException | IOException e) {
					System.out.println(e.getMessage());
				}	 
		    	photosvo.setFileName(fileName);
		    	photosvo.setUserId(userid);
		    }   
		}
		
			System.out.println(photosvo);
			int result = photoservice.insertPhotos(photosvo);
		
		
		return "redirect:/{userid}/";
	}
	
	/* 사진보기(디테일) */
	@RequestMapping(value = "/{userid}/photos/{photouserid}/{photoid}", method = RequestMethod.POST)
	public String getPhoto(@PathVariable("photouserid") String photouserid, @PathVariable("userid") String userid, @PathVariable("photoid") int photoid, Model model) {
		
		photosvo = photoservice.getPhoto(photoid);
		List<CommentsjoinVo> comments = photoservice.getAllCommentsJoin(photoid);
		LikesVo likecheck = photoservice.getLikeCheck(userid, photoid);
		ProfileVo profile = profileservice.getProfile(photosvo.getUserId());
		Map<String,Object> photodetail = new HashMap<String,Object>();
		
		photodetail.put("photos", photosvo);
		photodetail.put("comments", comments);
		photodetail.put("likecheck", likecheck);
		photodetail.put("profile", profile);
		
		model.addAttribute("photodetail", photodetail);
		
		return "ajaxview/photoDetail";
	}
	
	/* 좋아요 및 comment 카운트 ajax */
	@RequestMapping(value = "/{userid}/photos/{photoid}/likes", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getLikeCount(@PathVariable("userid") String userid, @PathVariable("photoid") int photoid) {
		
		Map<String,Object> allcheck = new HashMap<String, Object>();
		
		Integer likecount = photoservice.getLikeCount(photoid);
		Integer commentcount = photoservice.getCommentCount(photoid);
		
		allcheck.put("likecount", likecount);
		allcheck.put("commentcount", commentcount);
		
		return allcheck;
	}
	
	/* 좋아요 클릭전에 DB에 null 값이면 좋아요 테이블 insert ajax */
	@ResponseBody
	@RequestMapping(value = "/{userid}/likecheck", method = RequestMethod.POST)
	public String getLikeCheck(@RequestBody LikesVo likes) {
		
		int result = photoservice.insertLikes(likes);
		
		if(result != 0) {
			return "success";
		}else {
			return "false";
		}
		
	}
	
	/* 좋아요 선택, 해제 update ajax */
	@ResponseBody
	@RequestMapping(value = "/{userid}/likecheckok", method = RequestMethod.POST)
	public String getLikeCheckTrue(String userid, int photoid, boolean likeyn) {
		
		System.out.println(userid + photoid + likeyn);
		
		int result = photoservice.getLikeCheckOk(userid, photoid, likeyn);
		
		if(result != 0) {
			return "success";
		}else {
			return "false";
		}
		
	}
	
	/* 타임라인 페이지 */
	@RequestMapping(value = "/{userid}/", method = {RequestMethod.POST, RequestMethod.GET})
	public String getTimelinePhotos(@PathVariable("userid") String userid, Model model) {
		
		List<PhotosVo> photos = photoservice.getAllPhotos(userid);
		ProfileVo profile = profileservice.getProfile(userid);
		int follower = photoservice.getFollowerCount(userid);
		int following = photoservice.getFollowingCount(userid);
		
		model.addAttribute("photos", photos);
		model.addAttribute("profile", profile);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		

		return "photos/photoTimeline";
	}
	
	
	/* 좋아요 페이지 */
	@RequestMapping(value = "/{userid}/likes", method = {RequestMethod.POST, RequestMethod.GET})
	public String like(@PathVariable("userid") String userid, Model model) {
		
		List<PhotosVo> photoslike = photoservice.getPhotoLikes(userid);
		ProfileVo profile = profileservice.getProfile(userid);
		int follower = photoservice.getFollowerCount(userid);
		int following = photoservice.getFollowingCount(userid);
		
		model.addAttribute("photos", photoslike);
		model.addAttribute("profile", profile);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);

		return "photos/photoLike";
	}
	
	/* comment 쓰기 ajax */
	@ResponseBody
	@RequestMapping(value = "/{userid}/comments/{photouserid}/{photoid}", method = RequestMethod.POST)
	public ProfileVo insertComment(@PathVariable("userid") String userid, @PathVariable("photoid") BigInteger photoid, @RequestParam("comment") String comment) {
		
		commentsvo.setUserid(userid);
		commentsvo.setPhotoId(photoid);
		commentsvo.setBuyYn(false);
		commentsvo.setComments(comment);
		
		int result = photoservice.insertComments(commentsvo);
		
		profilevo = profileservice.getProfile(userid);
		
		return profilevo;
	}
	
	/* 프로필 수정 페이지 */
	@RequestMapping(value = "/{userid}/photos/edit", method = RequestMethod.GET)
	public String getProfile(@PathVariable("userid") String userid, Model model) {
		
		usersvo = usersservice.getUsers(userid);
		profilevo = profileservice.getProfile(userid);
		
		Map<String, Object> edit = new HashMap<String, Object>();
		
		edit.put("users", usersvo);
		edit.put("profile", profilevo);
		
		System.out.println(edit);
		
		model.addAttribute("edit", edit);
		
		return "photos/photosProfile";
	}
	
	@RequestMapping(value = "/{userid}/photos/edit", method = RequestMethod.POST)
	public String updateProfile(@PathVariable("userid") String userid, ProfileVo profilevo, UsersVo usersvo) {
		
		System.out.println(profilevo);
		System.out.println(usersvo);
		
		usersvo.setEnabled(true);
		
		profileservice.updateSnsProfile(profilevo);
		usersservice.updateUsers(usersvo);
		
		return "redirect:/{userid}/photos/edit";
	}
	
	@ResponseBody
	@RequestMapping(value = "/{userid}/profile/photo", method = RequestMethod.POST)
	public String getPhotoEdit(@PathVariable("userid") String userid, MultipartHttpServletRequest request) throws UnsupportedEncodingException {
		
		System.out.println("controller 탐");
		
		int result = 0;
		
		MultipartFile mf = request.getFile("photofile");
		if(mf != null) {
			String fileName = new String(mf.getOriginalFilename()); //파일명 얻기
			System.out.println("fileName : " + fileName);
			
		    String uploadPath = request.getSession().getServletContext().getRealPath("uploads");
		    
		    if(mf.getSize() != 0) {	    	
		    	try {
					mf.transferTo(new File(uploadPath+"/"+fileName));
				} catch (IllegalStateException | IOException e) {
					System.out.println(e.getMessage());
				}	 
		    	
		    	result = profileservice.udatePhotoProfile(userid, fileName);
		    }   
		}

		if(result != 0){
			return "success";
		}else{
			return "false";
		}
		
		
	}
	
	@RequestMapping(value = "/{userid}/photos/{photouserid}/follow", method = RequestMethod.POST)
	public int insertfollow(@PathVariable("userid") String userid, @PathVariable("photouserid") String photouserid, String follow) throws UnsupportedEncodingException {
		System.out.println(userid);
		System.out.println(photouserid);
		
		followingvo.setFollowingId(photouserid);
		followingvo.setUsersUserId(userid);
		
		System.out.println(followingvo);
		
		if(follow != "팔로우"){
			return photoservice.insertFollow(followingvo);
		}else {
			return photoservice.deleteFollow(followingvo);
		}
		
	}


}
