package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cp
  extends JsonParser.DualCreator<ReviewDraft>
{
  public ReviewDraft a(Parcel paramParcel)
  {
    ReviewDraft localReviewDraft = new ReviewDraft();
    localReviewDraft.readFromParcel(paramParcel);
    return localReviewDraft;
  }
  
  public ReviewDraft a(JSONObject paramJSONObject)
  {
    ReviewDraft localReviewDraft = new ReviewDraft();
    localReviewDraft.readFromJson(paramJSONObject);
    return localReviewDraft;
  }
  
  public ReviewDraft[] a(int paramInt)
  {
    return new ReviewDraft[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */