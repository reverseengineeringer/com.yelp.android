package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class di
  extends JsonParser.DualCreator<TipFeedback>
{
  public TipFeedback a(Parcel paramParcel)
  {
    TipFeedback localTipFeedback = new TipFeedback();
    localTipFeedback.readFromParcel(paramParcel);
    return localTipFeedback;
  }
  
  public TipFeedback a(JSONObject paramJSONObject)
  {
    TipFeedback localTipFeedback = new TipFeedback();
    localTipFeedback.readFromJson(paramJSONObject);
    return localTipFeedback;
  }
  
  public TipFeedback[] a(int paramInt)
  {
    return new TipFeedback[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */