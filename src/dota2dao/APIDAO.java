package Dota2DAO;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import Dota2Class.GameMode;
import Dota2Class.Globals;
import Dota2Class.Match;
import Dota2Class.Myinfo;
import Dota2Class.PlayerSummary;
import Dota2Class.Players;


public class APIDAO {
	HeroDAO heroDao = new HeroDAO();
	ItemDAO itemDao = new ItemDAO();
	APIDAO apiDao = new APIDAO();

	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Dota2DB");
	EntityManager em = null;

	public APIDAO() {
		em = factory.createEntityManager();
	}

	private String MatchDetailUrl = Globals.BASE_URL + Globals.FIND_MATCH_BY_ID
			+ Globals.VERSION1 + Globals.API_KEY + Globals.MATCH_ID;

	private String MatchHistoryUrl = Globals.BASE_URL + Globals.MATCH_HISTORY + 
			Globals.VERSION1 + Globals.API_KEY + Globals.ACCOUNT_ID;

	private String PlayerSummaryUrl = Globals.BASE_URL + Globals.PLAYER_SUMMARIES 
			+ Globals.VERSION2 + Globals.API_KEY + Globals.STEAM_ID;


// get player summary by 64 bit id 		
public PlayerSummary getPlayerSummaryBySteamId(String steam64BitId){
		
		String urlStr = PlayerSummaryUrl.replace("{{STEAM_ID}}", steam64BitId);

		try {
			URL url = new URL(urlStr);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			InputStream stream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(stream);
			BufferedReader buffer = new BufferedReader(reader);
			String line;
			String json = "";
			while ((line = buffer.readLine()) != null) {
				json += line;
			}

			JSONParser parser = new JSONParser();
			try {
				JSONObject root = (JSONObject) parser.parse(json);
				JSONObject response = (JSONObject) root.get("response");
				JSONArray players = (JSONArray) response.get("players");
				if(players.size() == 0){
					return null;
				}
				JSONObject info = (JSONObject) players.get(0);
				System.out.println(root);
				PlayerSummary playerSummary = new PlayerSummary();
				playerSummary.steamId = info.get("steamid").toString();
				switch(info.get("communityvisibilitystate").toString()){
				case "1": playerSummary.communityVisibilityState = "Private"; break;
				case "2": playerSummary.communityVisibilityState = "Friends Only"; break;
				case "3": playerSummary.communityVisibilityState = "Friends of Friends"; break;
				case "4": playerSummary.communityVisibilityState = "Users Only"; break;
				case "5": playerSummary.communityVisibilityState = "Public"; break;
				}
				playerSummary.personName = info.get("personaname").toString();
				playerSummary.lastLogOff = Integer.parseInt(info.get("lastlogoff").toString());
				playerSummary.profileUrl = info.get("profileurl").toString();
				playerSummary.avatar = info.get("avatar").toString();
				playerSummary.avatarMedium = info.get("avatarmedium").toString();
				playerSummary.avatarFull = info.get("avatarfull").toString();
				switch(info.get("personastate").toString()){
				case "0": playerSummary.personaState = "Offline"; break;
				case "1": playerSummary.personaState = "Online"; break;
				case "2": playerSummary.personaState = "Busy"; break;
				case "3": playerSummary.personaState = "Away"; break;
				case "4": playerSummary.personaState = "Snooze"; break;
				case "5": playerSummary.personaState = "Looking to trade"; break;
				case "6": playerSummary.personaState = "Looking to play"; break;
				}
				playerSummary.timeCreated = Integer.parseInt(info.get("timecreated").toString());
				
				return playerSummary;

			} catch (ParseException e) {
				e.printStackTrace();
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
		
	}
	
//	get player summary by 32 bit id
	public PlayerSummary getPlayerSuumaryByAccountId(String steam32BitId){
		
		BigDecimal Steam32BitId = new BigDecimal(steam32BitId);
		BigDecimal Steam64BitId = Steam32BitId.add(Globals.STEAM_CONVERTING_ID);
		String steamId = Steam64BitId.toString();
		String urlStr = PlayerSummaryUrl.replace("{{STEAM_ID}}", steamId);
		
		try {
			URL url = new URL(urlStr);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			InputStream stream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(stream);
			BufferedReader buffer = new BufferedReader(reader);
			String line;
			String json = "";
			while ((line = buffer.readLine()) != null) {
				json += line;
			}

			JSONParser parser = new JSONParser();
			try {
				JSONObject root = (JSONObject) parser.parse(json);
				JSONObject response = (JSONObject) root.get("response");
				JSONArray players = (JSONArray) response.get("players");
				if(players.size() == 0){
					return null;
				}
				JSONObject info = (JSONObject) players.get(0);
				System.out.println(root);
				PlayerSummary playerSummary = new PlayerSummary();
				playerSummary.steamId = info.get("steamid").toString();
				switch(info.get("communityvisibilitystate").toString()){
				case "1": playerSummary.communityVisibilityState = "Private"; break;
				case "2": playerSummary.communityVisibilityState = "Friends Only"; break;
				case "3": playerSummary.communityVisibilityState = "Friends of Friends"; break;
				case "4": playerSummary.communityVisibilityState = "Users Only"; break;
				case "5": playerSummary.communityVisibilityState = "Public"; break;
				}
				playerSummary.personName = info.get("personaname").toString();
				playerSummary.lastLogOff = Integer.parseInt(info.get("lastlogoff").toString());
				playerSummary.profileUrl = info.get("profileurl").toString();
				playerSummary.avatar = info.get("avatar").toString();
				playerSummary.avatarMedium = info.get("avatarmedium").toString();
				playerSummary.avatarFull = info.get("avatarfull").toString();
				switch(info.get("personastate").toString()){
				case "0": playerSummary.personaState = "Offline"; break;
				case "1": playerSummary.personaState = "Online"; break;
				case "2": playerSummary.personaState = "Busy"; break;
				case "3": playerSummary.personaState = "Away"; break;
				case "4": playerSummary.personaState = "Snooze"; break;
				case "5": playerSummary.personaState = "Looking to trade"; break;
				case "6": playerSummary.personaState = "Looking to play"; break;
				}
				playerSummary.timeCreated = Integer.parseInt(info.get("timecreated").toString());
				
				return playerSummary;

			} catch (ParseException e) {
				e.printStackTrace();
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
		
	}

// 		get game mode name by game mode id
	public String getGameModeById(String id){
		em.getTransaction().begin();
		GameMode gameMode = em.find(GameMode.class, id);
		em.getTransaction().commit();
		return gameMode.getModeName();
	}

// 		get match information by match id
	public Match getMatchForMatchId(String matchId) {

		String urlStr = MatchDetailUrl.replace("{{MATCH_ID}}", matchId);
		System.out.println(urlStr);
		Match match = new Match();


		try {
			URL url = new URL(urlStr);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			InputStream stream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(stream, "utf-8");
			BufferedReader buffer = new BufferedReader(reader);
			
			String line;
			String json = "";
			while ((line = buffer.readLine()) != null) {
				json += line;
			}
			System.out.println(json);
			JSONParser parser = new JSONParser();
			try {
				JSONObject root = (JSONObject) parser.parse(json);
				JSONObject result = (JSONObject) root.get("result");
				match.matchId = result.get("match_id").toString();
				if (result.get("radiant_win").toString().equals("true")) {
					match.result = "Radiant Win";
				} else {
					match.result = "Dire Win";
				}

				match.gameMode = getGameModeById(result.get("game_mode").toString());
				match.startTime = Integer.parseInt(result.get("start_time").toString());
				match.duration = Integer.parseInt(result.get("duration").toString());
				match.finishTime = match.startTime + match.duration;

				JSONArray players = (JSONArray) result.get("players");

				JSONObject Player[] = new JSONObject[10];
				
				Players player[] = new Players[10];
				int i;
				for (i = 0; i < Globals.MAX_PLAYER_NUM; i++) {
					player[i] = new Players();
				}
				
				for (i = 0; i < Globals.MAX_PLAYER_NUM/2; i++) {
					Player[i] = (JSONObject) players.get(i);
					if(Player[i].get("account_id").toString() != null)
						player[i].accountId = Player[i].get("account_id").toString();
					if(apiDao.getPlayerSuumaryByAccountId(player[i].accountId) != null)
						player[i].playerId = apiDao.getPlayerSuumaryByAccountId(player[i].accountId).getPersonName();
					else
						player[i].playerId = player[i].accountId;
					if(Player[i].get("player_slot").toString() != null)
						player[i].playerSlot = Integer.parseInt(Player[i].get("player_slot").toString());
					if(Player[i].get("hero_id").toString() != null){
						player[i].heroId = Integer.parseInt(Player[i].get("hero_id").toString());
						player[i].heroName = heroDao.findHeroById(player[i].heroId).getName();
					}
					if(Player[i].get("level").toString() != null)
						player[i].level = Player[i].get("level").toString();
					if(Player[i].get("kills").toString() != null)
						player[i].kills = Integer.parseInt(Player[i].get("kills").toString());
					if(Player[i].get("deaths").toString() != null)
						player[i].deaths = Integer.parseInt(Player[i].get("deaths").toString());
					if(Player[i].get("assists").toString() != null)
						player[i].assists = Integer.parseInt(Player[i].get("assists").toString());
					if(Player[i].get("last_hits").toString() != null)
						player[i].lastHits = Player[i].get("last_hits").toString();
					if(Player[i].get("denies").toString() != null)
						player[i].denies = Player[i].get("denies").toString();
					if(Player[i].get("gold_per_min").toString() != null)
						player[i].gpm = Player[i].get("gold_per_min").toString();
					if(Player[i].get("xp_per_min").toString() != null)
						player[i].xpm = Player[i].get("xp_per_min").toString();
					if(Player[i].get("hero_damage").toString() != null)
						player[i].damage = Player[i].get("hero_damage").toString();
					if(Player[i].get("hero_healing").toString() != null)
						player[i].healing = Player[i].get("hero_healing").toString();
					if(Player[i].get("item_0").toString() != null && Player[i].get("item_0").toString().equals("0") == false)
						player[i].item0 = itemDao.getItemById(Player[i].get("item_0").toString()).getName().substring(5);
					if(Player[i].get("item_1").toString() != null && Player[i].get("item_1").toString().equals("0") == false)
						player[i].item1 = itemDao.getItemById(Player[i].get("item_1").toString()).getName().substring(5);
					if(Player[i].get("item_2").toString() != null && Player[i].get("item_2").toString().equals("0") == false)
						player[i].item2 = itemDao.getItemById(Player[i].get("item_2").toString()).getName().substring(5);
					if(Player[i].get("item_3").toString() != null && Player[i].get("item_3").toString().equals("0") == false)
						player[i].item3 = itemDao.getItemById(Player[i].get("item_3").toString()).getName().substring(5);
					if(Player[i].get("item_4").toString() != null && Player[i].get("item_4").toString().equals("0") == false)
						player[i].item4 = itemDao.getItemById(Player[i].get("item_4").toString()).getName().substring(5);
					if(Player[i].get("item_5").toString() != null && Player[i].get("item_5").toString().equals("0") == false)
						player[i].item5 = itemDao.getItemById(Player[i].get("item_5").toString()).getName().substring(5);
					match.playerRadiant.add(player[i]);
				}
				for (; i < Globals.MAX_PLAYER_NUM; i++) {
					Player[i] = (JSONObject) players.get(i);
					if(Player[i].get("account_id").toString() != null)
						player[i].accountId = Player[i].get("account_id").toString();
					if(apiDao.getPlayerSuumaryByAccountId(player[i].accountId) != null)
						player[i].playerId = apiDao.getPlayerSuumaryByAccountId(player[i].accountId).getPersonName();
					else
						player[i].playerId = player[i].accountId;
					if(Player[i].get("player_slot").toString() != null)
						player[i].playerSlot = Integer.parseInt(Player[i].get("player_slot").toString());
					if(Player[i].get("hero_id").toString() != null){
						player[i].heroId = Integer.parseInt(Player[i].get("hero_id").toString());
						player[i].heroName = heroDao.findHeroById(player[i].heroId).getName();
					}
					if(Player[i].get("level").toString() != null)
						player[i].level = Player[i].get("level").toString();
					if(Player[i].get("kills").toString() != null)
						player[i].kills = Integer.parseInt(Player[i].get("kills").toString());
					if(Player[i].get("deaths").toString() != null)
						player[i].deaths = Integer.parseInt(Player[i].get("deaths").toString());
					if(Player[i].get("assists").toString() != null)
						player[i].assists = Integer.parseInt(Player[i].get("assists").toString());
					if(Player[i].get("last_hits").toString() != null)
						player[i].lastHits = Player[i].get("last_hits").toString();
					if(Player[i].get("denies").toString() != null)
						player[i].denies = Player[i].get("denies").toString();
					if(Player[i].get("gold_per_min").toString() != null)
						player[i].gpm = Player[i].get("gold_per_min").toString();
					if(Player[i].get("xp_per_min").toString() != null)
						player[i].xpm = Player[i].get("xp_per_min").toString();
					if(Player[i].get("hero_damage").toString() != null)
						player[i].damage = Player[i].get("hero_damage").toString();
					if(Player[i].get("hero_healing").toString() != null)
						player[i].healing = Player[i].get("hero_healing").toString();
					if(Player[i].get("item_0").toString() != null && Player[i].get("item_0").toString().equals("0") == false)
						player[i].item0 = itemDao.getItemById(Player[i].get("item_0").toString()).getName().substring(5);
					if(Player[i].get("item_1").toString() != null && Player[i].get("item_1").toString().equals("0") == false)
						player[i].item1 = itemDao.getItemById(Player[i].get("item_1").toString()).getName().substring(5);
					if(Player[i].get("item_2").toString() != null && Player[i].get("item_2").toString().equals("0") == false)
						player[i].item2 = itemDao.getItemById(Player[i].get("item_2").toString()).getName().substring(5);
					if(Player[i].get("item_3").toString() != null && Player[i].get("item_3").toString().equals("0") == false)
						player[i].item3 = itemDao.getItemById(Player[i].get("item_3").toString()).getName().substring(5);
					if(Player[i].get("item_4").toString() != null && Player[i].get("item_4").toString().equals("0") == false)
						player[i].item4 = itemDao.getItemById(Player[i].get("item_4").toString()).getName().substring(5);
					if(Player[i].get("item_5").toString() != null && Player[i].get("item_5").toString().equals("0") == false)
						player[i].item5 = itemDao.getItemById(Player[i].get("item_5").toString()).getName().substring(5);
					match.playerDire.add(player[i]);
				}			

				return match;

			} catch (ParseException e) {
				e.printStackTrace();
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}


















//	get my match by match id(used in latest 10 matches)	
public Match getMyMatchByMatchId(String matchid, String steam64BitId){
	BigDecimal Steam64BitId = new BigDecimal(steam64BitId);
	BigDecimal Steam32BitId = Steam64BitId.subtract(Globals.STEAM_CONVERTING_ID);
	String steamId = Steam32BitId.toString();
	String urlStr2 = MatchDetailUrl.replace("{{MATCH_ID}}", matchid);
	
	System.out.println(urlStr2);
	try {
		URL url = new URL(urlStr2);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("GET");
		InputStream stream = connection.getInputStream();
		InputStreamReader reader = new InputStreamReader(stream);
		BufferedReader buffer = new BufferedReader(reader);
		String line;
		String json = "";
		while((line = buffer.readLine()) != null) {
			json += line;
		}
		
		JSONParser parser = new JSONParser();
		try {
			JSONObject root = (JSONObject) parser.parse(json);
			JSONObject result = (JSONObject) root.get("result");
	        JSONArray playersArray = (JSONArray)result.get("players");
	        
	        Match match =new Match();
	  
				match.duration = Integer.parseInt(result.get("duration").toString());
				match.startTime =Integer.parseInt( result.get("start_time").toString());
				match.finishTime =match.startTime + match.duration;
				match.matchId = result.get("match_id").toString();
				match.gameMode = result.get("game_mode").toString();
				match.firstBloodTime = Integer.parseInt(result.get("first_blood_time").toString());			
			  
				match.player= new Players();
				for(int i = 0; i <= 9; i++){
				JSONObject Allplayer= (JSONObject) playersArray.get(i);
		   
			 	if(Allplayer.get("account_id").toString() != null && Allplayer.get("account_id").toString().equals(steamId)){
			       	match.player = new Players();
			        match.player.accountId = Allplayer.get("account_id").toString();
			        match.player.playerSlot = Integer.parseInt(Allplayer.get("player_slot").toString());
			        match.player.heroId =Integer.parseInt( Allplayer.get("hero_id").toString());
			        if(Allplayer.get("item_0").toString().equals("0") == false&&Allplayer.get("item_0").toString() != null)
			        	match.player.item0 =itemDao.getItemById(Allplayer.get("item_0").toString()).getName().substring(5);
			        if(Allplayer.get("item_1").toString().equals("0") == false&&Allplayer.get("item_1").toString() != null)
			        	match.player.item1 = itemDao.getItemById(Allplayer.get("item_1").toString()).getName().substring(5);
			        if(Allplayer.get("item_2").toString().equals("0") == false&&Allplayer.get("item_2").toString() != null)
			        	match.player.item2 = itemDao.getItemById(Allplayer.get("item_2").toString()).getName().substring(5);
			        if(Allplayer.get("item_3").toString().equals("0") == false&&Allplayer.get("item_3").toString() != null)
			        	match.player.item3 =itemDao.getItemById(Allplayer.get("item_3").toString()).getName().substring(5);
			        if(Allplayer.get("item_4").toString().equals("0") == false&&Allplayer.get("item_4").toString() != null)
			        	match.player.item4 = itemDao.getItemById(Allplayer.get("item_4").toString()).getName().substring(5);
			        if(Allplayer.get("item_5").toString().equals("0") == false&&Allplayer.get("item_5").toString() != null)
			        	match.player.item5 = itemDao.getItemById(Allplayer.get("item_5").toString()).getName().substring(5);
			        System.out.println(match.player.item5);
			        match.player.kills = Integer.parseInt(Allplayer.get("kills").toString());
			        match.player.deaths = Integer.parseInt(Allplayer.get("deaths").toString());
			        match.player.assists = Integer.parseInt(Allplayer.get("assists").toString());
			        BigDecimal a= new BigDecimal(match.player.kills);
			        if(match.player.deaths!=0){
				        BigDecimal b=new BigDecimal(match.player.deaths);
				        BigDecimal d= new BigDecimal(match.player.assists);
				        BigDecimal c=a.add(d);
				        BigDecimal e=c.divide(b, 2, BigDecimal.ROUND_HALF_UP);
				        match.player.KDA=e.toString();
				    }
			        else {
			        	BigDecimal b=new BigDecimal(1);
				        BigDecimal d= new BigDecimal(match.player.assists);
				        BigDecimal c=a.add(d);
				        BigDecimal e=c.divide(b, 2, BigDecimal.ROUND_HALF_UP);
				        match.player.KDA=e.toString();
				    }

			        match.player.denies = Allplayer.get("denies").toString();


			        match.player.level = Allplayer.get("level").toString();
			        if (result.get("radiant_win").toString().equals("true")&&match.player.playerSlot<100||result.get("radiant_win").toString().equals("false")&&match.player.playerSlot>100) {
						match.result = "Won";
				} else {
					match.result = "Lost";
				
		         }  
		        System.out.println(match.player.KDA);
		        break;
		      
			}   
		}return match;
		}					
		 catch (ParseException e) {
			e.printStackTrace();
		}	
	} catch (MalformedURLException e) {
		e.printStackTrace();
	} catch (IOException e) {

		e.printStackTrace();
	}		
	return null;
}


//	get my match history 
public  Match[] getMyMatchHistory(String  steam64BitId){
	BigDecimal Steam64BitId = new BigDecimal(steam64BitId);
	BigDecimal Steam32BitId = Steam64BitId.subtract(Globals.STEAM_CONVERTING_ID);
	String steamId = Steam32BitId.toString();
	//System.out.println(steamId);
		String urlStr1 = MatchHistoryUrl.replace("{{ACCOUNT_ID}}", steamId);
		
		System.out.println(urlStr1);
		
		try {
			URL url = new URL(urlStr1);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			InputStream stream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(stream);
			BufferedReader buffer = new BufferedReader(reader);
			String line;
			String json = "";
			while((line = buffer.readLine()) != null) {
				json += line;
			}
			
			JSONParser parser = new JSONParser();

			try {
				JSONObject root = (JSONObject) parser.parse(json);
				JSONObject result = (JSONObject) root.get("result");
				JSONArray matches = (JSONArray) result.get("matches");
				
			
				
				Match[] match = new Match[10];
				
				for(int i=0;i<=9;i++){
				JSONObject recentMatches = (JSONObject) matches.get(i);
				
				match[i]=new Match();
				match[i].matchId =recentMatches.get("match_id").toString();
				match[i].startTime = Integer.parseInt(recentMatches.get("start_time").toString());

				
			
		         
			
				match[i].myinfo=new Myinfo();
		  		JSONArray playersArray = (JSONArray) recentMatches.get("players");
                    for(int j=0;j<=9;j++){     	  
						JSONObject players = (JSONObject) playersArray.get(j);
							
						if(players.get("account_id").toString()!=null&&players.get("account_id").toString().equals(steamId)){
							System.out.println(players.get("account_id").toString());
							System.out.println(steamId);
							match[i].myinfo.accountid= players.get("account_id").toString();
							//match[i].myinfo.time = players.get("start_time").toString();
							match[i].myinfo.heroid=Integer.parseInt(players.get("hero_id").toString());
							System.out.println(match[i].myinfo.heroid);
							match[i].myinfo.herolocalname = heroDao.findHeroById(match[i].myinfo.heroid).getName().toString();
							match[i].myinfo.heroname=heroDao.findHeroById(match[i].myinfo.heroid).getLocalizedName().toString();
							System.out.println(match[i].myinfo.heroname);
							break;
							} 
                        }
				} 
				return match;
			}
			 catch (ParseException e) {
				e.printStackTrace();
			}
			

		} catch (IOException e) {

			e.printStackTrace();
		}		
		 return null;
	}

	public static void main(String[] args) {
		//MatchHistoryDAO manager = new MatchHistoryDAO();
		//Match match = manager.getMatchForMatchId("989815741");
//		String accountId = match.getPlayer0().getAccountId();

//		System.out.println(match.getPlayerDire().get(0).getAccountId());
	}

}
