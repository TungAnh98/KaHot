package com.vietis.kahot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.dao.PlayerDAO;
import com.vietis.kahot.model.Player;

@Service
@Transactional
public class PlayerService {

	@Autowired
	public PlayerDAO playerDAO;
	
	public List<Player> findByGameId(int gid){
		return playerDAO.findByGameId(gid);
	}
	
	public void save(Player p) {
		 playerDAO.save(p);
	}
	
	public void update(Player p) {
		playerDAO.update(p);
	}
	
	public boolean checkDuplicateName(String name,int gid) {
		return playerDAO.checkDuplicatePlayerName(name,gid);
	}
	
	public Player findByNameAndGameId(String name,int gid) {
		return playerDAO.findByNameAndGameId(name, gid);
	}
	
	public boolean checkInputName(String playerNameInput,int gameId) {
		return playerDAO.checkDuplicatePlayerNameInput(playerNameInput, gameId);
	}
}
