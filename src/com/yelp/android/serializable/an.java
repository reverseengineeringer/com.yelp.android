package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class an
  extends ah<ExternalCheckIn>
{
  public ExternalCheckIn a(Parcel paramParcel)
  {
    ExternalCheckIn localExternalCheckIn = new ExternalCheckIn();
    localExternalCheckIn.readFromParcel(paramParcel);
    return localExternalCheckIn;
  }
  
  public ExternalCheckIn a(JSONObject paramJSONObject)
  {
    ExternalCheckIn localExternalCheckIn = new ExternalCheckIn();
    localExternalCheckIn.readFromJson(paramJSONObject);
    return localExternalCheckIn;
  }
  
  public ExternalCheckIn[] a(int paramInt)
  {
    return new ExternalCheckIn[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */