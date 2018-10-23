/**
 * 
 */
package com.vietis.kahot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author binh.hathanh
 *
 */
@Controller
public class TestJSPController {

	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}

//	@RequestMapping(value = "/public-quiz")
//	public String publicQuiz() {
//		return "public-quiz";
//	}

	@RequestMapping(value = "/sign-up")
	public String test() {
		return "sign-up-page";
	}

	@RequestMapping(value = "/report-page")
	public String test1() {
		return "report-page";
	}

	@RequestMapping(value = "/room")
	public String room() {
		return "game/room";
	}

	@RequestMapping(value = "/pin")
	public String room1() {
		return "player/player-pin";
	}

	@RequestMapping(value = "/edit-profile")
	public String test2() {
		return "edit-profile";
	}

	@RequestMapping(value = "/add-quiz-title")
	public String test4() {
		return "quiz/add-quiz-title";
	}
	
//	@RequestMapping(value = "/player-pin")
//	public String test5() {
//		return "player/player-pin";
//	}
	
	@RequestMapping(value = "/sign-up-page")
	public String test6() {
		return "sign-up-page";
	}
	
}
