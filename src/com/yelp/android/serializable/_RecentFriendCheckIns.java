package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _RecentFriendCheckIns
  implements Parcelable
{
  protected List<RecentCheckIn> a;
  protected int b;
  protected int c;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((RecentCheckIn)localIterator.next()).a());
      }
      localJSONObject.put("users", localJSONArray);
    }
    localJSONObject.put("count", b);
    localJSONObject.put("interval", c);
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(RecentCheckIn.class.getClassLoader());
    b = paramParcel.readInt();
    c = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("users")) {}
    for (a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("users"), RecentCheckIn.CREATOR);; a = Collections.emptyList())
    {
      b = paramJSONObject.optInt("count");
      c = paramJSONObject.optInt("interval");
      return;
    }
  }
  
  public int b()
  {
    return b;
  }
  
  public List<RecentCheckIn> c()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
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
    paramObject = (_RecentFriendCheckIns)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._RecentFriendCheckIns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */