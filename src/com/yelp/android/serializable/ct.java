package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ct
  extends JsonParser.DualCreator<ReviewSuggestion>
{
  public ReviewSuggestion a(Parcel paramParcel)
  {
    ReviewSuggestion localReviewSuggestion = new ReviewSuggestion();
    localReviewSuggestion.readFromParcel(paramParcel);
    return localReviewSuggestion;
  }
  
  public ReviewSuggestion a(JSONObject paramJSONObject)
  {
    ReviewSuggestion localReviewSuggestion = new ReviewSuggestion();
    localReviewSuggestion.readFromJson(paramJSONObject);
    return localReviewSuggestion;
  }
  
  public ReviewSuggestion[] a(int paramInt)
  {
    return new ReviewSuggestion[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */