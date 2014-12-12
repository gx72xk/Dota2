package dotaclass;

import java.io.Serializable;

import javax.persistence.*;

import java.util.List;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	public String username;

	@Column(name="`Date of Birth`")
	private String date_of_Birth;

	private String email;

	private String firstname;

	private String lastname;

	private String password;

	private String steamid;



	public User(String username, String date_of_Birth, String email,
			String firstname, String lastname, String password, String steamid,
			List<Comment> comments, List<Friendlist> friendlists) {
		super();
		this.username = username;
		this.date_of_Birth = date_of_Birth;
		this.email = email;
		this.firstname = firstname;
		this.lastname = lastname;
		this.password = password;
		this.steamid = steamid;
		this.comments = comments;
		this.friendlists = friendlists;
	}

	//bi-directional many-to-one association to Comment
	@OneToMany(mappedBy="user")
	private List<Comment> comments;

	//bi-directional many-to-one association to Friendlist
	@OneToMany(mappedBy="user")
	private List<Friendlist> friendlists;


	public User() {
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDate_of_Birth() {
		return this.date_of_Birth;
	}

	public void setDate_of_Birth(String date_of_Birth) {
		this.date_of_Birth = date_of_Birth;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSteamid() {
		return this.steamid;
	}

	public void setSteamid(String steamid) {
		this.steamid = steamid;
	}

	public List<Comment> getComments() {
		return this.comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public Comment addComment(Comment comment) {
		getComments().add(comment);
		comment.setUser(this);

		return comment;
	}

	public Comment removeComment(Comment comment) {
		getComments().remove(comment);
		comment.setUser(null);

		return comment;
	}

	public List<Friendlist> getFriendlists() {
		return this.friendlists;
	}

	public void setFriendlists(List<Friendlist> friendlists) {
		this.friendlists = friendlists;
	}

	public Friendlist addFriendlist(Friendlist friendlist) {
		getFriendlists().add(friendlist);
		friendlist.setUser(this);

		return friendlist;
	}

	public Friendlist removeFriendlist(Friendlist friendlist) {
		getFriendlists().remove(friendlist);
		friendlist.setUser(null);

		return friendlist;
	}


}