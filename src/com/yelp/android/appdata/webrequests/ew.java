package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.MenuItem;
import com.yelp.android.serializable.MoreInfoAction;
import com.yelp.android.serializable.ReviewHighlight.ReviewHighlightType;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class ew
  extends g<String, Void, ex>
{
  public ew(String paramString1, String paramString2, ReviewHighlight.ReviewHighlightType paramReviewHighlightType, String paramString3, int paramInt1, int paramInt2, m<ex> paramm)
  {
    super(ApiRequest.RequestType.GET, "highlight/reviews_v2", paramm);
    addUrlParam("business_id", paramString1);
    addUrlParam("identifier", paramString2);
    addUrlParam("type", paramReviewHighlightType.getTypeString());
    addUrlParam("review_id", paramString3);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
  }
  
  public ex a(JSONObject paramJSONObject)
  {
    MoreInfoAction localMoreInfoAction = null;
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("reviews"), YelpBusinessReview.CREATOR);
    int i = paramJSONObject.getInt("total");
    Object localObject = paramJSONObject.optJSONObject("menu_item");
    if (localObject == null)
    {
      localObject = null;
      if (paramJSONObject.optJSONObject("more_info_action") != null) {
        break label80;
      }
    }
    for (;;)
    {
      return new ex(localArrayList, i, (MenuItem)localObject, localMoreInfoAction, paramJSONObject.getString("title"));
      localObject = (MenuItem)MenuItem.CREATOR.parse((JSONObject)localObject);
      break;
      label80:
      localMoreInfoAction = (MoreInfoAction)MoreInfoAction.CREATOR.parse(paramJSONObject.optJSONObject("more_info_action"));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */