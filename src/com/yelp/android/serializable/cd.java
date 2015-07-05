package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cd
  extends az<RankLocation>
{
  public final RankLocation a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    if (!paramJSONObject.isNull("business")) {}
    for (YelpBusiness localYelpBusiness = (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));; localYelpBusiness = null) {
      return new RankLocation(paramJSONObject.optString("location_id", null), paramJSONObject.optString("location_name", null), paramJSONObject.optInt("top_user_count", 0), RankTitle.Rank.rankForString(paramJSONObject.optString("title", null)), localYelpBusiness);
    }
  }
  
  public final RankLocation[] a(int paramInt)
  {
    return new RankLocation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */