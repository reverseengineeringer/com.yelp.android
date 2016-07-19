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

abstract class _PhotoAdsResponse
  implements Parcelable
{
  protected List<BusinessLocalAd> a;
  protected List<YelpBusiness> b;
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(BusinessLocalAd.class.getClassLoader());
    b = paramParcel.readArrayList(YelpBusiness.class.getClassLoader());
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("local_ads")) {}
    for (a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("local_ads"), BusinessLocalAd.CREATOR); !paramJSONObject.isNull("ad_businesses"); a = Collections.emptyList())
    {
      b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("ad_businesses"), YelpBusiness.CREATOR);
      return;
    }
    b = Collections.emptyList();
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
    paramObject = (_PhotoAdsResponse)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeList(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PhotoAdsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */