package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ab
  extends JsonParser.DualCreator<Conversation>
{
  public Conversation a(Parcel paramParcel)
  {
    Conversation localConversation = new Conversation();
    localConversation.readFromParcel(paramParcel);
    return localConversation;
  }
  
  public Conversation a(JSONObject paramJSONObject)
  {
    Conversation localConversation = new Conversation();
    localConversation.readFromJson(paramJSONObject);
    return localConversation;
  }
  
  public Conversation[] a(int paramInt)
  {
    return new Conversation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */