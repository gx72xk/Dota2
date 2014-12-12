package dotaclass;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;



public class Match {
	public String matchId;
	public String result;
	public String gameMode;
	public int startTime;
	public int duration;
	public int finishTime;
	public int firstBloodTime;
	public String TranslateTime;
	public Myinfo myinfo;
	public Players player;
	public String color;
	public List<Players> playerRadiant = new ArrayList<Players>();
	public List<Players> playerDire = new ArrayList<Players>();
	
	public Match() {
		super();
	}

	public String getMatchId() {
		return matchId;
	}

	public void setMatchId(String matchId) {
		this.matchId = matchId;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getGameMode() {
		return gameMode;
	}

	public void setGameMode(String gameMode) {
		this.gameMode = gameMode;
	}

	public int getStartTime() {
		return startTime;
	}

	public void setStartTime(int startTime) {
		this.startTime = startTime;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getFinishTime() {
		return finishTime;
	}
	
	public String getTranslateTime() {
		return new Date((long)finishTime * (long)1000).toString();
	}


	public void setFinishTime(int finishTime) {
		this.finishTime = finishTime;
	}

	public List<Players> getPlayerRadiant() {
		return playerRadiant;
	}

	public void setPlayerRadiant(List<Players> playerRadiant) {
		this.playerRadiant = playerRadiant;
	}

	public List<Players> getPlayerDire() {
		return playerDire;
	}

	public void setPlayerDire(List<Players> playerDire) {
		this.playerDire = playerDire;
	}

}
