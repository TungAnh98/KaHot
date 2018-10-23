package com.vietis.kahot.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.type.IntegerType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vietis.kahot.model.Game;

@Repository
@Transactional(rollbackFor = Exception.class)
public class GameDAO {

	@Autowired
	public SessionFactory sessionFactory;

	public Session initSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	public List<Game> findAll() {
		return initSession().createQuery("FROM Game", Game.class).getResultList();
	}

	public Game findById(final int id) {
		return initSession().load(Game.class, id);
	}

	public void save(final Game Game) {
		initSession().save(Game);
	}

	public void update(final Game Game) {
		initSession().update(Game);
	}

	public void delete(int id) {
		initSession().delete(id);
	}

	public int getCreatedGameId(int pin, int status, int qid, int userid) {
		Query query = initSession().createSQLQuery("select id from game where pin=:pin and status=:status and"
				+ " question_set_id=:qid and account_id=:userid");
		query.setParameter("pin", pin);
		query.setParameter("status", status);
		query.setParameter("userid", userid);
		query.setParameter("qid", qid);

		List<Integer> result = query.list();
		int id = 0;
		for (Integer row : result) {
			id = row;
		}
		return id;
	}

	// get Game with 1 of the status 0:waiting, 1: playing, 2: closed
	public List<Game> getGameWithStatus(int status) {
		List<Game> list = initSession().createQuery("select g from Game g where status=:status", Game.class)
				.setParameter("status", status).getResultList();
		return list;
	}

	// .get list pin of Game open (status = 0)
	public List<Integer> findPinGameOpenning() {
		List<Integer> gamePinOpenList = initSession().createQuery("SELECT g.pin FROM Game g where status = 0", Integer.class).getResultList();
		return gamePinOpenList;
	}
	
	//.find game id by pin
	public Game findGameByPin(int pinParam) {
		Game game = initSession().createQuery("SELECT g FROM Game g where pin = :pinParam", Game.class)
				.setParameter("pinParam", pinParam)
				.getSingleResult();
		return game;
	}

	// i just test how to use query
	public List<Game> get2Game() {
		List<Game> list = initSession()
				.createQuery("SELECT g from Game g JOIN FETCH g.account  ORDER BY g.id ASC", Game.class)
				.setMaxResults(2).setFirstResult(0).getResultList();
		return list;
	}

	// change status from waiting to playing
	public void updateStatus(int gid, int status) {
		Session session = sessionFactory.getCurrentSession();
		Game game = session.load(Game.class, gid);
		game.setStatus(status);
		session.save(game);
	}

	// check pin to get gameid
	public int checkPin(int pin) {
		int gameid;
		try {
			gameid = initSession().createQuery("select g.id from Game g where g.pin=:pin and status=0", Integer.class)
					.setParameter("pin", pin).getSingleResult();
		} catch (NoResultException e) {
			gameid = 0;
		}
		return gameid;
	}

}
