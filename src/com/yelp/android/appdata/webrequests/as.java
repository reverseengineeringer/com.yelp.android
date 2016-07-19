package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Compliment.ComplimentableItemType;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class as
  extends b<Void, Void, Compliment>
{
  protected Compliment a;
  
  public as(ApiRequest.b<Compliment> paramb, String paramString, Compliment paramCompliment)
  {
    super(ApiRequest.RequestType.POST, paramString, paramb);
    a = paramCompliment;
  }
  
  public Compliment a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return a;
  }
  
  public static final class a
    extends as
  {
    public a(ApiRequest.b<Compliment> paramb, Compliment paramCompliment)
    {
      super("compliment/approve", paramCompliment);
      b("thanx_id", paramCompliment.r());
    }
  }
  
  public static final class b
    extends as
  {
    public b(ApiRequest.b<Compliment> paramb, Compliment paramCompliment)
    {
      super("compliment/delete", paramCompliment);
      b("thanx_id", paramCompliment.r());
    }
  }
  
  public static final class c
    extends as
  {
    public c(ApiRequest.b<Compliment> paramb, Compliment paramCompliment, String paramString)
    {
      super("compliment/send", paramCompliment);
      b("user_id", paramString);
      b("text", paramCompliment.q());
      b("name", paramCompliment.k().name().toLowerCase(Locale.US));
      if ((paramCompliment.j() != null) && (!TextUtils.isEmpty(jmKey))) {
        b(jmKey, paramCompliment.n());
      }
      a = paramCompliment;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */