package com.hzit.vo;

/**
 * 
 * @author wjf
 */
public class AnswerVo {
	/**
	 *  答案ID
	 */
	private Integer awId;
	/**
	 *  答案内容
	 */
	private String awContent;
	/**
	 *  答案分数
	 */
	private Integer awSc;
	/**
	 *  所属题目
	 */
	private Integer prId;
	/**
	 * 答案ID
	 * @param awId
	 */
	public void setAwId(Integer awId){
		this.awId = awId;
	}
	
    /**
     * 答案ID
     * @return Integer
     */	
    public Integer getAwId(){
    	return awId;
    }
	/**
	 * 答案内容
	 * @param awContent
	 */
	public void setAwContent(String awContent){
		this.awContent = awContent;
	}
	
    /**
     * 答案内容
     * @return String
     */	
    public String getAwContent(){
    	return awContent;
    }
	/**
	 * 答案分数
	 * @param awSc
	 */
	public void setAwSc(Integer awSc){
		this.awSc = awSc;
	}
	
    /**
     * 答案分数
     * @return Integer
     */	
    public Integer getAwSc(){
    	return awSc;
    }
	/**
	 * 所属题目
	 * @param prId
	 */
	public void setPrId(Integer prId){
		this.prId = prId;
	}
	
    /**
     * 所属题目
     * @return Integer
     */	
    public Integer getPrId(){
    	return prId;
    }

	@Override
	public String toString() {
		return "AnswerVo{" +
				"awId=" + awId +
				", awContent='" + awContent + '\'' +
				", awSc=" + awSc +
				", prId=" + prId +
				'}';
	}
}