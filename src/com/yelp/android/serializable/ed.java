package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ed
  extends JsonParser.DualCreator<YelpBusinessReviewInsight>
{
  public YelpBusinessReviewInsight a(Parcel paramParcel)
  {
    YelpBusinessReviewInsight localYelpBusinessReviewInsight = new YelpBusinessReviewInsight();
    localYelpBusinessReviewInsight.readFromParcel(paramParcel);
    return localYelpBusinessReviewInsight;
  }
  
  public YelpBusinessReviewInsight a(JSONObject paramJSONObject)
  {
    YelpBusinessReviewInsight localYelpBusinessReviewInsight = new YelpBusinessReviewInsight();
    localYelpBusinessReviewInsight.readFromJson(paramJSONObject);
    return localYelpBusinessReviewInsight;
  }
  
  public YelpBusinessReviewInsight[] a(int paramInt)
  {
    return new YelpBusinessReviewInsight[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */