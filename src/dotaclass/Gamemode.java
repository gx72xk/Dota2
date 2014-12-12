package dotaclass;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the gamemode database table.
 * 
 */
@Entity
@NamedQuery(name="Gamemode.findAll", query="SELECT g FROM Gamemode g")
public class Gamemode implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String modeName;

	public Gamemode() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModeName() {
		return this.modeName;
	}

	public void setModeName(String modeName) {
		this.modeName = modeName;
	}

}