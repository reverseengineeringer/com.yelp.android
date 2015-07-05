package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.serializable.ReviewDraftFeedEntry;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class go
  extends g<Void, Void, List<ReviewDraftFeedEntry>>
{
  public go(m<List<ReviewDraftFeedEntry>> paramm, int paramInt1, int paramInt2)
  {
    super(ApiRequest.RequestType.GET, "user/reviews/drafts", paramm);
    addUrlParam("limit", paramInt1);
    addUrlParam("offset", paramInt2);
  }
  
  public List<ReviewDraftFeedEntry> a(JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject.getJSONArray("drafts");
    paramJSONObject = new ArrayList();
    localObject = JsonUtil.parseJsonList((JSONArray)localObject, ReviewDraft.CREATOR).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramJSONObject.add(new ReviewDraftFeedEntry((ReviewDraft)((Iterator)localObject).next()));
    }
    return paramJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */