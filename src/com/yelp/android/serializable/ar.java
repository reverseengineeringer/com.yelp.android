package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;

final class ar
  extends JsonParser.DualCreator<Feedback>
{
  public Feedback a(Parcel paramParcel)
  {
    Feedback localFeedback = new Feedback();
    localFeedback.readFromParcel(paramParcel);
    return localFeedback;
  }
  
  public Feedback[] a(int paramInt)
  {
    return new Feedback[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */