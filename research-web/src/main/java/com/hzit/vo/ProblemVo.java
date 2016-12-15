package com.hzit.vo;

/**
 * 
 * @author wjf
 */
public class ProblemVo {
	/**
	 *  题目ID
	 */
	private Integer PId;
	/**
	 *  问题内容
	 */
	private String PContent;
	/**
	 *  所属模块0代表餐饮 1代表讲师 2代表班主任
	 */
	private Integer PModule;
	/**
	 * 题目ID
	 * @param PId
	 */
	public void setPId(Integer PId){
		this.PId = PId;
	}
	
    /**
     * 题目ID
     * @return Integer
     */	
    public Integer getPId(){
    	return PId;
    }
	/**
	 * 问题内容
	 * @param PContent
	 */
	public void setPContent(String PContent){
		this.PContent = PContent;
	}
	
    /**
     * 问题内容
     * @return String
     */	
    public String getPContent(){
    	return PContent;
    }
	/**
	 * 所属模块0代表餐饮 1代表讲师 2代表班主任
	 * @param PModule
	 */
	public void setPModule(Integer PModule){
		this.PModule = PModule;
	}
	
    /**
     * 所属模块0代表餐饮 1代表讲师 2代表班主任
     * @return Integer
     */	
    public Integer getPModule(){
    	return PModule;
    }

	@Override
	public String toString() {
		return "ProblemVo{" +
				"PId=" + PId +
				", PContent='" + PContent + '\'' +
				", PModule=" + PModule +
				'}';
	}
}