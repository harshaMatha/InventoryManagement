package com.shankar.models;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "im_indents")
public class Indents {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "indent_id")
	private int indentId;
	@Column(name = "indents_date")
	private String indentDate;

	@Column(name = "indents_status")
	private String indentStatus;
	
	@Column(name = "user_id")
	private int userId;
	@Column(name = "last_updated_user")
	private String lastUpdatedUser;
	@Column(name = "last_updated_date")
	private Date lastUpdatedDate;

	public Indents() {

	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getLastUpdatedUser() {
		return lastUpdatedUser;
	}

	public void setLastUpdatedUser(String lastUpdatedUser) {
		this.lastUpdatedUser = lastUpdatedUser;
	}

	public Date getLastUpdatedDate() {
		return lastUpdatedDate;
	}

	public void setLastUpdatedDate(Date lastUpdatedDate) {
		this.lastUpdatedDate = lastUpdatedDate;
	}

	public int getIndentId() {
		return indentId;
	}

	public void setIndentId(int indentId) {
		this.indentId = indentId;
	}

	public String getIndentDate() {
		return indentDate;
	}

	public void setIndentDate(String indentDate) {
		this.indentDate = indentDate;
	}

	public String getIndentStatus() {
		return indentStatus;
	}

	public void setIndentStatus(String indentStatus) {
		this.indentStatus = indentStatus;
	}

	@Override
	public String toString() {
		return "Indents [indentId=" + indentId + ", indentDate=" + indentDate + ", indentStatus=" + indentStatus
				+ ", userId=" + userId + ", lastUpdatedUser=" + lastUpdatedUser + ", lastUpdatedDate=" + lastUpdatedDate
				+ "]";
	}



}
