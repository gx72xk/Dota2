package dotaclass;

import java.io.Serializable;

import javax.persistence.*;

import java.util.Date;
import java.util.List;


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

	private int liked;

	@Temporal(TemporalType.TIMESTAMP)
	private Date postedDate;

	private String title;

	private String url;

	//bi-directional many-to-one association to Comment
	@OneToMany(mappedBy="replay")
	private List<Comment> comments;

	//bi-directional many-to-one association to User
    @JoinColumn(name="username")
	private String username;

	public Replay() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLiked() {
		return liked;
	}

	public void setLiked(int liked) {
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

	public List<Comment> getComments() {
		return this.comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public Comment addComment(Comment comment) {
		getComments().add(comment);
		comment.setReplay(this);

		return comment;
	}

	public Comment removeComment(Comment comment) {
		getComments().remove(comment);
		comment.setReplay(null);

		return comment;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUser(String username) {
		this.username = username;
	}

}