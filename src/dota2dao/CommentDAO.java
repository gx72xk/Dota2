package dota2dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dotaclass.Comment;

public class CommentDAO {
	
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Dota2");
	EntityManager em = null;
	
	public CommentDAO(){
		em = factory.createEntityManager();
	}
	
	public List<Comment> findAllcommentsOfArticleByArticleId(int articleId){
		em.getTransaction().begin();
		List<Comment> comments = new ArrayList<Comment>();
		Query q = em.createQuery("select c from Comment c where c.article.id=:articleId");
		q.setParameter("articleId", articleId);
		comments = q.getResultList();
		em.getTransaction().commit();
		return comments;
	}
	
	public void createCommentForArticle(Comment comment){
		em.getTransaction().begin();
		em.persist(comment);
		em.getTransaction().commit();
	}
	public List<Comment> findAllcommentsOfReplayByReplayId(int replayId){
		em.getTransaction().begin();
		List<Comment> comments = new ArrayList<Comment>();
		Query q = em.createQuery("select c from Comment c where c.replay.id=:replayId");
		q.setParameter("replayId", replayId);
		comments = q.getResultList();
		em.getTransaction().commit();
		return comments;
	}
	public static void main(String[] args) {
		CommentDAO dao = new CommentDAO();
		java.sql.Date sqlDate = null;
		SimpleDateFormat bartDateFormatForUser = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date sqlDateForUser = null;

		try {
			java.util.Date date = bartDateFormatForUser.parse("1991/01/14");

			sqlDate = new java.sql.Date(date.getTime());

		}

		catch (Exception ex) {

			System.out.println(ex.getMessage());
		}
//		List<Comment> comments = dao.findAllcommentsOfArticleByArticleId(7);
//		for(Comment comment : comments){
//			System.out.println(comment.getUser().getUsername());
//		UserDAO userDao = new UserDAO();
//		User user = userDao.findUserByUsername("hyyearth");
//		ArticleDAO articleDao = new ArticleDAO();
//		Article article = articleDao.findArticleById(7);
//		Comment comment = new Comment("bad", sqlDate, "bad", "article", user, article, null);
//		dao.createCommentForArticle(comment);
////		}

	}
	

}
