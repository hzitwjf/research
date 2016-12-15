package com.hzit.dao.vo;

/**
 * 
 * @author wjf
 */
public class DiscussVo {
	/**
	 *  评论详情Id
	 */
	private Integer DId;
	/**
	 *  评论的业务id
	 */
	private String CUuid;
	/**
	 *  评论的菜品id
	 */
	private Integer VId;
	/**
	 *  评论的题目ID
	 */
	private Integer PId;
	/**
	 *  评论结果
	 */
	private String DResult;
	/**
	 * 评论详情Id
	 * @param DId
	 */
	public void setDId(Integer DId){
		this.DId = DId;
	}
	
    /**
     * 评论详情Id
     * @return Integer
     */	
    public Integer getDId(){
    	return DId;
    }
	/**
	 * 评论的业务id
	 * @param CUuid
	 */
	public void setCUuid(String CUuid){
		this.CUuid = CUuid;
	}
	
    /**
     * 评论的业务id
     * @return String
     */	
    public String getCUuid(){
    	return CUuid;
    }
	/**
	 * 评论的菜品id
	 * @param VId
	 */
	public void setVId(Integer VId){
		this.VId = VId;
	}
	
    /**
     * 评论的菜品id
     * @return Integer
     */	
    public Integer getVId(){
    	return VId;
    }
	/**
	 * 评论的题目ID
	 * @param PId
	 */
	public void setPId(Integer PId){
		this.PId = PId;
	}
	
    /**
     * 评论的题目ID
     * @return Integer
     */	
    public Integer getPId(){
    	return PId;
    }
	/**
	 * 评论结果
	 * @param DResult
	 */
	public void setDResult(String DResult){
		this.DResult = DResult;
	}
	
    /**
     * 评论结果
     * @return String
     */	
    public String getDResult(){
    	return DResult;
    }
}