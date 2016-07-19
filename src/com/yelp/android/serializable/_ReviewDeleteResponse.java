package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _ReviewDeleteResponse
  implements Parcelable
{
  protected YelpBusinessReview a;
  
  public void a(Parcel paramParcel)
  {
    a = ((YelpBusinessReview)paramParcel.readParcelable(YelpBusinessReview.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("review")) {
      a = ((YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("review")));
    }
  }
  
  public YelpBusinessReview b()
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
    paramObject = (_ReviewDeleteResponse)paramObject;
    return new b().a(a, a).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReviewDeleteResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */