package Dota2Class;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the replays database table.
 * 
 */
@Entity
@Table(name="replays")
@NamedQuery(name="Replay.findAll", query="SELECT r FROM Replay r")
public class Replay implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String liked;

	@Temporal(TemporalType.TIMESTAMP)
	private Date postedDate;

	private String title;

	private String url;

	private String username;

	public Replay() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLiked() {
		return this.liked;
	}

	public void setLiked(String liked) {
		this.liked = liked;
	}

	public Date getPostedDate() {
		return this.postedDate;
	}

	public void setPostedDate(Date postedDate) {
		this.postedDate = postedDate;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}