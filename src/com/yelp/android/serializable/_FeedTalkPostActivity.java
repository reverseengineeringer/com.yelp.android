package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _FeedTalkPostActivity
  implements Parcelable
{
  protected TalkMessage a;
  protected TalkTopic b;
  protected User c;
  
  public void a(Parcel paramParcel)
  {
    a = ((TalkMessage)paramParcel.readParcelable(TalkMessage.class.getClassLoader()));
    b = ((TalkTopic)paramParcel.readParcelable(TalkTopic.class.getClassLoader()));
    c = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("talk_message")) {
      a = ((TalkMessage)TalkMessage.CREATOR.parse(paramJSONObject.getJSONObject("talk_message")));
    }
    if (!paramJSONObject.isNull("talk_topic")) {
      b = ((TalkTopic)TalkTopic.CREATOR.parse(paramJSONObject.getJSONObject("talk_topic")));
    }
    if (!paramJSONObject.isNull("user")) {
      c = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
  }
  
  public User c()
  {
    return c;
  }
  
  public TalkTopic d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public TalkMessage e()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_FeedTalkPostActivity)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeParcelable(c, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._FeedTalkPostActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */