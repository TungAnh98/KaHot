package com.vietis.kahot.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.model.Answer;

@Repository
@Transactional(rollbackFor = Exception.class)
public class AnswerDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	public Session initSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	public List<Answer> findAll() {
		return initSession().createQuery("FROM Answer", Answer.class).getResultList();
	}

	public Answer findById(final int id) {
		return initSession().get(Answer.class, id);
	}

	public void save(final Answer answer) {
		initSession().save(answer);
	}

	public void update(final Answer answer) {
		initSession().update(answer);
	}

	public void delete(int id) {
		initSession().delete(id);
	}
	
	public List<Answer> findByQuestionId(int qid){
		List<Answer> list = initSession().createQuery("select a  from Answer a JOIN FETCH a.question where a.question.id=:qid",Answer.class).
				setParameter("qid", qid).getResultList();
		return list;
	}
	
}
