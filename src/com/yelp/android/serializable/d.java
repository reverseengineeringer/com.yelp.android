package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class d
  extends JsonParser.DualCreator<AlternateBusinessNames>
{
  public AlternateBusinessNames a(Parcel paramParcel)
  {
    AlternateBusinessNames localAlternateBusinessNames = new AlternateBusinessNames();
    localAlternateBusinessNames.readFromParcel(paramParcel);
    return localAlternateBusinessNames;
  }
  
  public AlternateBusinessNames a(JSONObject paramJSONObject)
  {
    AlternateBusinessNames localAlternateBusinessNames = new AlternateBusinessNames();
    localAlternateBusinessNames.readFromJson(paramJSONObject);
    return localAlternateBusinessNames;
  }
  
  public AlternateBusinessNames[] a(int paramInt)
  {
    return new AlternateBusinessNames[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */