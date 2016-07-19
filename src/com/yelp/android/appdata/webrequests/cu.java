package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.OfferSummary;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.a;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class cu
  extends b<Void, Void, a>
{
  protected cu(ApiRequest.RequestType paramRequestType, String paramString, ApiRequest.b<a> paramb, int paramInt)
  {
    super(paramRequestType, paramString, paramb);
    a("offset", paramInt);
    if (paramInt == 0) {
      a("summary", 1);
    }
  }
  
  public cu(ApiRequest.b<a> paramb, int paramInt)
  {
    this(ApiRequest.RequestType.GET, "check_ins", paramb, paramInt);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    HashMap localHashMap = YelpBusiness.b(paramJSONObject.getJSONArray("businesses"), i_(), BusinessSearchRequest.FormatMode.FULL);
    int i = paramJSONObject.optInt("weekly_check_in_rank", -1);
    int j = paramJSONObject.optInt("friend_check_in_rank", -1);
    int k = paramJSONObject.optInt("friend_active_count", 0);
    OfferSummary localOfferSummary = null;
    if (!paramJSONObject.isNull("check_in_offer_summary")) {
      localOfferSummary = (OfferSummary)OfferSummary.CREATOR.parse(paramJSONObject.getJSONObject("check_in_offer_summary"));
    }
    return new a(YelpCheckIn.a(paramJSONObject.getJSONArray("check_ins"), localHashMap), localOfferSummary, i, j, k);
  }
  
  public static final class a
  {
    public final int a;
    public final int b;
    public final int c;
    public final OfferSummary d;
    public final List<YelpCheckIn> e;
    
    public a(List<YelpCheckIn> paramList, OfferSummary paramOfferSummary, int paramInt1, int paramInt2, int paramInt3)
    {
      e = paramList;
      d = paramOfferSummary;
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */