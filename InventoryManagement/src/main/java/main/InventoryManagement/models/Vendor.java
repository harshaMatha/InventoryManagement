package main.InventoryManagement.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Vendor {
	@Id
	int Vendor_Id;
	String Vendor_Name;
	String Vendor_Address;
	long Vendor_PhoneNumber;
	String Status;
	public int getVendor_Id() {
		return Vendor_Id;
	}
	public void setVendor_Id(int vendor_Id) {
		Vendor_Id = vendor_Id;
	}
	public String getVendor_Name() {
		return Vendor_Name;
	}
	public void setVendor_Name(String vendor_Name) {
		Vendor_Name = vendor_Name;
	}
	public String getVendor_Address() {
		return Vendor_Address;
	}
	public void setVendor_Address(String vendor_Address) {
		Vendor_Address = vendor_Address;
	}
	public long getVendor_PhoneNumber() {
		return Vendor_PhoneNumber;
	}
	public void setVendor_PhoneNumber(long vendor_PhoneNumber) {
		Vendor_PhoneNumber = vendor_PhoneNumber;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
}
