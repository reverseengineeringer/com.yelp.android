package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dp
  extends JsonParser.DualCreator<VideoFeedback>
{
  public VideoFeedback a(Parcel paramParcel)
  {
    VideoFeedback localVideoFeedback = new VideoFeedback();
    localVideoFeedback.readFromParcel(paramParcel);
    return localVideoFeedback;
  }
  
  public VideoFeedback a(JSONObject paramJSONObject)
  {
    VideoFeedback localVideoFeedback = new VideoFeedback();
    localVideoFeedback.readFromJson(paramJSONObject);
    return localVideoFeedback;
  }
  
  public VideoFeedback[] a(int paramInt)
  {
    return new VideoFeedback[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */