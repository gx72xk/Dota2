package Dota2Class;


import java.lang.String;
import java.util.Date;


public class PlayerSummary {

	   
	public String steamId;
	public String communityVisibilityState;
	public String personName;
	public int lastLogOff;
	public String profileUrl;
	public String avatar;
	public String avatarMedium;
	public String avatarFull;
	public String personaState;
	public int timeCreated;


	public PlayerSummary() {
		super();
	}   
	public String getSteamId() {
		return this.steamId;
	}

	public void setSteamId(String steamId) {
		this.steamId = steamId;
	}   
	public String getPersonName() {
		return this.personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}   
	public String getProfileUrl() {
		return this.profileUrl;
	}

	public void setProfileUrl(String profileUrl) {
		this.profileUrl = profileUrl;
	}   
	public String getAvatar() {
		return this.avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}   
	public String getAvatarMedium() {
		return this.avatarMedium;
	}
	public void setAvatarMedium(String avatarMedium) {
		this.avatarMedium = avatarMedium;
	}   
	public String getAvatarFull() {
		return this.avatarFull;
	}
	public void setAvatarFull(String avatarFull) {
		this.avatarFull = avatarFull;
	}
	public String getCommunityVisibilityState() {
		return communityVisibilityState;
	}
	public void setCommunityVisibilityState(String communityVisibilityState) {
		this.communityVisibilityState = communityVisibilityState;
	}
	public int getLastLogOff() {
		return lastLogOff;
	}
	public void setLastLogOff(int lastLogOff) {
		this.lastLogOff = lastLogOff;
	}
	public String getTranslateedLastLogOff(){
		return new Date((long)lastLogOff * (long)1000).toString();
	}
	public String getPersonaState() {
		return personaState;
	}
	public void setPersonaState(String personaState) {
		this.personaState = personaState;
	}
	public int getTimeCreated() {
		return timeCreated;
	}
	public void setTimeCreated(int timeCreated) {
		this.timeCreated = timeCreated;
	}
	public String getTranslatedTimeCreated(){
		return new Date((long)timeCreated * (long)1000).toString();
	}

   
}
