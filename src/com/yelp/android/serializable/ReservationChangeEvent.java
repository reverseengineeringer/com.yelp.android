package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class ReservationChangeEvent
  extends _ReservationChangeEvent
{
  public static final JsonParser.DualCreator<ReservationChangeEvent> CREATOR = new ReservationChangeEvent.1();
  
  public ReservationChangeEvent() {}
  
  public ReservationChangeEvent(Reservation paramReservation, YelpBusiness paramYelpBusiness)
  {
    a = paramReservation;
    b = paramYelpBusiness;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReservationChangeEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */