package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.util.d;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class ReservationGenericSearchFilter
  extends GenericSearchFilter
{
  public static final a<ReservationGenericSearchFilter> CREATOR = new ReservationGenericSearchFilter.1();
  private ReservationFilter e;
  
  private ReservationGenericSearchFilter() {}
  
  public ReservationGenericSearchFilter(ReservationFilter paramReservationFilter, boolean paramBoolean)
  {
    super("reservation_filter", GenericSearchFilter.FilterType.Reservation, paramBoolean);
    e = paramReservationFilter;
  }
  
  public static ReservationGenericSearchFilter a(ReservationGenericSearchFilter paramReservationGenericSearchFilter, ReservationFilter paramReservationFilter, boolean paramBoolean)
  {
    paramReservationGenericSearchFilter = (ReservationGenericSearchFilter)d.a(paramReservationGenericSearchFilter);
    paramReservationGenericSearchFilter.a(paramReservationFilter);
    paramReservationGenericSearchFilter.a(paramBoolean);
    return paramReservationGenericSearchFilter;
  }
  
  private void a(ReservationFilter paramReservationFilter)
  {
    e = paramReservationFilter;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    e = ((ReservationFilter)paramParcel.readParcelable(ReservationFilter.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (!paramJSONObject.isNull("params")) {
      e = ((ReservationFilter)ReservationFilter.CREATOR.parse(paramJSONObject.getJSONObject("params")));
    }
  }
  
  public JSONObject b()
    throws JSONException
  {
    JSONObject localJSONObject = super.b();
    if (e != null) {
      localJSONObject.put("params", e.a());
    }
    return localJSONObject;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()) || (!super.equals(paramObject))) {
        return false;
      }
      paramObject = (ReservationGenericSearchFilter)paramObject;
      if (f() == null) {
        break;
      }
    } while (f().equals(((ReservationGenericSearchFilter)paramObject).f()));
    while (((ReservationGenericSearchFilter)paramObject).f() != null) {
      return false;
    }
    return true;
  }
  
  public ReservationFilter f()
  {
    return e;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    if (f() != null) {}
    for (int i = f().hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(e, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReservationGenericSearchFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */