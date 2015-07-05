package com.yelp.android.appdata.webrequests;

import android.os.Build.VERSION;
import com.yelp.android.av.g;
import com.yelp.android.serializable.UpdatePrompt;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class n
  extends g<Void, Void, o>
{
  public n(m<o> paramm)
  {
    super(ApiRequest.RequestType.GET, "version/android", paramm);
    addUrlParam("android_api", Build.VERSION.SDK_INT);
  }
  
  public o a(JSONObject paramJSONObject)
  {
    Object localObject1 = Collections.emptyMap();
    Object localObject2 = Collections.emptyMap();
    UpdatePrompt localUpdatePrompt = new UpdatePrompt();
    JSONObject localJSONObject;
    HashMap localHashMap;
    Iterator localIterator;
    if (!paramJSONObject.isNull("experiments"))
    {
      localJSONObject = paramJSONObject.getJSONObject("experiments");
      localHashMap = new HashMap();
      localIterator = localJSONObject.keys();
      for (;;)
      {
        localObject1 = localHashMap;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject1 = (String)localIterator.next();
        localHashMap.put(localObject1, localJSONObject.getString((String)localObject1));
      }
    }
    if (!paramJSONObject.isNull("features"))
    {
      localJSONObject = paramJSONObject.getJSONObject("features");
      localHashMap = new HashMap();
      localIterator = localJSONObject.keys();
      for (;;)
      {
        localObject2 = localHashMap;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject2 = (String)localIterator.next();
        localHashMap.put(localObject2, localJSONObject.getString((String)localObject2));
      }
    }
    if (!paramJSONObject.isNull("available_version")) {
      paramJSONObject = paramJSONObject.getJSONObject("available_version");
    }
    for (paramJSONObject = (UpdatePrompt)UpdatePrompt.CREATOR.parse(paramJSONObject);; paramJSONObject = localUpdatePrompt) {
      return new o((Map)localObject2, (Map)localObject1, paramJSONObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */