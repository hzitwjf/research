package com.hzit.dao.entity;

/**
 * 
 * @author wjf
 */
public class Problem {
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
     * @return
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
     * @return
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
     * @return
     */	
    public Integer getPModule(){
    	return PModule;
    }

	@Override
	public String toString() {
		return "Problem{" +
				"PId=" + PId +
				", PContent='" + PContent + '\'' +
				", PModule=" + PModule +
				'}';
	}
}