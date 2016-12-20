package com.hzit.dao.entity;

/**
 * 
 * @author wjf
 */
public class Comment {
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
	 * 当前模块的总得分
	 */
	private Integer  cScore;
	/**
	 *  被评论人
	 */
	private String cdPeople;
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

	/**
	 * 当前模块的总得分
	 * @return cScore
	 */
	public Integer getcScore() {
		return cScore;
	}

	/**
	 * 当前模块的总得分
	 * @param cScore
	 */
	public void setcScore(Integer cScore) {
		this.cScore = cScore;
	}

	/**
	 * 被评论人
	 * @return cdPeople
	 */
	public String getCdPeople() {
		return cdPeople;
	}

	/**
	 * 被评论人
	 * @param cdPeople
	 */
	public void setCdPeople(String cdPeople) {
		this.cdPeople = cdPeople;
	}

	@Override
	public String toString() {
		return "Comment{" +
				"cId=" + cId +
				", cUuid='" + cUuid + '\'' +
				", cTime='" + cTime + '\'' +
				", cPeople='" + cPeople + '\'' +
				", cCount='" + cCount + '\'' +
				", cModule='" + cModule + '\'' +
				", cScore=" + cScore +
				", cdPeople='" + cdPeople + '\'' +
				'}';
	}
}