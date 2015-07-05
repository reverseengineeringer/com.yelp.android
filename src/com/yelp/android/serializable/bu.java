package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bu
  extends JsonParser.DualCreator<PhotoFeedback>
{
  public PhotoFeedback a(Parcel paramParcel)
  {
    PhotoFeedback localPhotoFeedback = new PhotoFeedback();
    localPhotoFeedback.readFromParcel(paramParcel);
    return localPhotoFeedback;
  }
  
  public PhotoFeedback a(JSONObject paramJSONObject)
  {
    PhotoFeedback localPhotoFeedback = new PhotoFeedback();
    localPhotoFeedback.readFromJson(paramJSONObject);
    return localPhotoFeedback;
  }
  
  public PhotoFeedback[] a(int paramInt)
  {
    return new PhotoFeedback[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */