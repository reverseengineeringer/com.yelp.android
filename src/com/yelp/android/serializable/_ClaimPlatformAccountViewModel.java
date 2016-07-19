package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _ClaimPlatformAccountViewModel
  implements Parcelable
{
  protected PlatformConfirmation a;
  protected boolean b;
  protected boolean c;
  
  public void a(Parcel paramParcel)
  {
    a = ((PlatformConfirmation)paramParcel.readParcelable(PlatformConfirmation.class.getClassLoader()));
    paramParcel = paramParcel.createBooleanArray();
    b = paramParcel[0];
    c = paramParcel[1];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("platform_confirmation")) {
      a = ((PlatformConfirmation)PlatformConfirmation.CREATOR.parse(paramJSONObject.getJSONObject("platform_confirmation")));
    }
    b = paramJSONObject.optBoolean("hidden_field_have_been_shown");
    c = paramJSONObject.optBoolean("has_retrieved_user_info");
  }
  
  public boolean a()
  {
    return c;
  }
  
  public PlatformConfirmation b()
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
    paramObject = (_ClaimPlatformAccountViewModel)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeBooleanArray(new boolean[] { b, c });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ClaimPlatformAccountViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */