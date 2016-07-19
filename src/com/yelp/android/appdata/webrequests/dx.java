package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.MenuItem;
import com.yelp.android.serializable.MoreInfoAction;
import com.yelp.android.serializable.ReviewHighlight.ReviewHighlightType;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class dx
  extends b<Void, Void, a>
{
  public dx(String paramString1, String paramString2, ReviewHighlight.ReviewHighlightType paramReviewHighlightType, String paramString3, int paramInt1, int paramInt2, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "highlight/reviews_v2", paramb);
    a("business_id", paramString1);
    a("identifier", paramString2);
    a("type", paramReviewHighlightType.getTypeString());
    a("review_id", paramString3);
    a("offset", paramInt1);
    a("limit", paramInt2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
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
      return new a(localArrayList, i, (MenuItem)localObject, localMoreInfoAction, paramJSONObject.getString("title"));
      localObject = (MenuItem)MenuItem.CREATOR.parse((JSONObject)localObject);
      break;
      label80:
      localMoreInfoAction = (MoreInfoAction)MoreInfoAction.CREATOR.parse(paramJSONObject.optJSONObject("more_info_action"));
    }
  }
  
  public static class a
  {
    public final List<YelpBusinessReview> a;
    public final int b;
    public final MenuItem c;
    public final MoreInfoAction d;
    public final String e;
    
    public a(List<YelpBusinessReview> paramList, int paramInt, MenuItem paramMenuItem, MoreInfoAction paramMoreInfoAction, String paramString)
    {
      a = paramList;
      b = paramInt;
      c = paramMenuItem;
      d = paramMoreInfoAction;
      e = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */