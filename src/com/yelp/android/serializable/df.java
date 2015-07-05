package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class df
  extends ah<TalkTopic>
{
  public TalkTopic a(Parcel paramParcel)
  {
    TalkTopic localTalkTopic = new TalkTopic();
    localTalkTopic.readFromParcel(paramParcel);
    return localTalkTopic;
  }
  
  public TalkTopic a(JSONObject paramJSONObject)
  {
    TalkTopic localTalkTopic = new TalkTopic();
    localTalkTopic.readFromJson(paramJSONObject);
    return localTalkTopic;
  }
  
  public TalkTopic[] a(int paramInt)
  {
    return new TalkTopic[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */