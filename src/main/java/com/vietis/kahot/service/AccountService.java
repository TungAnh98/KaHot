package com.vietis.kahot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.dao.AccountDAO;
import com.vietis.kahot.model.Account;

@Service
@Transactional
public class AccountService {

	@Autowired
	private AccountDAO accountDAO;

	public List<Account> findAll() {
		return accountDAO.findAll();
	}

	public Account findById(int id) {
		return accountDAO.findById(id);
	}

	public void save(Account account) {
		accountDAO.save(account);
	}

	public void update(final Account account) {
		accountDAO.update(account);
	}

	public void delete(int id) {
		accountDAO.delete(id);
	}

	public boolean validateLogin(Account account) {
		return accountDAO.validateLogin(account);
	}
	
	public Account validate(Account account) {
		return accountDAO.validate(account);
	}

}
