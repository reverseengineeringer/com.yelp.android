package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dj
  extends JsonParser.DualCreator<UpdatePrompt>
{
  public UpdatePrompt a(Parcel paramParcel)
  {
    UpdatePrompt localUpdatePrompt = new UpdatePrompt();
    localUpdatePrompt.readFromParcel(paramParcel);
    return localUpdatePrompt;
  }
  
  public UpdatePrompt a(JSONObject paramJSONObject)
  {
    UpdatePrompt localUpdatePrompt = new UpdatePrompt();
    localUpdatePrompt.readFromJson(paramJSONObject);
    return localUpdatePrompt;
  }
  
  public UpdatePrompt[] a(int paramInt)
  {
    return new UpdatePrompt[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */