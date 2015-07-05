package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class de
  extends JsonParser.DualCreator<TalkMessage>
{
  public TalkMessage a(Parcel paramParcel)
  {
    TalkMessage localTalkMessage = new TalkMessage();
    localTalkMessage.readFromParcel(paramParcel);
    return localTalkMessage;
  }
  
  public TalkMessage a(JSONObject paramJSONObject)
  {
    TalkMessage localTalkMessage = new TalkMessage();
    localTalkMessage.readFromJson(paramJSONObject);
    return localTalkMessage;
  }
  
  public TalkMessage[] a(int paramInt)
  {
    return new TalkMessage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */