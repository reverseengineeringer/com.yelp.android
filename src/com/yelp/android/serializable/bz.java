package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bz
  extends JsonParser.DualCreator<PreviousReview>
{
  public PreviousReview a(Parcel paramParcel)
  {
    PreviousReview localPreviousReview = new PreviousReview();
    localPreviousReview.readFromParcel(paramParcel);
    return localPreviousReview;
  }
  
  public PreviousReview a(JSONObject paramJSONObject)
  {
    PreviousReview localPreviousReview = new PreviousReview();
    localPreviousReview.readFromJson(paramJSONObject);
    return localPreviousReview;
  }
  
  public PreviousReview[] a(int paramInt)
  {
    return new PreviousReview[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */