package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.av.g;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

public class gy
  extends g<Void, Void, List<BusinessInfoProviderFeedEntry>>
{
  private final User a;
  
  public gy(m<List<BusinessInfoProviderFeedEntry>> paramm, User paramUser, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(ApiRequest.RequestType.GET, "user/reviews", paramm);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
    addUrlParam("first_to_reviews_only", paramBoolean);
    if (paramUser != null)
    {
      addUrlParam("user_id", paramUser.getId());
      a = paramUser;
      return;
    }
    a = AppData.b().m().s();
  }
  
  public List<BusinessInfoProviderFeedEntry> a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    Locale localLocale = AppData.b().g().h();
    Iterator localIterator = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("reviews"), YelpBusinessReview.CREATOR).iterator();
    if (localIterator.hasNext())
    {
      paramJSONObject = (YelpBusinessReview)localIterator.next();
      paramJSONObject.setLocale(new Locale(paramJSONObject.getLanguage(), localLocale.getCountry()));
      ReviewFeedEntry localReviewFeedEntry = new ReviewFeedEntry(paramJSONObject, this);
      if (localReviewFeedEntry.getUser() == null) {}
      for (paramJSONObject = a;; paramJSONObject = localReviewFeedEntry.getUser())
      {
        if (paramJSONObject != null) {
          localReviewFeedEntry.getInfoProvider().populateDataFromUser(paramJSONObject);
        }
        localArrayList.add(localReviewFeedEntry);
        break;
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */