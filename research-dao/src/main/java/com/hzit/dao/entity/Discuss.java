package com.hzit.dao.entity;

/**
 * 
 * @author wjf
 */
public class Discuss {
	/**
	 *  评论详情Id
	 */
	private Integer dId;
	/**
	 *  评论的业务id
	 */
	private String cUuid;
	/**
	 *  评论的菜品id
	 */
	private Integer vId;
	/**
	 *  评论的题目ID
	 */
	private Integer pId;
	/**
	 *  评论结果
	 */
	private String dResult;
	/**
	 *  得分项
	 */
	private String dScore;
	/**
	 * 评论详情Id
	 * @param dId
	 */
	public void setDId(Integer dId){
		this.dId = dId;
	}
	
    /**
     * 评论详情Id
     * @return
     */	
    public Integer getDId(){
    	return dId;
    }
	/**
	 * 评论的业务id
	 * @param cUuid
	 */
	public void setCUuid(String cUuid){
		this.cUuid = cUuid;
	}
	
    /**
     * 评论的业务id
     * @return
     */	
    public String getCUuid(){
    	return cUuid;
    }
	/**
	 * 评论的菜品id
	 * @param vId
	 */
	public void setVId(Integer vId){
		this.vId = vId;
	}
	
    /**
     * 评论的菜品id
     * @return
     */	
    public Integer getVId(){
    	return vId;
    }
	/**
	 * 评论的题目ID
	 * @param pId
	 */
	public void setPId(Integer pId){
		this.pId = pId;
	}
	
    /**
     * 评论的题目ID
     * @return
     */	
    public Integer getPId(){
    	return pId;
    }
	/**
	 * 评论结果
	 * @param dResult
	 */
	public void setDResult(String dResult){
		this.dResult = dResult;
	}
	
    /**
     * 评论结果
     * @return
     */	
    public String getDResult(){
    	return dResult;
    }

	/**
	 * 得分项
	 * @return dScore
	 */
	public String getdScore() {
		return dScore;
	}

	/**
	 * 得分项
	 * @param dScore
	 */
	public void setdScore(String dScore) {
		this.dScore = dScore;
	}

	@Override
	public String toString() {
		return "Discuss{" +
				"dId=" + dId +
				", cUuid='" + cUuid + '\'' +
				", vId=" + vId +
				", pId=" + pId +
				", dResult='" + dResult + '\'' +
				", dScore='" + dScore + '\'' +
				'}';
	}
}