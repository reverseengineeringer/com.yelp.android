package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class ReservationLeaseResponse
  extends _ReservationLeaseResponse
{
  public static final JsonParser.DualCreator<ReservationLeaseResponse> CREATOR = new ReservationLeaseResponse.1();
  
  public void a(Reservation paramReservation)
  {
    a = paramReservation;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReservationLeaseResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */