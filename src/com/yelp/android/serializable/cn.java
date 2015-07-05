package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cn
  extends JsonParser.DualCreator<Review>
{
  public Review a(Parcel paramParcel)
  {
    Review localReview = new Review();
    localReview.readFromParcel(paramParcel);
    return localReview;
  }
  
  public Review a(JSONObject paramJSONObject)
  {
    Review localReview = new Review();
    localReview.readFromJson(paramJSONObject);
    return localReview;
  }
  
  public Review[] a(int paramInt)
  {
    return new Review[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */