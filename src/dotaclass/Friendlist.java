package dotaclass;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the friendlist database table.
 * 
 */
@Entity
@NamedQuery(name="Friendlist.findAll", query="SELECT f FROM Friendlist f")
public class Friendlist implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String friendUsername;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="username")
	private User user;

	public Friendlist() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFriendUsername() {
		return this.friendUsername;
	}

	public void setFriendUsername(String friendUsername) {
		this.friendUsername = friendUsername;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}