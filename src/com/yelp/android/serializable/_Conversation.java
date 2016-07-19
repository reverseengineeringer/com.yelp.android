package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Conversation
  implements Parcelable
{
  protected BusinessUser a;
  protected Date b;
  protected List<ConversationMessage> c;
  protected List<UserTiny> d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected boolean j;
  
  public void a(Parcel paramParcel)
  {
    a = ((BusinessUser)paramParcel.readParcelable(BusinessUser.class.getClassLoader()));
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      b = new Date(l);
    }
    c = paramParcel.readArrayList(ConversationMessage.class.getClassLoader());
    d = paramParcel.readArrayList(UserTiny.class.getClassLoader());
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = paramParcel.createBooleanArray()[0];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("biz_user")) {
      a = ((BusinessUser)BusinessUser.CREATOR.parse(paramJSONObject.getJSONObject("biz_user")));
    }
    if (!paramJSONObject.isNull("time_created")) {
      b = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("latest_messages"))
    {
      c = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("latest_messages"), ConversationMessage.CREATOR);
      if (paramJSONObject.isNull("users")) {
        break label213;
      }
    }
    label213:
    for (d = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("users"), UserTiny.CREATOR);; d = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("id")) {
        e = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("subject")) {
        f = paramJSONObject.optString("subject");
      }
      if (!paramJSONObject.isNull("review_id")) {
        g = paramJSONObject.optString("review_id");
      }
      if (!paramJSONObject.isNull("business_id")) {
        h = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("subject_in_conversation_list")) {
        i = paramJSONObject.optString("subject_in_conversation_list");
      }
      j = paramJSONObject.optBoolean("is_read");
      return;
      c = Collections.emptyList();
      break;
    }
  }
  
  public boolean c()
  {
    return j;
  }
  
  public String d()
  {
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return h;
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
    paramObject = (_Conversation)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a();
  }
  
  public String f()
  {
    return g;
  }
  
  public String g()
  {
    return f;
  }
  
  public String h()
  {
    return e;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a();
  }
  
  public List<UserTiny> i()
  {
    return d;
  }
  
  public List<ConversationMessage> j()
  {
    return c;
  }
  
  public BusinessUser k()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    if (b == null) {}
    for (long l = -2147483648L;; l = b.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeList(c);
      paramParcel.writeList(d);
      paramParcel.writeValue(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeBooleanArray(new boolean[] { j });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Conversation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */