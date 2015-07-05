package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class aa
  extends ah<Compliment>
{
  public Compliment a(Parcel paramParcel)
  {
    Compliment localCompliment = new Compliment();
    localCompliment.readFromParcel(paramParcel);
    return localCompliment;
  }
  
  public Compliment a(JSONObject paramJSONObject)
  {
    Compliment localCompliment = new Compliment();
    localCompliment.readFromJson(paramJSONObject);
    return localCompliment;
  }
  
  public Compliment[] a(int paramInt)
  {
    return new Compliment[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */