package Dota2DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Dota2Class.User;

public class UserDAO {
	
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Dota2DB");
	EntityManager em = null;
	
	public UserDAO(){
		em = factory.createEntityManager();
	}
	
	public void createUser(User user){
		em.getTransaction().begin();
		em.persist(user);
		em.getTransaction().commit();	
	}
	
	public List<User> findAllUser(){
		em.getTransaction().begin();
		Query q = em.createQuery("select u from User u");
		List<User> users = (List<User>)q.getResultList();				
		em.getTransaction().commit();
		return users;
	}
	

	
	public User findUserByUsername(String username){
		em.getTransaction().begin();
		User user = em.find(User.class, username);
		em.getTransaction().commit();
		
		return user;
	}
	
	public void removeUserByUsername(String username){
		em.getTransaction().begin();
		User user = em.find(User.class, username);
		em.remove(user);
		em.getTransaction().commit();
	}
	
	public User selectUserByUsernameAndPassword(String username, String password){
		em.getTransaction().begin();
		User user = em.find(User.class, username);
		em.getTransaction().commit();
		if(user == null){
			return null;
		}
		else{
			if(user.getPassword().equals(password)){
	
				return user;
			}
			else{
				return null;
			}
		}
		
	}
	
	public static void main(String[] args) {
		UserDAO userDao = new UserDAO();
		List<User> users = userDao.findAllUser();
		System.out.println(users.get(0).getUsername());


	}

}
