package com.vietis.kahot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.dao.GameDAO;
import com.vietis.kahot.model.Game;

@Service
@Transactional
public class GameService {

	@Autowired
	private GameDAO gameDAO;

	public List<Game> findAll() {
		return gameDAO.findAll();
	}

	public Game findById(int id) {
		return gameDAO.findById(id);
	}

	public void save(Game game) {
		gameDAO.save(game);
	}

	public void update(Game game) {
		gameDAO.update(game);
	}

	public void delete(int id) {
		gameDAO.delete(id);
	}

	public int getCreatedGameId(int pin, int status, int qid, int userid) {
		return gameDAO.getCreatedGameId(pin, status, qid, userid);
	}

	public List<Game> get2Game() {
		return gameDAO.get2Game();
	}

	public List<Game> getGameWithStatus(int status) {
		return gameDAO.getGameWithStatus(status);
	}
	
	public List<Integer> getPinGameOpenning() {
		return gameDAO.findPinGameOpenning();
	}
	
	public Game getGameIdByPin(int pinParam) {
		return gameDAO.findGameByPin(pinParam);
	}

	public void updateStatus(int gid, int status) {
		gameDAO.updateStatus(gid, status);
	}
	
	public int checkPin(int pin) {
		return gameDAO.checkPin(pin);
	}
	
}
