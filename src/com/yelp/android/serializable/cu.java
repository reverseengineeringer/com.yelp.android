package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cu
  extends JsonParser.DualCreator<ReviewThreshold>
{
  public ReviewThreshold a(Parcel paramParcel)
  {
    ReviewThreshold localReviewThreshold = new ReviewThreshold();
    localReviewThreshold.readFromParcel(paramParcel);
    return localReviewThreshold;
  }
  
  public ReviewThreshold a(JSONObject paramJSONObject)
  {
    ReviewThreshold localReviewThreshold = new ReviewThreshold();
    localReviewThreshold.readFromJson(paramJSONObject);
    return localReviewThreshold;
  }
  
  public ReviewThreshold[] a(int paramInt)
  {
    return new ReviewThreshold[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */