package com.hzit.vo;

/**
 * 
 * @author wjf
 */
public class CommentVo {
	/**
	 *  评论ID
	 */
	private Integer CId;
	/**
	 *  评论业务ID
	 */
	private String CUuid;
	/**
	 *  评论时间
	 */
	private String CTime;
	/**
	 *  评论人
	 */
	private String CPeople;
	/**
	 * 评论ID
	 * @param CId
	 */
	public void setCId(Integer CId){
		this.CId = CId;
	}
	
    /**
     * 评论ID
     * @return Integer
     */	
    public Integer getCId(){
    	return CId;
    }
	/**
	 * 评论业务ID
	 * @param CUuid
	 */
	public void setCUuid(String CUuid){
		this.CUuid = CUuid;
	}
	
    /**
     * 评论业务ID
     * @return String
     */	
    public String getCUuid(){
    	return CUuid;
    }
	/**
	 * 评论时间
	 * @param CTime
	 */
	public void setCTime(String CTime){
		this.CTime = CTime;
	}
	
    /**
     * 评论时间
     * @return java.util.Date
     */	
    public String getCTime(){
    	return CTime;
    }
	/**
	 * 评论人
	 * @param CPeople
	 */
	public void setCPeople(String CPeople){
		this.CPeople = CPeople;
	}
	
    /**
     * 评论人
     * @return String
     */	
    public String getCPeople(){
    	return CPeople;
    }

	@Override
	public String toString() {
		return "CommentVo{" +
				"CId=" + CId +
				", CUuid='" + CUuid + '\'' +
				", CTime='" + CTime + '\'' +
				", CPeople='" + CPeople + '\'' +
				'}';
	}
}