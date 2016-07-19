package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _MediaCategory
  implements Parcelable
{
  protected ArrayList<Photo> a;
  protected ArrayList<Video> b;
  protected String c;
  protected String d;
  protected int e;
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(Photo.class.getClassLoader());
    b = paramParcel.readArrayList(Video.class.getClassLoader());
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("photos"))
    {
      a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);
      if (paramJSONObject.isNull("videos")) {
        break label113;
      }
    }
    label113:
    for (b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("videos"), Video.CREATOR);; b = new ArrayList())
    {
      if (!paramJSONObject.isNull("name")) {
        c = paramJSONObject.optString("name");
      }
      if (!paramJSONObject.isNull("localized_name")) {
        d = paramJSONObject.optString("localized_name");
      }
      e = paramJSONObject.optInt("total");
      return;
      a = new ArrayList();
      break;
    }
  }
  
  public int c()
  {
    return e;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return c;
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
    paramObject = (_MediaCategory)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public ArrayList<Video> f()
  {
    return b;
  }
  
  public ArrayList<Photo> g()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeList(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeInt(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._MediaCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */