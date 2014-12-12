package dota2dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import dotaclass.*;

import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dotaclass.User;

public class FriendDAO {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Dota2");
	EntityManager em = null;
	public FriendDAO(){
		em = factory.createEntityManager();
	}

	public void addFriend(String AccountUsername, String friendUsername){
		em.getTransaction().begin();
		UserDAO userDao = new UserDAO();
		User user = userDao.findUserByUsername(AccountUsername);
		Friendlist friendList = new Friendlist();
		friendList.setUser(user);
		friendList.setFriendUsername(friendUsername);
		em.persist(friendList);
		em.getTransaction().commit();
	}
	
	public Friendlist findFriendList(String accountUsername, String friendUsername){
		em.getTransaction().begin();
		Friendlist friend = new Friendlist();
		try{
			Query q = em.createQuery("select f from Friendlist f where f.user.username=:username and f.friendUsername=:friendUsername");
			q.setParameter("username", accountUsername);
			q.setParameter("friendUsername", friendUsername);
			friend = (Friendlist)q.getSingleResult();
		}catch(NoResultException e){
			friend = null;
		}
		em.getTransaction().commit();
		return friend;
		
	}
	
	public List<Friendlist> findFriendByUsername(String username){
		em.getTransaction().begin();
		List<Friendlist> friends = new ArrayList<Friendlist>();
		Query q = em.createQuery("select f from Friendlist f where f.user.username=:username");
		q.setParameter("username", username);
		friends = q.getResultList();
		em.getTransaction().commit();
		return friends;
	}
	
	public void deleteFriendById(int id){
		em.getTransaction().begin();
		Friendlist friend = em.find(Friendlist.class, id);
		em.remove(friend);
		em.getTransaction().commit();
	}
	public static void main(String[] args) {


	}

}
