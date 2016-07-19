package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _SurveyAnswer
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("title", a);
    }
    if (b != null) {
      localJSONObject.put("text", b);
    }
    if (c != null) {
      localJSONObject.put("answer_identifier", c);
    }
    if (d != null) {
      localJSONObject.put("success_message", d);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("title")) {
      a = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("text")) {
      b = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("answer_identifier")) {
      c = paramJSONObject.optString("answer_identifier");
    }
    if (!paramJSONObject.isNull("success_message")) {
      d = paramJSONObject.optString("success_message");
    }
  }
  
  public String b()
  {
    return d;
  }
  
  public String c()
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
    paramObject = (_SurveyAnswer)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SurveyAnswer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */