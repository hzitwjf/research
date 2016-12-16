package com.hzit.dao.entity;

/**
 * 
 * @author wjf
 */
public class Vegetable {
	/**
	 *  菜品ID
	 */
	private Integer vId;
	/**
	 *  菜品类型
	 */
	private String vType;
	/**
	 *  菜品名称
	 */
	private String vName;
	/**
	 *  菜品父模块
	 */
	private Integer vParent;
	/**
	 *  菜品等级
	 */
	private Integer vLevel;
	/**
	 * 菜品ID
	 * @param vId
	 */
	public void setVId(Integer vId){
		this.vId = vId;
	}
	
    /**
     * 菜品ID
     * @return
     */	
    public Integer getVId(){
    	return vId;
    }
	/**
	 * 菜品类型
	 * @param vType
	 */
	public void setVType(String vType){
		this.vType = vType;
	}
	
    /**
     * 菜品类型
     * @return
     */	
    public String getVType(){
    	return vType;
    }
	/**
	 * 菜品名称
	 * @param vName
	 */
	public void setVName(String vName){
		this.vName = vName;
	}
	
    /**
     * 菜品名称
     * @return
     */	
    public String getVName(){
    	return vName;
    }
	/**
	 * 菜品父模块
	 * @param vParent
	 */
	public void setVParent(Integer vParent){
		this.vParent = vParent;
	}
	
    /**
     * 菜品父模块
     * @return
     */	
    public Integer getVParent(){
    	return vParent;
    }
	/**
	 * 菜品等级
	 * @param vLevel
	 */
	public void setVLevel(Integer vLevel){
		this.vLevel = vLevel;
	}
	
    /**
     * 菜品等级
     * @return
     */	
    public Integer getVLevel(){
    	return vLevel;
    }

	@Override
	public String toString() {
		return "Vegetable{" +
				"vId=" + vId +
				", vType='" + vType + '\'' +
				", vName='" + vName + '\'' +
				", vParent=" + vParent +
				", vLevel=" + vLevel +
				'}';
	}
}