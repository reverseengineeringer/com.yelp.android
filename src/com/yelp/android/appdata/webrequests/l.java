package com.yelp.android.appdata.webrequests;

import android.os.Build.VERSION;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.PhotoAdsConfig;
import com.yelp.android.serializable.UpdatePrompt;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class l
  extends b<Void, Void, a>
{
  public l(ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "version/android", paramb);
    a("android_api", Build.VERSION.SDK_INT);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    Object localObject1 = Collections.emptyMap();
    Object localObject2 = Collections.emptyMap();
    Object localObject3 = new UpdatePrompt();
    int i = 0;
    Object localObject5;
    Object localObject4;
    Object localObject6;
    if (!paramJSONObject.isNull("experiments"))
    {
      localObject5 = paramJSONObject.getJSONObject("experiments");
      localObject4 = new HashMap();
      localObject6 = ((JSONObject)localObject5).keys();
      for (;;)
      {
        localObject1 = localObject4;
        if (!((Iterator)localObject6).hasNext()) {
          break;
        }
        localObject1 = (String)((Iterator)localObject6).next();
        ((Map)localObject4).put(localObject1, ((JSONObject)localObject5).getString((String)localObject1));
      }
    }
    if (!paramJSONObject.isNull("features"))
    {
      localObject4 = paramJSONObject.getJSONObject("features");
      localObject2 = new HashMap();
      localObject5 = ((JSONObject)localObject4).keys();
      while (((Iterator)localObject5).hasNext())
      {
        localObject6 = (String)((Iterator)localObject5).next();
        if (((String)localObject6).equals("photo_ads_config")) {
          AppData.b().a((PhotoAdsConfig)PhotoAdsConfig.CREATOR.parse(((JSONObject)localObject4).getJSONObject((String)localObject6)));
        } else {
          ((Map)localObject2).put(localObject6, ((JSONObject)localObject4).getString((String)localObject6));
        }
      }
      i = ((JSONObject)localObject4).getInt("current_elite_year");
    }
    if (!paramJSONObject.isNull("available_version"))
    {
      localObject3 = paramJSONObject.getJSONObject("available_version");
      localObject3 = (UpdatePrompt)UpdatePrompt.CREATOR.parse((JSONObject)localObject3);
    }
    return new a((Map)localObject2, (Map)localObject1, (UpdatePrompt)localObject3, i, paramJSONObject.optString("dfp_account", null));
  }
  
  public static final class a
  {
    public final Map<String, String> a;
    public final Map<String, String> b;
    public final UpdatePrompt c;
    public final String d;
    public final boolean e;
    public final int f;
    
    public a(Map<String, String> paramMap1, Map<String, String> paramMap2, UpdatePrompt paramUpdatePrompt, int paramInt, String paramString)
    {
      a = paramMap1;
      b = paramMap2;
      c = paramUpdatePrompt;
      e = Boolean.valueOf((String)paramMap1.get("show_privacy_policy_splash")).booleanValue();
      f = paramInt;
      d = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */