package com.vietis.kahot.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "account")
public class Account implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "id")
	private int id;

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "email")
	private String email;

	@Column(name = "role")
	private int role;

	@Column(name = "status")
	private boolean status;

	@Column(name = "create_date")
	private Date createDate;

	@Column(name = "modify_date")
	private Date modifyDate;

	@OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
	private Set<QuestionSet> questionsets;

	public Set<QuestionSet> getQuestionsets() {
		return questionsets;
	}

	public void setQuestionsets(Set<QuestionSet> questionsets) {
		this.questionsets = questionsets;
	}

	public Account() {
	}

	public Account(int id) {
		super();
		this.id = id;
	}

	public Account(int id, String username, String password, String email, Date dob, boolean gender, String address,
			int role, boolean status, Date createDate, Date modifyDate, Set<QuestionSet> questionsets) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.role = role;
		this.status = status;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.questionsets = questionsets;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", role=" + role + ", status=" + status + ", createDate=" + createDate + ", modifyDate=" + modifyDate
				+ ", questionsets=" + questionsets + "]";
	}

}
