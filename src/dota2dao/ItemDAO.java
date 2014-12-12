package Dota2DAO;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import Dota2Class.Item;


public class ItemDAO {

	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Dota2DB");
	EntityManager em = null;
	
	public ItemDAO(){
		em = factory.createEntityManager();
	}
	
	public void createItem(Item item){
		em.getTransaction().begin();
		em.persist(item);
		em.getTransaction().commit();	
	}
	
	public Item getItemById(String id){
		em.getTransaction().begin();
		Item item = new Item();
		item = em.find(Item.class, id);
		em.getTransaction().commit();
		return item;
	}
}
