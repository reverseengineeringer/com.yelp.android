package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bb
  extends JsonParser.DualCreator<LocalVideo>
{
  public LocalVideo a(Parcel paramParcel)
  {
    LocalVideo localLocalVideo = new LocalVideo();
    localLocalVideo.readFromParcel(paramParcel);
    return localLocalVideo;
  }
  
  public LocalVideo a(JSONObject paramJSONObject)
  {
    LocalVideo localLocalVideo = new LocalVideo();
    localLocalVideo.readFromJson(paramJSONObject);
    return localLocalVideo;
  }
  
  public LocalVideo[] a(int paramInt)
  {
    return new LocalVideo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */