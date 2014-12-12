package dotaclass;

import java.math.BigDecimal;


public class Globals {
	
	public final static String API_KEY = "/?key=9D05B768ABC6B9BC07614564FD100542";
	public final static String BASE_URL = "https://api.steampowered.com";
	public final static String FIND_MATCH_BY_ID = "/IDOTA2Match_570/GetMatchDetails";
	public final static String PLAYER_SUMMARIES = "/ISteamUser/GetPlayerSummaries";
	public final static String MATCH_HISTORY = "/IDOTA2Match_570/GetMatchHistory";
	public final static String Item_List = "/IEconDOTA2_570/GetGameItems";
	public final static String HERO_LIST = "/IEconDOTA2_570/GetHeroes";
	public final static String VERSION1 = "/v1";
	public final static String VERSION2 = "/v0002";
	public final static String MATCH_ID = "&match_id={{MATCH_ID}}";
	public final static String STEAM_ID = "&steamids={{STEAM_ID}}";
	public final static String ACCOUNT_ID = "&account_id={{ACCOUNT_ID}}";
	public final static String LANGUAGE = "&language=en_us";
	public final static BigDecimal STEAM_CONVERTING_ID = new BigDecimal("76561197960265728");
	public final static int MAX_PLAYER_NUM = 10;
	public static User user;
	public static String username;
	public static PlayerSummary playersummary;
	public static String steamid;
	public static int articleId;
	public static int replayId;

	

}
