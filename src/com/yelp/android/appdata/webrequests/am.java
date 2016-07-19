package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class am
  extends b<Void, Void, a>
{
  protected am(ApiRequest.RequestType paramRequestType, String paramString, ApiRequest.b<a> paramb)
  {
    super(paramRequestType, paramString, paramb);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("comments"), Comment.CREATOR);
    if (!paramJSONObject.isNull("check_in")) {}
    for (YelpCheckIn localYelpCheckIn = (YelpCheckIn)YelpCheckIn.CREATOR.parse(paramJSONObject.getJSONObject("check_in"));; localYelpCheckIn = null)
    {
      if (!paramJSONObject.isNull("business")) {}
      for (YelpBusiness localYelpBusiness = (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));; localYelpBusiness = null)
      {
        if (!paramJSONObject.isNull("feedbacks")) {
          localArrayList1 = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), CheckInFeedback.CREATOR);
        }
        return new a(localArrayList2, localYelpCheckIn, localYelpBusiness, localArrayList1);
      }
    }
  }
  
  public static class a
  {
    public final List<Comment> a;
    public final List<CheckInFeedback> b;
    public final YelpCheckIn c;
    public final YelpBusiness d;
    
    public a(List<Comment> paramList, YelpCheckIn paramYelpCheckIn, YelpBusiness paramYelpBusiness, List<CheckInFeedback> paramList1)
    {
      a = paramList;
      c = paramYelpCheckIn;
      d = paramYelpBusiness;
      b = paramList1;
    }
  }
  
  public static class b
    extends am
  {
    public b(ApiRequest.b<am.a> paramb, String paramString, Comment paramComment)
    {
      super("check_in/list_comments", paramb);
      a("check_in_id", paramString);
      if (paramComment != null) {
        a("revision", paramComment.d());
      }
      a("limit", 20);
    }
  }
  
  public static class c
    extends am
  {
    public c(ApiRequest.b<am.a> paramb, YelpCheckIn paramYelpCheckIn, Comment paramComment, String paramString)
    {
      super("check_in/save_comment", paramb);
      b("check_in_id", paramYelpCheckIn.z());
      b("text", paramString);
      if (paramComment != null) {
        b("revision", paramComment.d());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */