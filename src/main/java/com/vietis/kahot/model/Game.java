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
@Table(name = "game")
public class Game implements Serializable, Cloneable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "pin")
	private int pin;
	@Column(name = "status")
	private int status;

	@Column(name = "create_date")
	private Date createDate;

	@Column(name = "modify_date")
	private Date modifyDate;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "question_set_id")
	private QuestionSet questionSet;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "account_id")
	private Account account;

	@OneToMany(mappedBy="game",fetch=FetchType.LAZY)
	private Set<Player> players;
	
	public Game() {
	}

	public Game(int pin, int status, Date createDate, Date modifyDate, QuestionSet questionSet, Account account) {
		super();
		this.pin = pin;
		this.status = status;
	}

	public Game(int id, Date createDate, Date modifyDate, QuestionSet questionSet, Account account) {
		super();
		this.id = id;

		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.questionSet = questionSet;
		this.account = account;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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

	public QuestionSet getQuestionSet() {
		return questionSet;
	}

	public void setQuestionSet(QuestionSet questionSet) {
		this.questionSet = questionSet;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "Game [id=" + id + ", createDate=" + createDate + ", modifyDate=" + modifyDate + ", questionSet="
				+ questionSet + ", account=" + account + "]";
	}

	@Override
	public Object clone() throws CloneNotSupportedException {
		return super.clone();
	}

}
