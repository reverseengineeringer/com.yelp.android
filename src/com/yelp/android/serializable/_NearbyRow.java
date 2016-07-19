package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _NearbyRow
  implements Parcelable
{
  protected List<NearbyResult> a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected int g;
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(NearbyResult.class.getClassLoader());
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("results")) {}
    for (a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("results"), NearbyResult.CREATOR);; a = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("header")) {
        b = paramJSONObject.optString("header");
      }
      if (!paramJSONObject.isNull("end_action")) {
        c = paramJSONObject.optString("end_action");
      }
      if (!paramJSONObject.isNull("end_action_string")) {
        d = paramJSONObject.optString("end_action_string");
      }
      if (!paramJSONObject.isNull("row_id")) {
        e = paramJSONObject.optString("row_id");
      }
      if (!paramJSONObject.isNull("tag")) {
        f = paramJSONObject.optString("tag");
      }
      g = paramJSONObject.optInt("top_result_count");
      return;
    }
  }
  
  public int b()
  {
    return g;
  }
  
  public String c()
  {
    return e;
  }
  
  public String d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<NearbyResult> e()
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
    paramObject = (_NearbyRow)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeInt(g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._NearbyRow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */