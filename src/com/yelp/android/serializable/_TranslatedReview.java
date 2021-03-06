package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _TranslatedReview
  implements Parcelable
{
  protected String a;
  protected String b;
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("translation")) {
      a = paramJSONObject.optString("translation");
    }
    if (!paramJSONObject.isNull("api_provider")) {
      b = paramJSONObject.optString("api_provider");
    }
  }
  
  public JSONObject b()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("translation", a);
    }
    if (b != null) {
      localJSONObject.put("api_provider", b);
    }
    return localJSONObject;
  }
  
  public String c()
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
    paramObject = (_TranslatedReview)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._TranslatedReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */