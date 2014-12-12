package rest;


<<<<<<< HEAD
import java.util.Date;

=======
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

<<<<<<< HEAD
import dota2dao.ManagerDAO;
import dota2dao.UserDAO;
import dotaclass.Article;
import dotaclass.Replay;
import dotaclass.User;


=======
import Dota2Class.Article;
import Dota2Class.Replay;
import Dota2Class.User;
import Dota2DAO.ManagerDAO;
import Dota2DAO.UserDAO;
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7


@Path("user")
public class UserWebService {
	UserDAO dao=new UserDAO();
	ManagerDAO dao1=new ManagerDAO();

	@POST
	@Path("/")
	@Consumes("application/json")
	public void CreateUser(User user){
		dao.createUser(user);
		
		
	}
<<<<<<< HEAD
=======
	@GET
	@Produces("application/json")
	@Path("/login")
	public void findUser(String username,String password){
		dao.selectUserByUsernameAndPassword(username, password);
	}
	
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
	
	@DELETE
	@Path("/article/delete/{id}")
	@Produces("application/json")
	public void  removeArticle(@PathParam("id") int id) {
		dao1.removeArticle(id);

		
	}
	
	@POST
	@Consumes("application/json")
	@Path("/article/create")
	public void CreateArticle(Article article){
		dao1.createArticle(article);
		
		
	}
	@POST
	@Consumes("application/json")
	@Path("/replay/create")
	public void CreateReplay(Replay replay){
		dao1.createReplay(replay);
		
		
	}
	
	@DELETE
	@Path("/replay/delete/{id}")
	@Produces("application/json")
	public void  removeReplay(@PathParam("id") int id) {
		dao1.removerReplays(id);
	}
		@PUT
		@Path("/replay/update/{id}")
		@Consumes("application/json")
		@Produces("application/json")
		public  void updateReplays(@PathParam("id") int id, Replay replay) {
			dao1.updateReplays(id, replay);
		}
<<<<<<< HEAD
		@PUT
		@Path("/update/{username}")
		@Consumes("application/json")
		@Produces("application/json")
		public  void updateUser(@PathParam("username") String username, User updatedUser) {
			dao.updateUserByUsername(username, updatedUser);
		}
=======
	
>>>>>>> 621d5db566ffd76d342f2d41a5254b8f2f591ae7
	public static void main(String[] args) {
	

	}

}
