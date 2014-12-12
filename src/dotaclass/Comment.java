package dotaclass;

import java.io.Serializable;

import javax.persistence.*;

import java.util.Date;


/**
 * The persistent class for the comment database table.
 * 
 */
@Entity
@NamedQuery(name="Comment.findAll", query="SELECT c FROM Comment c")
public class Comment implements Serializable {
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
    
	@Column(name="title")
	private String title;
	
	private String commentType;

	private String content;

	@Temporal(TemporalType.TIMESTAMP)
	private Date date;

	//bi-directional many-to-one association to Article
	@ManyToOne
	@JoinColumn(name="ArticleID")
	private Article article;

	//bi-directional many-to-one association to Replay
	@ManyToOne
	@JoinColumn(name="ReplayID")
	private Replay replay;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="username")
	private User user;

	public Comment(String title, String commentType, String content, Date date,
			Article article, Replay replay, User user) {
		super();
		this.title = title;
		this.commentType = commentType;
		this.content = content;
		this.date = date;
		this.article = article;
		this.replay = replay;
		this.user = user;
	}

	public Comment() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCommentType() {
		return this.commentType;
	}

	public void setCommentType(String commentType) {
		this.commentType = commentType;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Article getArticle() {
		return this.article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Replay getReplay() {
		return this.replay;
	}

	public void setReplay(Replay replay) {
		this.replay = replay;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}