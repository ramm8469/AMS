package com.ams.model;

public class Guardian {
	private int guardian_id;
	private String wards_name;
	private int wards_roll;
	private String address;
	
	// Generating Constructors
	
	public Guardian() {
		super();
	}

	public Guardian(int guardian_id, String wards_name, int wards_roll, String address) {
		super();
		this.guardian_id = guardian_id;
		this.wards_name = wards_name;
		this.wards_roll = wards_roll;
		this.address = address;
	}

	// Creating Getters and Setters
	
	public int getGuardian_id() {
		return guardian_id;
	}

	public void setGuardian_id(int guardian_id) {
		this.guardian_id = guardian_id;
	}

	public String getWards_name() {
		return wards_name;
	}

	public void setWards_name(String wards_name) {
		this.wards_name = wards_name;
	}

	public int getWards_roll() {
		return wards_roll;
	}

	public void setWards_roll(int wards_roll) {
		this.wards_roll = wards_roll;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	
	
	
	
	
	
	
	

}
