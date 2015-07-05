package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public abstract class am
  extends g<Void, Void, an>
{
  protected am(ApiRequest.RequestType paramRequestType, String paramString, m<an> paramm)
  {
    super(paramRequestType, paramString, paramm);
  }
  
  public an a(JSONObject paramJSONObject)
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
        return new an(localArrayList2, localYelpCheckIn, localYelpBusiness, localArrayList1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */