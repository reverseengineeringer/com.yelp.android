package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _LocalVideo
  implements Parcelable
{
  protected String a;
  protected String b;
  protected int c;
  protected int d;
  protected int e;
  
  protected _LocalVideo() {}
  
  protected _LocalVideo(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    this();
    a = paramString1;
    b = paramString2;
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
  }
  
  public int a()
  {
    return e;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = paramParcel.readInt();
    d = paramParcel.readInt();
    e = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("file_path")) {
      a = paramJSONObject.optString("file_path");
    }
    if (!paramJSONObject.isNull("business_id")) {
      b = paramJSONObject.optString("business_id");
    }
    c = paramJSONObject.optInt("duration");
    d = paramJSONObject.optInt("width");
    e = paramJSONObject.optInt("height");
  }
  
  public int b()
  {
    return d;
  }
  
  public int c()
  {
    return c;
  }
  
  public String d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
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
    paramObject = (_LocalVideo)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeInt(c);
    paramParcel.writeInt(d);
    paramParcel.writeInt(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._LocalVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */