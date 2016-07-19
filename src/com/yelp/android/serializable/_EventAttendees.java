package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _EventAttendees
  implements Parcelable
{
  protected List<String> a;
  protected List<String> b;
  protected List<User> c;
  protected String d;
  protected int[] e;
  
  protected _EventAttendees() {}
  
  protected _EventAttendees(List<String> paramList1, List<String> paramList2, List<User> paramList, String paramString, int[] paramArrayOfInt)
  {
    this();
    a = paramList1;
    b = paramList2;
    c = paramList;
    d = paramString;
    e = paramArrayOfInt;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.createStringArrayList();
    b = paramParcel.createStringArrayList();
    c = paramParcel.readArrayList(User.class.getClassLoader());
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("attendee_ids"))
    {
      a = JsonUtil.getStringList(paramJSONObject.optJSONArray("attendee_ids"));
      if (paramJSONObject.isNull("section_names")) {
        break label151;
      }
      b = JsonUtil.getStringList(paramJSONObject.optJSONArray("section_names"));
      label44:
      if (paramJSONObject.isNull("attendees")) {
        break label161;
      }
    }
    label151:
    label161:
    for (c = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("attendees"), User.CREATOR);; c = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("attendees_text")) {
        d = paramJSONObject.optString("attendees_text");
      }
      if (paramJSONObject.isNull("section_counts")) {
        return;
      }
      paramJSONObject = paramJSONObject.getJSONArray("section_counts");
      int j = paramJSONObject.length();
      e = new int[j];
      int i = 0;
      while (i < j)
      {
        e[i] = paramJSONObject.getInt(i);
        i += 1;
      }
      a = Collections.emptyList();
      break;
      b = Collections.emptyList();
      break label44;
    }
  }
  
  public int[] a()
  {
    return e;
  }
  
  public String b()
  {
    return d;
  }
  
  public List<User> c()
  {
    return c;
  }
  
  public List<String> d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<String> e()
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
    paramObject = (_EventAttendees)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(a);
    paramParcel.writeStringList(b);
    paramParcel.writeList(c);
    paramParcel.writeValue(d);
    paramParcel.writeIntArray(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._EventAttendees
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */