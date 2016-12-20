package com.hzit.dao.entity;

/**
 * 
 * @author wjf
 */
public class TeacherInfo {
	/**
	 *  教员Id
	 */
	private Integer teaId;
	/**
	 *  教师名字
	 */
	private String teaName;
	/**
	 *  所属模块 1代表讲师 2代表班主任
	 */
	private Integer teaModule;
	/**
	 * 教员Id
	 * @param teaId
	 */
	public void setTeaId(Integer teaId){
		this.teaId = teaId;
	}
	
    /**
     * 教员Id
     * @return
     */	
    public Integer getTeaId(){
    	return teaId;
    }
	/**
	 * 教师名字
	 * @param teaName
	 */
	public void setTeaName(String teaName){
		this.teaName = teaName;
	}
	
    /**
     * 教师名字
     * @return
     */	
    public String getTeaName(){
    	return teaName;
    }
	/**
	 * 所属模块 1代表讲师 2代表班主任
	 * @param teaModule
	 */
	public void setTeaModule(Integer teaModule){
		this.teaModule = teaModule;
	}
	
    /**
     * 所属模块 1代表讲师 2代表班主任
     * @return
     */	
    public Integer getTeaModule(){
    	return teaModule;
    }

	@Override
	public String toString() {
		return "TeacherInfo{" +
				"teaId=" + teaId +
				", teaName='" + teaName + '\'' +
				", teaModule=" + teaModule +
				'}';
	}
}