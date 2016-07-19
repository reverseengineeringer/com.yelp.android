package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Compliment;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class at
  extends b<Void, Void, a>
{
  private final boolean a;
  
  protected at(ApiRequest.b<a> paramb, String paramString, boolean paramBoolean)
  {
    super(ApiRequest.RequestType.GET, paramString, paramb);
    a = paramBoolean;
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("compliments"), Compliment.CREATOR);
    if ((!paramJSONObject.isEmpty()) && (a)) {}
    for (boolean bool = true;; bool = false) {
      return new a(paramJSONObject, bool, null);
    }
  }
  
  public static class a
  {
    final List<Compliment> a;
    final boolean b;
    
    private a(List<Compliment> paramList, boolean paramBoolean)
    {
      a = paramList;
      if ((!paramList.isEmpty()) && (paramBoolean)) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        b = paramBoolean;
        return;
      }
    }
    
    public List<Compliment> a()
    {
      return a;
    }
    
    public boolean b()
    {
      return b;
    }
  }
  
  public static final class b
    extends at
  {
    public b(ApiRequest.b<at.a> paramb, String paramString, int paramInt1, int paramInt2)
    {
      super("user/compliments", true);
      super.a("offset", paramInt1);
      super.a("limit", paramInt2);
      if (!TextUtils.isEmpty(paramString)) {
        super.a("user_id", paramString);
      }
    }
  }
  
  public static final class c
    extends at
  {
    public c(ApiRequest.b<at.a> paramb)
    {
      super("user/requests/compliments", false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */