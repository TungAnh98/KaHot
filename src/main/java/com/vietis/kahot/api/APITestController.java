package com.vietis.kahot.api;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vietis.kahot.model.Answer;
import com.vietis.kahot.model.Game;
import com.vietis.kahot.model.Player;
import com.vietis.kahot.service.AnswerService;
import com.vietis.kahot.service.GameService;
import com.vietis.kahot.service.PlayerService;
import com.vietis.kahot.service.QuestionService;
import com.vietis.kahot.service.QuestionSetService;

@RestController
public class APITestController {
	@Autowired
	private GameService gameService;
	@Autowired
	private PlayerService playerService;
	@Autowired
	private AnswerService answerService;
	@Autowired
	private QuestionService questionService;
	@Autowired
	private QuestionSetService questionSetService;
	// just some of my test
		@RequestMapping(value = "/api/test", method = RequestMethod.GET)
		public ResponseEntity<Object> list2game() {
			HashMap<Object, Object> map = new HashMap<Object, Object>();
			List<Game> list = gameService.get2Game();
			int size = list.size();
			for (Game game : list) {
				System.out.println(game.getId());
				System.out.println(game.getAccount().getUsername());
				System.out.println(game.getPin());
				System.out.println("================");
			}
			map.put("size", size);
			return new ResponseEntity<Object>(map, HttpStatus.OK);
		}
		
		
	@RequestMapping(value="/api/testlistgame",method= RequestMethod.GET)
	public ResponseEntity<Object> listGame(){
		List<Game> list = gameService.getGameWithStatus(0);
		int size = list.size();
		return new ResponseEntity<Object>(size,HttpStatus.OK);
	}
	
	@RequestMapping(value="/api/testplayer/{gid}",method= RequestMethod.GET)
	public ResponseEntity<Object> testPlayer(@PathVariable int gid){
		ArrayList<Object> arr = new ArrayList<>();
		List<Player> list = playerService.findByGameId(gid);
		for(Player p:list) {
			HashMap<Object, Object> map = new HashMap<>();
			map.put("username", p.getPlayerName());
			map.put("score",p.getScore());
			arr.add(map);
		}
		HashMap<Object, Object> sendMap = new HashMap<>();
		sendMap.put("data", arr);
		return new ResponseEntity<Object>(sendMap,HttpStatus.OK);
	}
	
	@RequestMapping(value="/api/testduplicatename/{username}/{gid}",method=RequestMethod.GET)
	public ResponseEntity<Object> testDuplicateName(@PathVariable String username,@PathVariable int gid){
		HashMap<Object, Object> sendMap = new HashMap<>();
		boolean checkName = playerService.checkDuplicateName(username,gid);
		sendMap.put("check", checkName);
		return new ResponseEntity<Object>(sendMap,HttpStatus.OK);
	}
	
	@RequestMapping(value="/api/test/getplayer/{name}/{gid}",method= RequestMethod.GET)
	public ResponseEntity<Object> testGetPlayer(@PathVariable String name,@PathVariable int gid){
		HashMap<Object, Object> sendMap = new HashMap<>();
		Player player = playerService.findByNameAndGameId(name,gid);
		player.setScore(player.getScore()+1);
		playerService.update(player);
		sendMap.put("player", player.getScore());
		return new ResponseEntity<Object>(sendMap,HttpStatus.OK);
	}
	@RequestMapping(value="/api/testanswer/{answerid}",method= RequestMethod.GET)
	public ResponseEntity<Object> testAnswer(@PathVariable int answerid){
		HashMap<Object, Object> sendMap = new HashMap<>();
		Answer answer = answerService.findById(answerid);
		System.out.println(answer.getAnswerContent());
		return new ResponseEntity<Object>(sendMap,HttpStatus.OK);
	}
	
}

