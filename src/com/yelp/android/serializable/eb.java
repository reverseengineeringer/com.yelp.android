package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class eb
  implements Parcelable.Creator<YelpBusinessReview.ReviewFeedback>
{
  public YelpBusinessReview.ReviewFeedback a(Parcel paramParcel)
  {
    paramParcel = paramParcel.createIntArray();
    return new YelpBusinessReview.ReviewFeedback(paramParcel[0], paramParcel[1], paramParcel[2]);
  }
  
  public YelpBusinessReview.ReviewFeedback[] a(int paramInt)
  {
    return new YelpBusinessReview.ReviewFeedback[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */