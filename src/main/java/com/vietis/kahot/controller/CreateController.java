package com.vietis.kahot.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vietis.kahot.model.Account;
import com.vietis.kahot.model.QuestionSet;
import com.vietis.kahot.service.AccountService;
import com.vietis.kahot.service.AnswerService;
import com.vietis.kahot.service.QuestionService;
import com.vietis.kahot.service.QuestionSetService;

@Controller
public class CreateController {
	@Autowired
	private AccountService accountService;

	@Autowired
	private QuestionService questionService;

	@Autowired
	private AnswerService anserService;
	
	@Autowired
	private QuestionSetService questionSetService;
	
	@RequestMapping(value="/addQuestionSet",method = RequestMethod.GET)
	public String insertQuestionSet(Model model) {
		model.addAttribute("qs", new QuestionSet());
		return "add_question_set";
	}
	
	@RequestMapping(value= "/questionsetedit",method=RequestMethod.GET)
	public String doQuestionSetEdit(@ModelAttribute("qs") QuestionSet qs, Model model,HttpSession session) {
		qs.setCreateDate(new Date());
		qs.setModifyDate(new Date());
		
		Account account = (Account) session.getAttribute("currentAccount");
		qs.setAccount(account);
		System.out.println(account.getUsername());
		questionSetService.save(qs);
		model.addAttribute("questionSet", questionSetService.findById(qs.getId()));
		return "edit_question_set";
	}
	@RequestMapping(value="/questionsetview",method=RequestMethod.GET)
	public String doQuestionSetView(@ModelAttribute("id")String id,Model model) {
		model.addAttribute("questionSet",questionSetService.findById(Integer.parseInt(id)));
		return "edit_question_set";
	}
	@RequestMapping(value="/createSet",method=RequestMethod.GET)
	public String createSet(Model model) {
		model.addAttribute("qs", new QuestionSet());
		return  "create_set";
	}
	@RequestMapping(value="/addquestion",method=RequestMethod.GET)
	public String createQuestion(@ModelAttribute ("qsId") String qsId,Model model) {
		model.addAttribute("questionSet",questionSetService.findById(Integer.parseInt(qsId)));
		return "add_question";
	}
	
}
