package com.vietis.kahot.api;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vietis.kahot.model.Account;
import com.vietis.kahot.model.Answer;
import com.vietis.kahot.model.Game;
import com.vietis.kahot.model.Player;
import com.vietis.kahot.model.Question;
import com.vietis.kahot.model.QuestionSet;
import com.vietis.kahot.service.AnswerService;
import com.vietis.kahot.service.GameService;
import com.vietis.kahot.service.PlayerService;
import com.vietis.kahot.service.QuestionService;
import com.vietis.kahot.service.QuestionSetService;

@RestController
public class BaseRestfulController {

	// for host to create a game
	@Autowired
	private GameService gameService;

	@Autowired
	private QuestionService questionService;

	@Autowired
	private AnswerService answerService;

	@Autowired
	private QuestionSetService questionSetService;

	@Autowired
	private PlayerService playerService;

	@RequestMapping(value = "/api/create/{userid}/{qid}", method = RequestMethod.GET)
	public ResponseEntity<Object> createGame(@PathVariable int userid, @PathVariable int qid) {
		boolean check = false;
		List<Game> listwaitinggame = gameService.getGameWithStatus(0);
		int pin = 0;
		// generate pin
		do {
			check = false;
			pin = ThreadLocalRandom.current().nextInt(100000, 999999);
			System.out.println(pin);
			for (Game game : listwaitinggame) {
				if (game.getPin() == pin) {
					check = true;
					break;
				}
			}
		} while (check);
		Date createDate = new Date();
		Date modifyDate = new Date();
		int status = 0;
		Game create_game = new Game(pin, status, createDate, modifyDate, new QuestionSet(qid), new Account(userid));
		gameService.save(create_game);
		int id = gameService.getCreatedGameId(pin, status, qid, userid);
		create_game.setId(id);

		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("code", 1);
		map.put("game_id", id);
		map.put("game_status", status);
		map.put("pin", pin);
		map.put("msg", "New game created");
		return new ResponseEntity<Object>(map, HttpStatus.OK);
	}

	// get array of questionid of all questions a set
	@RequestMapping(value = "/api/game/getquestionset/{qsid}", method = RequestMethod.GET)
	public ResponseEntity<Object> getQuestionSet(@PathVariable int qsid) {
		HashMap<Object, Object> map = new HashMap<>();
		List<Integer> list = questionService.findByQuestionSetId(qsid);
		QuestionSet qs = questionSetService.findById(qsid);
		map.put("Title", qs.getQuestionSetTitle());
		map.put("code", 1);
		map.put("msg", "Success");
		map.put("list_qid", list);
		return new ResponseEntity<Object>(map, HttpStatus.OK);

	}

	// get next question and it's answers by questionId
	@RequestMapping(value = "/api/game/getnextquestion/{qid}", method = RequestMethod.GET)
	public ResponseEntity<Object> getNextQuestion(@PathVariable int qid) {
		HashMap<Object, Object> map = new HashMap<>();
		Question question = questionService.findById(qid);
		List<Answer> list = answerService.findByQuestionId(qid);
		map.put("code", 1);
		map.put("msg", "Success");
		map.put("question_content", question.getQuestionContent());
		ArrayList<HashMap<Object, Object>> answer = new ArrayList<>();
		for (Answer a : list) {
			HashMap<Object, Object> data = new HashMap<>();
			data.put("answerid", a.getId());
			data.put("answer_content", a.getAnswerContent());
			answer.add(data);
		}
		map.put("answers", answer);
		return new ResponseEntity<Object>(map, HttpStatus.OK);
	}

	// change status of game from waiting to playing when host begins the game
	@RequestMapping(value = "/api/game/start/{gid}", method = RequestMethod.GET)
	public ResponseEntity<Object> startGame(@PathVariable int gid) {
		HashMap<Object, Object> map = new HashMap<>();
		gameService.updateStatus(gid, 1);
		map.put("code", 1);
		map.put("msg", "Success");
		return new ResponseEntity<Object>(map, HttpStatus.OK);

	}

	// check if pin exists
	@RequestMapping(value = "/api/join/checkpin/{pin}", method = RequestMethod.GET)
	public ResponseEntity<Object> checkPin(@PathVariable int pin) {
		HashMap<Object, Object> map = new HashMap<>();
		int code = 0;
		String msg = "No game found";
		int gid = gameService.checkPin(pin);
		System.out.println(gid);
		if (gid != 0) {
			code = 1;
			msg = "Success";
			map.put("game_id", gid);
		}
		map.put("code", code);
		map.put("msg", msg);
		return new ResponseEntity<Object>(map, HttpStatus.OK);
	}

	// join game
	@RequestMapping(value = "/api/join/{username}/{gid}")
	public ResponseEntity<Object> join(@PathVariable String playerName, @PathVariable int gid) {
		HashMap<Object, Object> map = new HashMap<>();
		int code = 0;
		String msg = "Fail";
		boolean checkName = playerService.checkDuplicateName(playerName,gid);
		if (checkName) {
			try {
				Game g = new Game();
				g.setId(gid);
				Player p = new Player(playerName, 0, g);
				playerService.save(p);

				List<Object> data = new ArrayList<>();
				List<Player> list = playerService.findByGameId(gid);
				for (Player player : list) {
					HashMap<Object, Object> mapPlayers = new HashMap<>();
					mapPlayers.put("username", player.getPlayerName());
					mapPlayers.put("score", player.getScore());
					data.add(mapPlayers);
				}
				map.put("data", data);
				code = 1;
				msg = "Successx`";

			} catch (Exception e) {
				e.printStackTrace();

			}
		}

		map.put("code", code);
		map.put("msg", msg);
		return new ResponseEntity<Object>(map, HttpStatus.OK);
	}

	// player answer the questions
	@RequestMapping(value="/api/game/answer/{answerid}/{gid}/{username}",method=RequestMethod.GET)
	public ResponseEntity<Object> answer(@PathVariable int answerid, @PathVariable int gid,@PathVariable String username){
		HashMap<Object,Object> map = new HashMap<>();
		Answer answer = answerService.findById(answerid);
		Player player = playerService.findByNameAndGameId(username, gid);
		if(answer.isStatus()) {
			player.setScore(player.getScore()+1);
			playerService.update(player);
		}
		map.put("code", 1);
		map.put("msg", "Success");
		HashMap<Object, Object> currentPlayerMap = new HashMap<>();
		currentPlayerMap.put("is_correct", answer.isStatus());
		currentPlayerMap.put("score", player.getScore());
		map.put("current_player",currentPlayerMap);
		
		ArrayList<Object> listPlayers = new ArrayList<>();
		List<Player> players = playerService.findByGameId(gid);
		for(Player p: players) {
			HashMap<Object, Object> pMap = new HashMap<>();
			pMap.put("username",p.getPlayerName());
			pMap.put("score", p.getScore());
			listPlayers.add(pMap);
		}
		map.put("players", listPlayers);
		return new ResponseEntity<Object>(map,HttpStatus.OK);
	}
	
}
