package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.UserIdOverridenTipFeedEntry;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class gz
  extends g<Void, Void, List<BusinessInfoProviderFeedEntry>>
{
  private final User a;
  
  public gz(m<List<BusinessInfoProviderFeedEntry>> paramm, User paramUser, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(ApiRequest.RequestType.GET, "user/quicktips", paramm);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
    addUrlParam("only_first_tips", paramBoolean1);
    addUrlParam("only_tips_of_the_day", paramBoolean2);
    a = paramUser;
    if (paramUser != null) {
      addUrlParam("user_id", a.getId());
    }
  }
  
  public List<BusinessInfoProviderFeedEntry> a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("quicktips"), Tip.CREATOR).iterator();
    if (localIterator.hasNext())
    {
      Tip localTip = (Tip)localIterator.next();
      localTip.setUser(a);
      if (a != null) {}
      for (paramJSONObject = a.getId();; paramJSONObject = null)
      {
        localArrayList.add(new UserIdOverridenTipFeedEntry(paramJSONObject, localTip, this));
        break;
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */