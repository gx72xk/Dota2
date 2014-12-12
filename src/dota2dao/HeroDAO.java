package Dota2DAO;




import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;



import Dota2Class.Hero;


public class HeroDAO {

	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Dota2DB");
	EntityManager em = null;
	
	public HeroDAO(){
		em = factory.createEntityManager();
	}
	
	
//		insert hero information into hero table
	public void createHero(Hero hero){
		em.getTransaction().begin();
		em.persist(hero);
		em.getTransaction().commit();	
	}
	
//		find hero localized name by hero id
	public Hero findHeroById(int heroid){
		em.getTransaction().begin();
		Hero hero = em.find(Hero.class, heroid);
		em.getTransaction().commit();
		return hero;
	}
	

	public static void main(String[] args) {
		
	}

}
