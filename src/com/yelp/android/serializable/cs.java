package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cs
  extends JsonParser.DualCreator<ReviewHighlight>
{
  public ReviewHighlight a(Parcel paramParcel)
  {
    ReviewHighlight localReviewHighlight = new ReviewHighlight();
    localReviewHighlight.readFromParcel(paramParcel);
    return localReviewHighlight;
  }
  
  public ReviewHighlight a(JSONObject paramJSONObject)
  {
    ReviewHighlight localReviewHighlight = new ReviewHighlight();
    localReviewHighlight.readFromJson(paramJSONObject);
    return localReviewHighlight;
  }
  
  public ReviewHighlight[] a(int paramInt)
  {
    return new ReviewHighlight[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */