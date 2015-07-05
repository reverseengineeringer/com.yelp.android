package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class do
  extends JsonParser.DualCreator<Video>
{
  public Video a(Parcel paramParcel)
  {
    Video localVideo = new Video();
    localVideo.readFromParcel(paramParcel);
    return localVideo;
  }
  
  public Video a(JSONObject paramJSONObject)
  {
    Video localVideo = new Video();
    localVideo.readFromJson(paramJSONObject);
    return localVideo;
  }
  
  public Video[] a(int paramInt)
  {
    return new Video[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */