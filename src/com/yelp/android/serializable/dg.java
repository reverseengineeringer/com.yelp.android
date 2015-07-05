package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dg
  extends JsonParser.DualCreator<Tip>
{
  public Tip a(Parcel paramParcel)
  {
    Tip localTip = new Tip();
    localTip.readFromParcel(paramParcel);
    return localTip;
  }
  
  public Tip a(JSONObject paramJSONObject)
  {
    Tip localTip = new Tip();
    localTip.readFromJson(paramJSONObject);
    return localTip;
  }
  
  public Tip[] a(int paramInt)
  {
    return new Tip[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */