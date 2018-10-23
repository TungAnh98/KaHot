package com.vietis.kahot.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vietis.kahot.model.Account;
import com.vietis.kahot.service.AccountService;
import com.vietis.kahot.service.AnswerService;
import com.vietis.kahot.service.GameService;
import com.vietis.kahot.service.QuestionService;
import com.vietis.kahot.service.QuestionSetService;

@Controller
public class FunctionTestController {
	@Autowired
	private AccountService accountService;

	@Autowired
	private QuestionService questionService;

	@Autowired
	private AnswerService anserService;
	
	@Autowired
	private QuestionSetService questionSetService;
	@Autowired
	private GameService gameService;
	
	@RequestMapping(value = "/answer", method = RequestMethod.GET)
	public String testAnswer(Model model) {
		model.addAttribute("listAnswer", anserService.findAll());
		return "test/test_answer";
	}

	@RequestMapping(value = "/questionset", method = RequestMethod.GET)
	public String testQuestionSet(Model model) {
		model.addAttribute("listQuestionSet", questionSetService.findAll());
		return "test/test_questionset";
	}

	@RequestMapping(value = "/addAccount")
	public String insertAccount(Model model) {
		model.addAttribute("accountAtt", new Account());
		return "add_account";
	}

	@RequestMapping("/saveAccount")
	public String doSaveAccount(@ModelAttribute("account") Account account, Model model) {
		account.setCreateDate(new Date());
		account.setModifyDate(new Date());
		accountService.save(account);
		model.addAttribute("listAccount", accountService.findAll());
		return "login";
	}
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String testQuestion(Model model) {
		// Question q = new Question( 1, "How I met your mother", "2018-09-21",
		// "2018-09-21");
		// questionService.save(q);
		model.addAttribute("listQuestion", questionService.findAll());
		return "test/test_question";
	}
	@RequestMapping(value="/game",method= RequestMethod.GET)
	public String testGame(Model model) {
		model.addAttribute("listGame",gameService.findAll());
		return "test/test_game";
	}
}
