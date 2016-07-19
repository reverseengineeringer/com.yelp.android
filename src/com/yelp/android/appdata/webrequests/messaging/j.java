package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class j
  extends b<Void, Void, a>
{
  public j(Set<String> paramSet, String paramString1, String paramString2, String paramString3, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.POST, "business/message/save_bulk_quote/v2", paramb);
    b("business_ids", paramSet);
    b("message", paramString1);
    b("originating_id", paramString2);
    b("originating_id_type", paramString3);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(paramJSONObject.optString("confirmation_text_main"), paramJSONObject.optString("confirmation_text_sub"));
  }
  
  public static final class a
  {
    public final String a;
    public final String b;
    
    public a(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */