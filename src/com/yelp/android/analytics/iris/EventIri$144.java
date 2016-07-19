package com.yelp.android.analytics.iris;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class EventIri$144
  implements Parcelable.Creator<EventIri>
{
  public EventIri a(Parcel paramParcel)
  {
    return EventIri.values()[paramParcel.readInt()];
  }
  
  public EventIri[] a(int paramInt)
  {
    return new EventIri[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.iris.EventIri.144
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */