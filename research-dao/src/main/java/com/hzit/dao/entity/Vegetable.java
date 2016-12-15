package com.hzit.dao.entity;

/**
 * 
 * @author wjf
 */
public class Vegetable {
	/**
	 *  菜品ID
	 */
	private Integer VId;
	/**
	 *  菜品类型
	 */
	private String VType;
	/**
	 *  菜品名称
	 */
	private String VName;
	/**
	 *  菜品父模块
	 */
	private Integer VParent;
	/**
	 *  菜品等级
	 */
	private Integer VLevel;
	/**
	 * 菜品ID
	 * @param VId
	 */
	public void setVId(Integer VId){
		this.VId = VId;
	}
	
    /**
     * 菜品ID
     * @return
     */	
    public Integer getVId(){
    	return VId;
    }
	/**
	 * 菜品类型
	 * @param VType
	 */
	public void setVType(String VType){
		this.VType = VType;
	}
	
    /**
     * 菜品类型
     * @return
     */	
    public String getVType(){
    	return VType;
    }
	/**
	 * 菜品名称
	 * @param VName
	 */
	public void setVName(String VName){
		this.VName = VName;
	}
	
    /**
     * 菜品名称
     * @return
     */	
    public String getVName(){
    	return VName;
    }
	/**
	 * 菜品父模块
	 * @param VParent
	 */
	public void setVParent(Integer VParent){
		this.VParent = VParent;
	}
	
    /**
     * 菜品父模块
     * @return
     */	
    public Integer getVParent(){
    	return VParent;
    }
	/**
	 * 菜品等级
	 * @param VLevel
	 */
	public void setVLevel(Integer VLevel){
		this.VLevel = VLevel;
	}
	
    /**
     * 菜品等级
     * @return
     */	
    public Integer getVLevel(){
    	return VLevel;
    }

	@Override
	public String toString() {
		return "Vegetable{" +
				"VId=" + VId +
				", VType='" + VType + '\'' +
				", VName='" + VName + '\'' +
				", VParent=" + VParent +
				", VLevel=" + VLevel +
				'}';
	}
}