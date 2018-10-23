package com.vietis.kahot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.dao.AnswerDAO;
import com.vietis.kahot.model.Answer;

@Service
@Transactional
public class AnswerService {
	
	@Autowired
	private AnswerDAO answerDAO;

	public List<Answer> findAll() {
		return answerDAO.findAll();
	}

	public Answer findById(int id) {
		return answerDAO.findById(id);
	}

	public void save(Answer answer) {
		answerDAO.save(answer);
	}

	public void update(Answer answer) {
		answerDAO.update(answer);
	}

	public void delete(int id) {
		answerDAO.delete(id);
	}
	
	public List<Answer> findByQuestionId(int qid){
		return answerDAO.findByQuestionId(qid);
	}
	
}
