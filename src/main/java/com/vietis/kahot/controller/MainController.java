package com.vietis.kahot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vietis.kahot.model.Player;
import com.vietis.kahot.service.GameService;
import com.vietis.kahot.service.PlayerService;
import com.vietis.kahot.service.QuestionSetService;

@Controller
public class MainController {

	@Autowired
	private QuestionSetService questionSetService;

	@Autowired
	private GameService gameService;

	@Autowired
	private PlayerService playerService;

	@RequestMapping(value = "/public-quiz")
	private String getAllPublicQuiz(Model model) {
		model.addAttribute("public_quiz", questionSetService.findPublicQuiz());
		return "public-quiz";
	}

	@RequestMapping(value = "/my-quiz")
	private String getAllUserQuiz(Model model) {
		model.addAttribute("my_quiz", questionSetService.findMyQuiz());
		return "my-quiz";
	}

	@RequestMapping(value = "/player-pin")
	public String pinPage() {
		return "player/player-pin";
	}

	// [b]
	@RequestMapping(value = "/player-nick-name")
	public String playerPage(@RequestParam("pin") Integer pin, @ModelAttribute("playerNameInput") String playerNameInput, Model model) {
		model.addAttribute("gameId", gameService.getGameIdByPin(pin).getId());
		model.addAttribute("gamePin", pin);
		return "player/player-nick-name";
	}

	 //[b] Handling Controller
	@RequestMapping(value = "/check-player-name")
	public String checkPlayerName(@ModelAttribute("gameId") int gameId,
			@ModelAttribute("gamePin") int gamePin,
			@ModelAttribute("playerNameInput") String playerNameInput, Model model) {
		if (playerService.checkInputName(playerNameInput, gameId)) {
			model.addAttribute("playerNameError","Player name is exists, please choose another name");
			return "player/player-nick-name";
		}
		//model.addAttribute("gId",gameId);
		//model.addAttribute("pin",gamePin);
		//model.addAttribute("username",playerNameInput);
		return "test/test-data";
	}

	// [b] Handling Controller
	@RequestMapping(value = "/check-pin")
	public String checkPin(@RequestParam("pin") Integer pin, Model model) {

		if (pin.equals(null)) {
			model.addAttribute("errorPinAtt", "Please input Pin to join game").toString();
			return "player/player-pin";
		}

		// try {
		// Integer.parseInt(pin);
		// } catch (NumberFormatException ex) {
		// ex.printStackTrace();
		// model.addAttribute("errorPinAtt", "PIN is numeric, please input numeric
		// character").toString();
		// return "player/player-pin";
		// }

		for (int pinGame : gameService.getPinGameOpenning()) {
			if (pin == pinGame) {
				model.addAttribute("pin", pin);
				return "forward:player-nick-name";
			}
		}
		model.addAttribute("errorPinAtt", "We didn't recognize that game PIN. Please check and try again.").toString();
		return "player/player-pin";
	}
}
