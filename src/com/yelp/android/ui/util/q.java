package com.yelp.android.ui.util;

import android.os.Bundle;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest.Builder;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.yelp.android.appdata.Features;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class q
{
  private static String a;
  
  public static PublisherAdRequest a(JSONObject paramJSONObject)
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.get(str);
      if ((localObject instanceof String)) {
        localBundle.putString(str, (String)localObject);
      } else if ((localObject instanceof JSONArray)) {
        localBundle.putString(str, ((JSONArray)localObject).join(",").replace("\"", ""));
      }
    }
    if ((a != null) && (Features.dfp_advertising_hash.isEnabled())) {
      localBundle.putString("adid", a);
    }
    return new PublisherAdRequest.Builder().addNetworkExtras(new AdMobExtras(localBundle)).build();
  }
  
  public static void a()
  {
    new r().execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */