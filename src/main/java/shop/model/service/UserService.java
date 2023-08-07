package shop.model.service;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;

import common.SqlSessionTemplate;
import shop.model.dao.UserDAO;
import shop.model.vo.User;

public class UserService {
	private UserDAO uDao;

	public UserService() {
		uDao = new UserDAO();
	}

	public int insertUser(User user) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = uDao.insertUser(session, user);
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateUser(User user) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = uDao.updateUser(session, user);
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int deleteUser(String userId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = uDao.deleteUser(session, userId);
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public User selectCheckLogin(User user) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		User uOne = uDao.selectCheckLogin(session, user);
		return uOne;
	}

	public User selectOneById(String userId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		User user = uDao.selectOneById(session, userId);
		return user;
	}

}
