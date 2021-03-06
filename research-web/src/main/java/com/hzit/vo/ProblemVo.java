package com.hzit.vo;

/**
 * 
 * @author wjf
 */
public class ProblemVo {
	/**
	 *  题目ID
	 */
	private Integer pId;
	/**
	 *  问题内容
	 */
	private String pContent;
	/**
	 *  所属模块0代表餐饮 1代表讲师 2代表班主任
	 */
	private Integer pModule;
	/**
	 *  问题答案
	 */
	private String pAnswer;
	/**
	 * 当前问题得分
	 */
	private Integer pScore;
	/**
	 * 题目ID
	 * @param pId
	 */
	public void setPId(Integer pId){
		this.pId = pId;
	}
	
    /**
     * 题目ID
     * @return Integer
     */	
    public Integer getPId(){
    	return pId;
    }
	/**
	 * 问题内容
	 * @param pContent
	 */
	public void setPContent(String pContent){
		this.pContent = pContent;
	}
	
    /**
     * 问题内容
     * @return String
     */	
    public String getPContent(){
    	return pContent;
    }
	/**
	 * 所属模块0代表餐饮 1代表讲师 2代表班主任
	 * @param pModule
	 */
	public void setPModule(Integer pModule){
		this.pModule = pModule;
	}
	
    /**
     * 所属模块0代表餐饮 1代表讲师 2代表班主任
     * @return Integer
     */	
    public Integer getPModule(){
    	return pModule;
    }

	public String getpAnswer() {
		return pAnswer;
	}

	public void setpAnswer(String pAnswer) {
		this.pAnswer = pAnswer;
	}

	/**
	 * 当前问题得分
	 * @return pScore
	 */
	public Integer getpScore() {
		return pScore;
	}

	/**
	 * 当前问题得分
	 * @param pScore
	 */
	public void setpScore(Integer pScore) {
		this.pScore = pScore;
	}

	@Override
	public String toString() {
		return "ProblemVo{" +
				"pId=" + pId +
				", pContent='" + pContent + '\'' +
				", pModule=" + pModule +
				", pAnswer='" + pAnswer + '\'' +
				", pScore=" + pScore +
				'}';
	}
}