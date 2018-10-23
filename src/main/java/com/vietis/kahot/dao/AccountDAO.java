package com.vietis.kahot.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.model.Account;

@Repository(value = "accountDAO")
@Transactional(rollbackFor = Exception.class)
public class AccountDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session initSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	public List<Account> findAll() {
		return initSession().createQuery("FROM Account", Account.class).getResultList();
	}

	public Account findById(final int id) {
		return initSession().get(Account.class, id);
	}

	public void save(final Account account) {
		initSession().save(account);
	}

	public void update(final Account account) {
		initSession().update(account);
	}

	public void delete(int id) {
		Account account = new Account();
		account.setId(id);
		initSession().remove(account);
	}

	public boolean validateLogin(Account account) {
		List<Account> list = initSession().createQuery("FROM Account", Account.class).getResultList();
		for (Account object : list) {
			if (object.getUsername().equals(account.getUsername())
					&& object.getPassword().equals(account.getPassword())) {
				return true;
			}
		}
		return false;
	}

	public Account validate(Account account) {
		String username = account.getUsername();
		String password = account.getPassword();
		Query query = initSession()
				.createSQLQuery("select * from Account where username = :username and " + "password=:password");
		query.setParameter("username", username);
		query.setParameter("password", password);
		List<Object[]> result = query.list();

		if (result.size() == 0)
			return null;
		Account curAccount = new Account();
		for (Object[] row : result) {
			curAccount.setId(Integer.parseInt(row[0].toString()));
			curAccount.setUsername(row[1].toString());
			curAccount.setPassword(row[2].toString());
			curAccount.setEmail(row[3].toString());
			curAccount.setRole(Integer.parseInt(row[4].toString()));
			curAccount.setStatus(Boolean.parseBoolean(row[5].toString()));
		}
		return curAccount;
	}

}
