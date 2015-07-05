package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ec
  implements Parcelable.Creator<YelpBusinessReview.UserFeedback>
{
  public YelpBusinessReview.UserFeedback a(Parcel paramParcel)
  {
    paramParcel = paramParcel.createBooleanArray();
    return new YelpBusinessReview.UserFeedback(paramParcel[0], paramParcel[1], paramParcel[2]);
  }
  
  public YelpBusinessReview.UserFeedback[] a(int paramInt)
  {
    return new YelpBusinessReview.UserFeedback[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */