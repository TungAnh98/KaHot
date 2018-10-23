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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import javax.persistence.Table;

@Entity
@Table(name = "question_set")
public class QuestionSet implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name="id")
	private int id;
	
	@Column(name = "question_set_title")
	private String questionSetTitle;
	
	@Column(name = "status")
	private int status;

	@Column(name = "create_date")
	private Date createDate;
	
	@Column(name = "modify_date")
	private Date modifyDate;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "account_id")
	private Account account;
	
//	@OneToMany(mappedBy="question_set")
//	private Set<Question> questions;
	
	@OneToMany(mappedBy="questionSet",fetch=FetchType.LAZY)
	private Set<Question> questions;

	public QuestionSet() {
	}

	public QuestionSet(int id, String questionSetTitle, int status, Date createDate, Date modifyDate, Account account) {
		super();
		this.id = id;
		this.questionSetTitle = questionSetTitle;
		this.status = status;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.account = account;
	}

	public QuestionSet(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestionSetTitle() {
		return questionSetTitle;
	}

	public void setQuestionSetTitle(String questionSetTitle) {
		this.questionSetTitle = questionSetTitle;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
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

	public Account getAccount() {
		return account;
	}

	public Set<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "QuestionSet [id=" + id + ", questionSetTitle=" + questionSetTitle + ", status=" + status
				+ ", createDate=" + createDate + ", modifyDate=" + modifyDate + ", account=" + account + "]";
	}
	
}
