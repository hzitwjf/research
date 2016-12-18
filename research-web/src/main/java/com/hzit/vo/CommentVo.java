package com.hzit.vo;

import com.hzit.dao.entity.Discuss;

import java.util.List;

/**
 * 
 * @author wjf
 */
public class CommentVo {
	/**
	 *  评论ID
	 */
	private Integer cId;
	/**
	 *  评论业务ID
	 */
	private String cUuid;
	/**
	 *  评论时间
	 */
	private String cTime;
	/**
	 *  评论人
	 */
	private String cPeople;
	/**
	 *  评论人出现的次数
	 */
	private String cCount;
	/**
	 * 评论的模块
	 */
	private String  cModule;
	/**
	 *  评论详情
	 */
	private List<DiscussVo> discussVos;
	/**
	 * 评论ID
	 * @param cId
	 */
	public void setCId(Integer cId){
		this.cId = cId;
	}

	/**
	 * 评论ID
	 * @return Integer
	 */
	public Integer getCId(){
		return cId;
	}
	/**
	 * 评论业务ID
	 * @param cUuid
	 */
	public void setCUuid(String cUuid){
		this.cUuid = cUuid;
	}

	/**
	 * 评论业务ID
	 * @return String
	 */
	public String getCUuid(){
		return cUuid;
	}
	/**
	 * 评论时间
	 * @param cTime
	 */
	public void setCTime(String cTime){
		this.cTime = cTime;
	}

	/**
	 * 评论时间
	 * @return java.util.Date
	 */
	public String getCTime(){
		return cTime;
	}
	/**
	 * 评论人
	 * @param cPeople
	 */
	public void setCPeople(String cPeople){
		this.cPeople = cPeople;
	}

	/**
	 * 评论人
	 * @return String
	 */
	public String getCPeople(){
		return cPeople;
	}

	/**
	 * 评论人出现的次数
	 * @return cCount
	 */
	public String getcCount() {
		return cCount;
	}
	/**
	 * 评论人出现的次数
	 * @param cCount
	 */
	public void setcCount(String cCount) {
		this.cCount = cCount;
	}
	/**
	 * 评论详情
	 * @return discussVos
	 */
	public List<DiscussVo> getDiscussVos() {
		return discussVos;
	}
	/**
	 * 评论详情
	 * @param discussVos
	 */
	public void setDiscussVos(List<DiscussVo> discussVos) {
		this.discussVos = discussVos;
	}
	/**
	 * 评论的模块
	 * @return cModule
	 */
	public String getcModule() {
		return cModule;
	}

	/**
	 * 评论的模块
	 * @param cModule
	 */
	public void setcModule(String cModule) {
		this.cModule = cModule;
	}
	@Override
	public String toString() {
		return "CommentVo{" +
				"cId=" + cId +
				", cUuid='" + cUuid + '\'' +
				", cTime='" + cTime + '\'' +
				", cPeople='" + cPeople + '\'' +
				", cCount='" + cCount + '\'' +
				", cModule='" + cModule + '\'' +
				", discussVos=" + discussVos +
				'}';
	}
}