package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class ea
  extends ah<YelpBusinessReview>
{
  public YelpBusinessReview a(Parcel paramParcel)
  {
    YelpBusinessReview localYelpBusinessReview = new YelpBusinessReview();
    localYelpBusinessReview.readFromParcel(paramParcel);
    return localYelpBusinessReview;
  }
  
  public YelpBusinessReview a(JSONObject paramJSONObject)
  {
    YelpBusinessReview localYelpBusinessReview = new YelpBusinessReview();
    localYelpBusinessReview.readFromJson(paramJSONObject);
    return localYelpBusinessReview;
  }
  
  public YelpBusinessReview[] a(int paramInt)
  {
    return new YelpBusinessReview[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */