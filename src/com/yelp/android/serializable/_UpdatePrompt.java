package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _UpdatePrompt
  implements Parcelable
{
  protected String a;
  protected int b;
  
  public int a()
  {
    return b;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("message")) {
      a = paramJSONObject.optString("message");
    }
    b = paramJSONObject.optInt("app_launches_between_update_prompts");
  }
  
  public String b()
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
    paramObject = (_UpdatePrompt)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._UpdatePrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */