package com.vietis.kahot.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
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
import com.vietis.kahot.service.QuestionSetService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {

	@Autowired
	private AccountService accountService;

	@Autowired
	private QuestionSetService questionSetService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model) {

		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("account", new Account());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginSuccess(@ModelAttribute("account") Account account, Model model, HttpServletRequest request) {
		Account curAccount = accountService.validate(account);
		if (curAccount != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("currentAccount", curAccount);
			ArrayList<QuestionSet> listQuestionSet = (ArrayList<QuestionSet>) questionSetService
					.findByAccountId(curAccount.getId());
			model.addAttribute("listquestionset", listQuestionSet);
			return "redirect:public-quiz";
		}
		return "login";
	}

}
