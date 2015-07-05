package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class da
  extends JsonParser.DualCreator<SpamAlert>
{
  public SpamAlert a(Parcel paramParcel)
  {
    SpamAlert localSpamAlert = new SpamAlert();
    localSpamAlert.readFromParcel(paramParcel);
    return localSpamAlert;
  }
  
  public SpamAlert a(JSONObject paramJSONObject)
  {
    SpamAlert localSpamAlert = new SpamAlert();
    localSpamAlert.readFromJson(paramJSONObject);
    return localSpamAlert;
  }
  
  public SpamAlert[] a(int paramInt)
  {
    return new SpamAlert[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */