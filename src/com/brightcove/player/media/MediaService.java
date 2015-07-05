package com.brightcove.player.media;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.Playlist;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.Serializable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Emits(events={"error"})
@ListensFor(events={"findVideo", "findPlaylist"})
public class MediaService
  extends AbstractComponent
  implements Component
{
  public static final String COMMAND = "command";
  public static final String DEFAULT_MEDIA_DELIVERY = "http";
  public static final String DEFAULT_QUERY_BASE_URL = "http://api.brightcove.com/services/library";
  public static final String FIND_PLAYLIST_BY_ID = "find_playlist_by_id";
  public static final String FIND_PLAYLIST_BY_REFERENCE_ID = "find_playlist_by_reference_id";
  public static final String FIND_VIDEO_BY_ID = "find_video_by_id";
  public static final String FIND_VIDEO_BY_REFERENCE_ID = "find_video_by_reference_id";
  private static final String FLVURL = "FLVURL";
  public static final String HLS_MEDIA_DELIVERY = "http_ios";
  public static final String ID = "id";
  public static final String KK_QUERY_BASE_URL = "http://api.brightcove.co.jp/services/library";
  public static final String MEDIA_DELIVERY = "media_delivery";
  public static final String OPTIONS = "options";
  public static final String PLAYLIST_ID = "playlist_id";
  public static final String REFERENCE_ID = "reference_id";
  public static final String TAG = MediaService.class.getSimpleName();
  public static final String TOKEN = "token";
  public static final String VIDEO_FIELDS = "video_fields";
  public static final String VIDEO_ID = "video_id";
  private MediaService.OnFindMediaListener findMediaListener;
  private String queryBaseURL;
  private String readToken;
  
  public MediaService(EventEmitter paramEventEmitter, String paramString)
  {
    this(paramEventEmitter, paramString, null);
  }
  
  public MediaService(EventEmitter paramEventEmitter, String paramString1, String paramString2)
  {
    super(paramEventEmitter, MediaService.class);
    if ((paramString1 == null) || (paramString1.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("readTokenRequired"));
    }
    paramEventEmitter = paramString2;
    if (paramString2 == null) {
      paramEventEmitter = "http://api.brightcove.com/services/library";
    }
    readToken = paramString1;
    queryBaseURL = paramEventEmitter;
    initializeListeners();
  }
  
  public static CuePoint buildCuePointFromJSON(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    paramEventEmitter = null;
    int i = 0;
    if (paramJSONObject.isNull("time"))
    {
      paramList.add(String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] { "time" }));
      return null;
    }
    if (paramJSONObject.isNull("typeEnum"))
    {
      paramList.add(String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] { "typeEnum" }));
      return null;
    }
    paramList = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    if (paramList.hasNext())
    {
      String str = (String)paramList.next();
      if (str.equals("time")) {
        i = paramJSONObject.getInt("time");
      }
      for (;;)
      {
        break;
        if (str.equals("typeEnum")) {
          paramEventEmitter = paramJSONObject.getString("typeEnum");
        } else {
          localHashMap.put(str, buildSerializable(paramJSONObject.get(str)));
        }
      }
    }
    parseJSONProperties(paramJSONObject, localHashMap, Arrays.asList(CuePointFields.DEFAULT_FIELDS));
    return new CuePoint(i, paramEventEmitter, localHashMap);
  }
  
  private static SourceCollection buildHLSSourceCollectionFromURL(JSONObject paramJSONObject, String paramString)
  {
    paramString = paramJSONObject.getString(paramString);
    paramJSONObject = null;
    if (paramString.indexOf(".m3u8") > 0) {
      paramJSONObject = new SourceCollection(new Source(paramString, DeliveryType.HLS), DeliveryType.HLS);
    }
    return paramJSONObject;
  }
  
  public static Playlist buildPlaylistFromJSON(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    if (paramJSONObject == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
    }
    HashMap localHashMap = new HashMap();
    if (!paramJSONObject.isNull("id")) {
      localHashMap.put("id", Long.valueOf(paramJSONObject.getLong("id")));
    }
    if (!paramJSONObject.isNull("referenceId")) {
      localHashMap.put("referenceId", paramJSONObject.getString("referenceId"));
    }
    if (!paramJSONObject.isNull("name")) {
      localHashMap.put("name", paramJSONObject.getString("name"));
    }
    if (!paramJSONObject.isNull("shortDescription")) {
      localHashMap.put("shortDescription", paramJSONObject.getString("shortDescription"));
    }
    if (!paramJSONObject.isNull("thumbnailURL")) {
      localHashMap.put("thumbnailURL", paramJSONObject.getString("thumbnailURL"));
    }
    ArrayList localArrayList = new ArrayList();
    if (!paramJSONObject.isNull("videos"))
    {
      JSONArray localJSONArray = paramJSONObject.getJSONArray("videos");
      int i = 0;
      while (i < localJSONArray.length())
      {
        JSONObject localJSONObject = localJSONArray.getJSONObject(i);
        if (localJSONObject != null) {
          localArrayList.add(buildVideoFromJSON(localJSONObject, paramEventEmitter, paramList));
        }
        i += 1;
      }
    }
    parseJSONProperties(paramJSONObject, localHashMap, Arrays.asList(PlaylistFields.DEFAULT_FIELDS));
    return new Playlist(localHashMap, localArrayList);
  }
  
  private static Serializable buildSerializable(Object paramObject)
  {
    if ((paramObject instanceof Serializable)) {
      return (Serializable)paramObject;
    }
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      HashMap localHashMap = new HashMap();
      Iterator localIterator = ((JSONObject)paramObject).keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localHashMap.put(str, buildSerializable(((JSONObject)paramObject).get(str)));
      }
      return localHashMap;
    }
    return null;
  }
  
  private static SourceCollection buildSourceCollectionFromVideoFullLength(JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject.getJSONObject("videoFullLength");
    paramJSONObject = new HashSet();
    localObject = buildSourceFromJSON((JSONObject)localObject);
    paramJSONObject.add(localObject);
    return new SourceCollection(paramJSONObject, ((Source)localObject).getDeliveryType());
  }
  
  /* Error */
  public static Source buildSourceFromJSON(JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: new 169	java/util/HashMap
    //   3: dup
    //   4: invokespecial 171	java/util/HashMap:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: ldc_w 335
    //   13: invokevirtual 147	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   16: ifne +21 -> 37
    //   19: aload 4
    //   21: ldc_w 335
    //   24: aload_0
    //   25: ldc_w 335
    //   28: invokevirtual 190	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   31: invokeinterface 204 3 0
    //   36: pop
    //   37: aload_0
    //   38: ldc_w 337
    //   41: invokevirtual 147	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   44: ifne +24 -> 68
    //   47: aload 4
    //   49: ldc_w 339
    //   52: aload_0
    //   53: ldc_w 337
    //   56: invokevirtual 258	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   59: invokestatic 264	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   62: invokeinterface 204 3 0
    //   67: pop
    //   68: aload_0
    //   69: ldc_w 341
    //   72: invokevirtual 147	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   75: ifne +24 -> 99
    //   78: aload 4
    //   80: ldc_w 343
    //   83: aload_0
    //   84: ldc_w 341
    //   87: invokevirtual 187	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   90: invokestatic 348	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   93: invokeinterface 204 3 0
    //   98: pop
    //   99: aload_0
    //   100: ldc_w 350
    //   103: invokevirtual 147	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   106: ifne +86 -> 192
    //   109: aload_0
    //   110: ldc_w 350
    //   113: invokevirtual 190	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   116: astore 5
    //   118: aload 4
    //   120: ldc_w 335
    //   123: invokeinterface 353 2 0
    //   128: checkcast 92	java/lang/String
    //   131: astore_3
    //   132: aload_3
    //   133: ifnull +116 -> 249
    //   136: new 355	java/net/URI
    //   139: dup
    //   140: aload_3
    //   141: invokespecial 356	java/net/URI:<init>	(Ljava/lang/String;)V
    //   144: invokevirtual 359	java/net/URI:getScheme	()Ljava/lang/String;
    //   147: astore 6
    //   149: aload 6
    //   151: ldc 19
    //   153: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   156: ifne +16 -> 172
    //   159: aload 6
    //   161: ldc_w 361
    //   164: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   167: istore_2
    //   168: iload_2
    //   169: ifeq +45 -> 214
    //   172: iconst_1
    //   173: istore_1
    //   174: iload_1
    //   175: ifne +79 -> 254
    //   178: aload 4
    //   180: ldc_w 363
    //   183: getstatic 366	com/brightcove/player/media/DeliveryType:UNKNOWN	Lcom/brightcove/player/media/DeliveryType;
    //   186: invokeinterface 204 3 0
    //   191: pop
    //   192: aload_0
    //   193: aload 4
    //   195: getstatic 369	com/brightcove/player/media/SourceFields:DEFAULT_FIELDS	[Ljava/lang/String;
    //   198: invokestatic 216	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   201: invokestatic 220	com/brightcove/player/media/MediaService:parseJSONProperties	(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/List;)V
    //   204: new 238	com/brightcove/player/model/Source
    //   207: dup
    //   208: aload 4
    //   210: invokespecial 372	com/brightcove/player/model/Source:<init>	(Ljava/util/Map;)V
    //   213: areturn
    //   214: iconst_0
    //   215: istore_1
    //   216: goto -42 -> 174
    //   219: astore_3
    //   220: aconst_null
    //   221: astore_3
    //   222: getstatic 81	com/brightcove/player/media/MediaService:TAG	Ljava/lang/String;
    //   225: new 374	java/lang/StringBuilder
    //   228: dup
    //   229: invokespecial 375	java/lang/StringBuilder:<init>	()V
    //   232: ldc_w 377
    //   235: invokevirtual 381	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: aload_3
    //   239: invokevirtual 381	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: invokevirtual 384	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   245: invokestatic 390	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   248: pop
    //   249: iconst_0
    //   250: istore_1
    //   251: goto -77 -> 174
    //   254: aload 5
    //   256: ldc_w 392
    //   259: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   262: ifeq +20 -> 282
    //   265: aload 4
    //   267: ldc_w 363
    //   270: getstatic 394	com/brightcove/player/media/DeliveryType:MP4	Lcom/brightcove/player/media/DeliveryType;
    //   273: invokeinterface 204 3 0
    //   278: pop
    //   279: goto -87 -> 192
    //   282: aload 5
    //   284: ldc_w 396
    //   287: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   290: ifeq +20 -> 310
    //   293: aload 4
    //   295: ldc_w 363
    //   298: getstatic 244	com/brightcove/player/media/DeliveryType:HLS	Lcom/brightcove/player/media/DeliveryType;
    //   301: invokeinterface 204 3 0
    //   306: pop
    //   307: goto -115 -> 192
    //   310: aload 5
    //   312: ldc_w 398
    //   315: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   318: ifeq +20 -> 338
    //   321: aload 4
    //   323: ldc_w 363
    //   326: getstatic 400	com/brightcove/player/media/DeliveryType:FLV	Lcom/brightcove/player/media/DeliveryType;
    //   329: invokeinterface 204 3 0
    //   334: pop
    //   335: goto -143 -> 192
    //   338: aload 5
    //   340: ldc_w 402
    //   343: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   346: ifeq +20 -> 366
    //   349: aload 4
    //   351: ldc_w 363
    //   354: getstatic 404	com/brightcove/player/media/DeliveryType:WVM	Lcom/brightcove/player/media/DeliveryType;
    //   357: invokeinterface 204 3 0
    //   362: pop
    //   363: goto -171 -> 192
    //   366: aload 4
    //   368: ldc_w 363
    //   371: getstatic 366	com/brightcove/player/media/DeliveryType:UNKNOWN	Lcom/brightcove/player/media/DeliveryType;
    //   374: invokeinterface 204 3 0
    //   379: pop
    //   380: goto -188 -> 192
    //   383: astore 6
    //   385: goto -163 -> 222
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	388	0	paramJSONObject	JSONObject
    //   173	78	1	i	int
    //   167	2	2	bool	boolean
    //   131	10	3	str1	String
    //   219	1	3	localURISyntaxException1	URISyntaxException
    //   221	18	3	str2	String
    //   7	360	4	localHashMap	HashMap
    //   116	223	5	str3	String
    //   147	13	6	str4	String
    //   383	1	6	localURISyntaxException2	URISyntaxException
    // Exception table:
    //   from	to	target	type
    //   118	132	219	java/net/URISyntaxException
    //   136	168	383	java/net/URISyntaxException
  }
  
  private static List<CuePoint> buildVideoCuePoints(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    ArrayList localArrayList = null;
    if (!paramJSONObject.isNull("cuePoints"))
    {
      localArrayList = new ArrayList();
      paramJSONObject = paramJSONObject.getJSONArray("cuePoints");
      int i = 0;
      while (i < paramJSONObject.length())
      {
        localArrayList.add(buildCuePointFromJSON(paramJSONObject.getJSONObject(i), paramEventEmitter, paramList));
        i += 1;
      }
    }
    return localArrayList;
  }
  
  public static Video buildVideoFromJSON(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    if (paramJSONObject == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
    }
    Map localMap = buildVideoProperties(paramJSONObject, paramList);
    Set localSet = buildVideoSourceCollections(paramJSONObject);
    paramEventEmitter = buildVideoCuePoints(paramJSONObject, paramEventEmitter, paramList);
    parseJSONProperties(paramJSONObject, localMap, Arrays.asList(VideoFields.DEFAULT_FIELDS));
    if (paramEventEmitter != null) {
      return new Video(localMap, localSet, paramEventEmitter);
    }
    return new Video(localMap, localSet);
  }
  
  private static Map<String, Object> buildVideoProperties(JSONObject paramJSONObject, List<String> paramList)
  {
    HashMap localHashMap = new HashMap();
    if (!paramJSONObject.isNull("accountId")) {
      localHashMap.put("pubId", paramJSONObject.getString("accountId"));
    }
    if (!paramJSONObject.isNull("id")) {
      localHashMap.put("id", Long.valueOf(paramJSONObject.getLong("id")));
    }
    if (!paramJSONObject.isNull("referenceId")) {
      localHashMap.put("referenceId", paramJSONObject.getString("referenceId"));
    }
    if (!paramJSONObject.isNull("name")) {
      localHashMap.put("name", paramJSONObject.getString("name"));
    }
    if (!paramJSONObject.isNull("shortDescription")) {
      localHashMap.put("shortDescription", paramJSONObject.getString("shortDescription"));
    }
    if (!paramJSONObject.isNull("length")) {
      localHashMap.put("duration", Integer.valueOf(paramJSONObject.getInt("length")));
    }
    Object localObject;
    if (!paramJSONObject.isNull("videoStillURL")) {
      localObject = paramJSONObject.getString("videoStillURL");
    }
    try
    {
      localHashMap.put("stillImageUri", new URI((String)localObject));
      if (!paramJSONObject.isNull("customFields"))
      {
        paramJSONObject = paramJSONObject.getJSONObject("customFields");
        paramList = new HashMap();
        if ((paramJSONObject != null) && (paramJSONObject.length() > 0))
        {
          localObject = paramJSONObject.keys();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            if (str != null) {
              paramList.put(str, paramJSONObject.getString(str));
            }
          }
        }
      }
    }
    catch (URISyntaxException localURISyntaxException)
    {
      for (;;)
      {
        paramList.add(String.format(ErrorUtil.getMessage("invalidURI"), new Object[] { localObject }));
      }
      if (paramList.size() > 0) {
        localHashMap.put("customFields", paramList);
      }
    }
    return localHashMap;
  }
  
  private static Set<SourceCollection> buildVideoSourceCollections(JSONObject paramJSONObject)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    Object localObject1;
    if (!paramJSONObject.isNull("HLSURL"))
    {
      localObject1 = buildHLSSourceCollectionFromURL(paramJSONObject, "HLSURL");
      if (localObject1 != null)
      {
        localHashSet1.add(localObject1);
        localHashSet2.add(DeliveryType.HLS);
      }
    }
    Object localObject2 = getRenditionSources(paramJSONObject);
    if (!((Set)localObject2).isEmpty())
    {
      localObject1 = new HashMap();
      localObject2 = ((Set)localObject2).iterator();
      Object localObject3;
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Source)((Iterator)localObject2).next();
        DeliveryType localDeliveryType = ((Source)localObject3).getDeliveryType();
        if (!localHashSet2.contains(localDeliveryType))
        {
          if (((HashMap)localObject1).get(localDeliveryType) == null) {
            ((HashMap)localObject1).put(localDeliveryType, new HashSet());
          }
          ((Set)((HashMap)localObject1).get(localDeliveryType)).add(localObject3);
        }
      }
      localObject2 = ((HashMap)localObject1).keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (DeliveryType)((Iterator)localObject2).next();
        localHashSet1.add(new SourceCollection((Set)((HashMap)localObject1).get(localObject3), (DeliveryType)localObject3));
        localHashSet2.add(localObject3);
      }
    }
    if (!paramJSONObject.isNull("videoFullLength"))
    {
      localObject1 = buildSourceCollectionFromVideoFullLength(paramJSONObject);
      localObject2 = ((SourceCollection)localObject1).getDeliveryType();
      if (!localHashSet2.contains(localObject2))
      {
        localHashSet1.add(localObject1);
        localHashSet2.add(localObject2);
      }
    }
    if ((!localHashSet2.contains(DeliveryType.HLS)) && (!paramJSONObject.isNull("FLVURL")))
    {
      paramJSONObject = buildHLSSourceCollectionFromURL(paramJSONObject, "FLVURL");
      if (paramJSONObject != null) {
        localHashSet1.add(paramJSONObject);
      }
    }
    return localHashSet1;
  }
  
  private static Set<Source> getRenditionSources(JSONObject paramJSONObject)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(getRenditionSources(paramJSONObject, "renditions"));
    localHashSet.addAll(getRenditionSources(paramJSONObject, "WVMRenditions"));
    localHashSet.addAll(getRenditionSources(paramJSONObject, "IOSRenditions"));
    return localHashSet;
  }
  
  private static Set<Source> getRenditionSources(JSONObject paramJSONObject, String paramString)
  {
    HashSet localHashSet = new HashSet();
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject != null)
    {
      int i = 0;
      while (i < paramJSONObject.length())
      {
        localHashSet.add(buildSourceFromJSON(paramJSONObject.getJSONObject(i)));
        i += 1;
      }
    }
    return localHashSet;
  }
  
  private static void parseJSONProperties(JSONObject paramJSONObject, Map<String, Object> paramMap, List<String> paramList)
  {
    if ((paramJSONObject == null) || (paramMap == null)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonAndPropertiesRequired"));
    }
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList();
    }
    paramList = paramJSONObject.keys();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      if ((!StringUtil.isEmpty(str)) && (!paramJSONObject.isNull(str)) && (!((List)localObject).contains(str))) {
        try
        {
          paramMap.put(str, paramJSONObject.getJSONObject(str).toString());
        }
        catch (JSONException localJSONException1)
        {
          try
          {
            paramMap.put(str, paramJSONObject.getJSONArray(str).toString());
          }
          catch (JSONException localJSONException2)
          {
            paramMap.put(str, paramJSONObject.getString(str));
          }
        }
      }
    }
  }
  
  private void respondWithError(Event paramEvent, Exception paramException)
  {
    ArrayList localArrayList = new ArrayList();
    Log.e(TAG, "Got unexpected exception attempting to issue Media API request.", paramException);
    localArrayList.add(String.format(ErrorUtil.getMessage("mediaRequestError"), new Object[] { paramException.getMessage() }));
    properties.put("errors", localArrayList);
    eventEmitter.respond(paramEvent);
  }
  
  protected void initializeListeners()
  {
    findMediaListener = new MediaService.OnFindMediaListener(this, null);
    addListener("findVideo", findMediaListener);
    addListener("findPlaylist", findMediaListener);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.MediaService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */