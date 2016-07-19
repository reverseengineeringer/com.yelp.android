package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class fo
  extends b<Void, Void, List<YelpBusinessReview>>
{
  private final User a;
  
  public fo(ApiRequest.b<List<YelpBusinessReview>> paramb, User paramUser, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(ApiRequest.RequestType.GET, "user/reviews", paramb);
    a("offset", paramInt1);
    a("limit", paramInt2);
    a("first_to_reviews_only", paramBoolean);
    if (paramUser != null)
    {
      a("user_id", paramUser.ae());
      a = paramUser;
      return;
    }
    a = AppData.b().q().p();
  }
  
  public List<YelpBusinessReview> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("reviews"), YelpBusinessReview.CREATOR);
    Locale localLocale = AppData.b().g().h();
    Iterator localIterator = paramJSONObject.iterator();
    while (localIterator.hasNext())
    {
      YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)localIterator.next();
      localYelpBusinessReview.a(new Locale(localYelpBusinessReview.I(), localLocale.getCountry()));
      if (a != null) {
        localYelpBusinessReview.a(a);
      }
    }
    return paramJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */