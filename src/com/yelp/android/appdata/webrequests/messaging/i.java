package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class i
  extends b<Void, Void, a>
{
  public i(ApiRequest.b<a> paramb, String paramString)
  {
    super(ApiRequest.RequestType.GET, "/business/info/messaging_multibiz", paramb);
    a("business_id", paramString);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("businesses"), YelpBusiness.CREATOR), paramJSONObject.getInt("num_default_select"));
  }
  
  public static final class a
  {
    public final List<YelpBusiness> a;
    public final int b;
    
    public a(List<YelpBusiness> paramList, int paramInt)
    {
      a = paramList;
      b = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */