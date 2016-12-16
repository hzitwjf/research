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
	@Override
	public String toString() {
		return "ProblemVo{" +
				"pId=" + pId +
				", pContent='" + pContent + '\'' +
				", pModule=" + pModule +
				'}';
	}
}