package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bt
  extends JsonParser.DualCreator<Photo>
{
  public Photo a(Parcel paramParcel)
  {
    Photo localPhoto = new Photo();
    localPhoto.readFromParcel(paramParcel);
    return localPhoto;
  }
  
  public Photo a(JSONObject paramJSONObject)
  {
    Photo localPhoto = new Photo();
    localPhoto.readFromJson(paramJSONObject);
    return localPhoto;
  }
  
  public Photo[] a(int paramInt)
  {
    return new Photo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */