package com.vietis.kahot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.dao.QuestionDAO;
import com.vietis.kahot.model.Question;

@Service
@Transactional
public class QuestionService {
	@Autowired
	private QuestionDAO questionDAO;

	public List<Question> findAll() {
		return questionDAO.findAll();
	}

	public Question findById(int id) {
		return questionDAO.findById(id);
	}

	public void save(Question question) {
		questionDAO.save(question);
	}

	public void update(final Question question) {
		questionDAO.update(question);
	}

	public void delete(int id) {
		questionDAO.delete(id);
	}
	
	public List<Integer> findByQuestionSetId(int id){
		return questionDAO.findByQuestionSetId(id);
	}
	
}
