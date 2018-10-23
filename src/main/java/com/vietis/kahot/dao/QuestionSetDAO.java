package com.vietis.kahot.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.model.QuestionSet;

@Repository
@Transactional(rollbackFor = Exception.class)
public class QuestionSetDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session initSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}
	
	public List<QuestionSet> findAll() {
		return initSession().createQuery("FROM QuestionSet",QuestionSet.class).getResultList();
	}
	
	public List<QuestionSet> findPublicQuiz() {
		return initSession().createQuery("FROM QuestionSet where status = 1",QuestionSet.class).getResultList();
	}
	
	//example: account_id = 1
	public List<QuestionSet> findMyQuiz() {
		return initSession().createQuery("FROM QuestionSet where account_id = 1",QuestionSet.class).getResultList();
	}

	public QuestionSet findById(final int id) {	
		return initSession().get(QuestionSet.class, id);
	}

	public void save(final QuestionSet qs) {	
		initSession().save(qs);
	}

	public void update(final QuestionSet qs) {
		initSession().update(qs);
	}

	public void delete(int id) {
		QuestionSet qs = new QuestionSet();
		qs.setId(id);
		initSession().remove(qs);
	}

	public List<QuestionSet> findByAccountId(int id){
		Query query = initSession().createSQLQuery("select {qs.*} from question_set qs where account_id = :account_id")
				.addEntity("qs",QuestionSet.class);
		query.setParameter("account_id",id);
		List<QuestionSet> rows = query.list();
		return rows;
	}
	
}
