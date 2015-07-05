package com.ooyala.android;

import android.util.Log;
import java.net.URL;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AdSpot
{
  public static final boolean REUSABLE = true;
  public static final boolean SINGLE_USE = false;
  protected PlayerAPIClient _api;
  protected URL _clickURL = null;
  protected final boolean _isReusable;
  protected int _time = -1;
  protected List<URL> _trackingURLs = null;
  
  public AdSpot()
  {
    _isReusable = true;
  }
  
  AdSpot(int paramInt, URL paramURL, List<URL> paramList)
  {
    _time = paramInt;
    _clickURL = paramURL;
    _trackingURLs = paramList;
    _isReusable = true;
  }
  
  AdSpot(JSONObject paramJSONObject, PlayerAPIClient paramPlayerAPIClient)
  {
    _api = paramPlayerAPIClient;
    _isReusable = true;
    update(paramJSONObject);
  }
  
  public AdSpot(boolean paramBoolean)
  {
    _isReusable = paramBoolean;
  }
  
  static AdSpot create(JSONObject paramJSONObject, PlayerAPIClient paramPlayerAPIClient)
  {
    if ((paramJSONObject == null) || (paramJSONObject.isNull("type"))) {}
    String str;
    for (;;)
    {
      return null;
      try
      {
        str = paramJSONObject.getString("type");
        if (str != null) {
          if (str.equals("ooyala")) {
            return new OoyalaAdSpot(paramJSONObject, paramPlayerAPIClient);
          }
        }
      }
      catch (JSONException paramJSONObject)
      {
        Log.d(AdSpot.class.getName(), "Ad create failed due to JSONException: " + paramJSONObject);
        return null;
      }
    }
    if (str.equals("vast")) {
      return new VASTAdSpot(paramJSONObject, paramPlayerAPIClient);
    }
    Log.d(AdSpot.class.getName(), "Unknown ad type: " + str);
    return null;
  }
  
  public abstract boolean fetchPlaybackInfo();
  
  public URL getClickURL()
  {
    return _clickURL;
  }
  
  public int getTime()
  {
    return _time;
  }
  
  public List<URL> getTrackingURLs()
  {
    return _trackingURLs;
  }
  
  public boolean isReusable()
  {
    return _isReusable;
  }
  
  void setAPI(PlayerAPIClient paramPlayerAPIClient)
  {
    _api = paramPlayerAPIClient;
  }
  
  /* Error */
  Constants.ReturnState update(JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_1
    //   3: ifnonnull +7 -> 10
    //   6: getstatic 125	com/ooyala/android/Constants$ReturnState:STATE_FAIL	Lcom/ooyala/android/Constants$ReturnState;
    //   9: areturn
    //   10: aload_1
    //   11: ldc 127
    //   13: invokevirtual 55	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   16: ifne +117 -> 133
    //   19: aload_0
    //   20: aload_1
    //   21: ldc 127
    //   23: invokevirtual 131	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   26: putfield 25	com/ooyala/android/AdSpot:_time	I
    //   29: aload_1
    //   30: ldc -123
    //   32: invokevirtual 55	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   35: istore 4
    //   37: iload 4
    //   39: ifne +20 -> 59
    //   42: aload_0
    //   43: new 135	java/net/URL
    //   46: dup
    //   47: aload_1
    //   48: ldc -123
    //   50: invokevirtual 59	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   53: invokespecial 138	java/net/URL:<init>	(Ljava/lang/String;)V
    //   56: putfield 27	com/ooyala/android/AdSpot:_clickURL	Ljava/net/URL;
    //   59: aload_1
    //   60: ldc -116
    //   62: invokevirtual 55	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   65: ifne +203 -> 268
    //   68: aload_1
    //   69: ldc -116
    //   71: invokevirtual 144	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   74: astore 5
    //   76: aload_0
    //   77: new 146	java/util/ArrayList
    //   80: dup
    //   81: aload 5
    //   83: invokevirtual 151	org/json/JSONArray:length	()I
    //   86: invokespecial 154	java/util/ArrayList:<init>	(I)V
    //   89: putfield 29	com/ooyala/android/AdSpot:_trackingURLs	Ljava/util/List;
    //   92: aload 5
    //   94: invokevirtual 151	org/json/JSONArray:length	()I
    //   97: istore_3
    //   98: iload_2
    //   99: iload_3
    //   100: if_icmpge +168 -> 268
    //   103: aload_0
    //   104: getfield 29	com/ooyala/android/AdSpot:_trackingURLs	Ljava/util/List;
    //   107: new 135	java/net/URL
    //   110: dup
    //   111: aload 5
    //   113: iload_2
    //   114: invokevirtual 157	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   117: invokespecial 138	java/net/URL:<init>	(Ljava/lang/String;)V
    //   120: invokeinterface 162 2 0
    //   125: pop
    //   126: iload_2
    //   127: iconst_1
    //   128: iadd
    //   129: istore_2
    //   130: goto -38 -> 92
    //   133: aload_0
    //   134: getfield 25	com/ooyala/android/AdSpot:_time	I
    //   137: ifge -108 -> 29
    //   140: aload_0
    //   141: iconst_0
    //   142: putfield 25	com/ooyala/android/AdSpot:_time	I
    //   145: goto -116 -> 29
    //   148: astore_1
    //   149: aload_0
    //   150: invokevirtual 166	java/lang/Object:getClass	()Ljava/lang/Class;
    //   153: invokevirtual 77	java/lang/Class:getName	()Ljava/lang/String;
    //   156: new 79	java/lang/StringBuilder
    //   159: dup
    //   160: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   163: ldc -88
    //   165: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload_1
    //   169: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: invokestatic 98	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   178: pop
    //   179: getstatic 125	com/ooyala/android/Constants$ReturnState:STATE_FAIL	Lcom/ooyala/android/Constants$ReturnState;
    //   182: areturn
    //   183: astore 5
    //   185: aload_0
    //   186: invokevirtual 166	java/lang/Object:getClass	()Ljava/lang/Class;
    //   189: invokevirtual 77	java/lang/Class:getName	()Ljava/lang/String;
    //   192: new 79	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   199: ldc -86
    //   201: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload_1
    //   205: ldc -123
    //   207: invokevirtual 59	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   210: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 98	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   219: pop
    //   220: aload_0
    //   221: aconst_null
    //   222: putfield 27	com/ooyala/android/AdSpot:_clickURL	Ljava/net/URL;
    //   225: goto -166 -> 59
    //   228: astore 6
    //   230: aload_0
    //   231: invokevirtual 166	java/lang/Object:getClass	()Ljava/lang/Class;
    //   234: invokevirtual 77	java/lang/Class:getName	()Ljava/lang/String;
    //   237: new 79	java/lang/StringBuilder
    //   240: dup
    //   241: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   244: ldc -84
    //   246: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: aload_1
    //   250: ldc -116
    //   252: invokevirtual 59	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   255: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: invokestatic 98	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   264: pop
    //   265: goto -139 -> 126
    //   268: getstatic 175	com/ooyala/android/Constants$ReturnState:STATE_MATCHED	Lcom/ooyala/android/Constants$ReturnState;
    //   271: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	AdSpot
    //   0	272	1	paramJSONObject	JSONObject
    //   1	129	2	i	int
    //   97	4	3	j	int
    //   35	3	4	bool	boolean
    //   74	38	5	localJSONArray	org.json.JSONArray
    //   183	1	5	localMalformedURLException1	java.net.MalformedURLException
    //   228	1	6	localMalformedURLException2	java.net.MalformedURLException
    // Exception table:
    //   from	to	target	type
    //   10	29	148	org/json/JSONException
    //   29	37	148	org/json/JSONException
    //   42	59	148	org/json/JSONException
    //   59	92	148	org/json/JSONException
    //   92	98	148	org/json/JSONException
    //   103	126	148	org/json/JSONException
    //   133	145	148	org/json/JSONException
    //   185	225	148	org/json/JSONException
    //   230	265	148	org/json/JSONException
    //   42	59	183	java/net/MalformedURLException
    //   103	126	228	java/net/MalformedURLException
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AdSpot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */