package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONException;
import org.json.JSONObject;

public class TalkTopic
  extends _TalkTopic
{
  public static final a<TalkTopic> CREATOR = new TalkTopic.1();
  private boolean p = false;
  
  public static TalkTopic a(Event paramEvent)
  {
    TalkTopic localTalkTopic = new TalkTopic();
    f = paramEvent.C();
    d = paramEvent.v();
    e = paramEvent.B();
    c = paramEvent.G();
    return localTalkTopic;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    p = paramParcel.createBooleanArray()[0];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (c() != null)
    {
      p = User.a(c());
      return;
    }
    p = false;
  }
  
  public boolean a()
  {
    return p;
  }
  
  public int b()
  {
    return f() + e();
  }
  
  public String toString()
  {
    return "id=" + d + ", category=" + f + ", text=" + e;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBooleanArray(new boolean[] { p });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.TalkTopic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */