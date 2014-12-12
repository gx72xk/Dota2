package dotaclass;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the hero database table.
 * 
 */
@Entity
@NamedQuery(name="Hero.findAll", query="SELECT h FROM Hero h")
public class Hero implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="localized_name")
	private String localizedName;

	private String name;

	public Hero() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocalizedName() {
		return this.localizedName;
	}

	public void setLocalizedName(String localizedName) {
		this.localizedName = localizedName;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}