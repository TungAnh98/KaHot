package com.vietis.kahot.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vietis.kahot.dao.QuestionSetDAO;
import com.vietis.kahot.model.QuestionSet;

@Service
@Transactional
public class QuestionSetService {
	
	@Autowired
	private QuestionSetDAO questionSetDAO;
	
	public List<QuestionSet> findPublicQuiz(){
		return questionSetDAO.findPublicQuiz();
	}
	
	public List<QuestionSet> findAll() {
		return questionSetDAO.findAll();
	}
	
	public QuestionSet findById(int id) {
		return questionSetDAO.findById(id);
	}
	
	public List<QuestionSet> findMyQuiz() {
		return questionSetDAO.findMyQuiz();
	}
	
	public void save( QuestionSet question) {
		questionSetDAO.save(question);
	}
	
	public void update(final QuestionSet question) {
		questionSetDAO.update(question);	
	}
	public void delete(int id) {
		questionSetDAO.delete(id);
	}

	public List<QuestionSet> findByAccountId(int id){
		return questionSetDAO.findByAccountId(id);
	}
	
}
