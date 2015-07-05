package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ac
  extends JsonParser.DualCreator<ConversationMessage>
{
  public ConversationMessage a(Parcel paramParcel)
  {
    ConversationMessage localConversationMessage = new ConversationMessage();
    localConversationMessage.readFromParcel(paramParcel);
    return localConversationMessage;
  }
  
  public ConversationMessage a(JSONObject paramJSONObject)
  {
    ConversationMessage localConversationMessage = new ConversationMessage();
    localConversationMessage.readFromJson(paramJSONObject);
    return localConversationMessage;
  }
  
  public ConversationMessage[] a(int paramInt)
  {
    return new ConversationMessage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */