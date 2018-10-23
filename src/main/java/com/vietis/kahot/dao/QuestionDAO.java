package com.vietis.kahot.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.model.Question;

@Repository
@Transactional(rollbackFor = Exception.class)
public class QuestionDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Session initSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	public List<Question> findAll() {
		return initSession().createQuery("FROM Question", Question.class).getResultList();
	}

	public Question findById(final int id) {
		return initSession().get(Question.class, id);
	}

	public void save(final Question question) {
		initSession().save(question);
	}

	public void update(final Question question) {
		initSession().update(question);
	}

	public void delete(int id) {
		Question question = new Question();
		question.setId(id);
		initSession().remove(question);
	}

	public List<Integer> findByQuestionSetId(int id) {
		List<Integer> list = initSession()
				.createQuery("select q.id from Question q where q.questionSet.id=:id", Integer.class)
				.setParameter("id", id).getResultList();
		return list;
	}

}
