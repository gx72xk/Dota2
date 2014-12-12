package Dota2Class;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String username;

	@Column(name="`Date of Birth`")
	private String date_of_Birth;

	private String email;

	private String firstname;

	private String lastname;

	private String password;

	private String steamid;

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

}