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

abstract class _OfferSummary
  implements Parcelable
{
  protected List<String> a;
  protected String b;
  protected int c;
  
  public int a()
  {
    return c;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.createStringArrayList();
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("names")) {}
    for (a = JsonUtil.getStringList(paramJSONObject.optJSONArray("names"));; a = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("business_id")) {
        b = paramJSONObject.optString("business_id");
      }
      c = paramJSONObject.optInt("count");
      return;
    }
  }
  
  public List<String> b()
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
    paramObject = (_OfferSummary)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(a);
    paramParcel.writeValue(b);
    paramParcel.writeInt(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._OfferSummary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */