package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Compliment;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONObject;

public abstract class az
  extends g<Void, Void, bb>
{
  private final boolean a;
  
  protected az(m<bb> paramm, String paramString, boolean paramBoolean)
  {
    super(ApiRequest.RequestType.GET, paramString, paramm);
    a = paramBoolean;
  }
  
  public bb a(JSONObject paramJSONObject)
  {
    paramJSONObject = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("compliments"), Compliment.CREATOR);
    if ((!paramJSONObject.isEmpty()) && (a)) {}
    for (boolean bool = true;; bool = false) {
      return new bb(paramJSONObject, bool, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */