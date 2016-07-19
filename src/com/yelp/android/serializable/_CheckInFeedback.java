package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _CheckInFeedback
  implements Parcelable
{
  protected Date a;
  protected String b;
  protected User c;
  protected YelpBusiness d;
  protected YelpCheckIn e;
  
  protected _CheckInFeedback() {}
  
  protected _CheckInFeedback(Date paramDate, String paramString, User paramUser, YelpBusiness paramYelpBusiness, YelpCheckIn paramYelpCheckIn)
  {
    this();
    a = paramDate;
    b = paramString;
    c = paramUser;
    d = paramYelpBusiness;
    e = paramYelpCheckIn;
  }
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      a = new Date(l);
    }
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    d = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    e = ((YelpCheckIn)paramParcel.readParcelable(YelpCheckIn.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_updated")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time_updated");
    }
    if (!paramJSONObject.isNull("id")) {
      b = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("user")) {
      c = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
    if (!paramJSONObject.isNull("business")) {
      d = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    if (!paramJSONObject.isNull("check_in")) {
      e = ((YelpCheckIn)YelpCheckIn.CREATOR.parse(paramJSONObject.getJSONObject("check_in")));
    }
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
    paramObject = (_CheckInFeedback)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l = -2147483648L;; l = a.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeValue(b);
      paramParcel.writeParcelable(c, 0);
      paramParcel.writeParcelable(d, 0);
      paramParcel.writeParcelable(e, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._CheckInFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */