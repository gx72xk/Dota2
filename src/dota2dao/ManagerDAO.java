package Dota2DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Dota2Class.Article;
import Dota2Class.Replay;


public class ManagerDAO {

	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Dota2DB");
	EntityManager em = null;
	
	public ManagerDAO(){
		em = factory.createEntityManager();
	}
	
	public void createArticle(Article article){
		em.getTransaction().begin();
		em.persist(article);
		em.getTransaction().commit();
	}
	

	public List<Article> findAllArticlesByUsername(String username){
		em.getTransaction().begin();
		Query q = em.createQuery("select a from Article a where a.username=:username");
		q.setParameter("username", username);
		List<Article> articles = q.getResultList();
		em.getTransaction().commit();
		return articles;
		
	}
	
	public Article findArticleById(int id){
		em.getTransaction().begin();
		Query q = em.createQuery("select a from Article a where a.id= :id");
		q.setParameter("id", id);
		Article article = (Article)q.getSingleResult();
		em.getTransaction().commit();
		return article;
	}
	
	public void removeArticle(int id){
		em.getTransaction().begin();
		Article article = em.find(Article.class, id);
		em.remove(article);
		em.getTransaction().commit();
	}
	
	public void createReplay(Replay replay){
		em.getTransaction().begin();
		em.persist(replay);
		em.getTransaction().commit();
	}
	public List<Replay> findAllReplayByUsername(String username){
		em.getTransaction().begin();
		Query q = em.createQuery("select r from Replay r where r.username=:username");
		q.setParameter("username", username);
		List<Replay> replay = q.getResultList();
		em.getTransaction().commit();
		return replay;
	}
	public void removerReplays(int id){
		em.getTransaction().begin();
		Replay replay = em.find(Replay.class, id);
		em.remove(replay);
		em.getTransaction().commit();
	}
	
	public void updateReplays(int id,Replay replay){
		em.getTransaction().begin();
		Replay r = em.find(Replay.class, id);
		r.setTitle(replay.getTitle());
		r.setUrl(replay.getUrl());
		em.merge(r);
		 em.getTransaction().commit(); 
	}
	public static void main(String[] args) {

		//ArticleDAO articleDao = new ArticleDAO();
//		articleDao.removeArticle(6);
//		List<Article> articles = articleDao.findAllArticlesByUsername("hyyearth");
//		Article article = articleDao.findArticleById(6);
//		System.out.println(articles.get(0).getTitle());
//		System.out.println(article.getLikeNum());
	}

}
