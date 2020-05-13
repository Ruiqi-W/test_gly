package com.zh.news.po;

/**
 *  护士信息实体类
 */
public class Nurse {
	private int nurseId; 			// 护工ID
	private String nurseName;		// 护工姓名
	private String nurseGender;	//
	private int nurseAge;			// 年龄
	private String nurseHouseholdRegister;	// 籍贯
	private String nurserIdCard;	// 护工身份证号
	private String nurseLinkPhone;	// 电话
	private String	nurseAddress;	// 地址

	public int getNurseId() {
		return nurseId;
	}

	public void setNurseId(int nurseId) {
		this.nurseId = nurseId;
	}

	public String getNurseName() {
		return nurseName;
	}

	public void setNurseName(String nurseName) {
		this.nurseName = nurseName;
	}

	public String getNurseGender() {
		return nurseGender;
	}

	public void setNurseGender(String nurseGender) {
		this.nurseGender = nurseGender;
	}

	public int getNurseAge() {
		return nurseAge;
	}

	public void setNurseAge(int nurseAge) {
		this.nurseAge = nurseAge;
	}

	public String getNurseHouseholdRegister() {
		return nurseHouseholdRegister;
	}

	public void setNurseHouseholdRegister(String nurseHouseholdRegister) {
		this.nurseHouseholdRegister = nurseHouseholdRegister;
	}

	public String getNurserIdCard() {
		return nurserIdCard;
	}

	public void setNurserIdCard(String nurserIdCard) {
		this.nurserIdCard = nurserIdCard;
	}

	public String getNurseLinkPhone() {
		return nurseLinkPhone;
	}

	public void setNurseLinkPhone(String nurseLinkPhone) {
		this.nurseLinkPhone = nurseLinkPhone;
	}

	public String getNurseAddress() {
		return nurseAddress;
	}

	public void setNurseAddress(String nurseAddress) {
		this.nurseAddress = nurseAddress;
	}
}
