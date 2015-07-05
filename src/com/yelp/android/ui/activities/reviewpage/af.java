package com.yelp.android.ui.activities.reviewpage;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.YelpBusinessReview;

final class af
  implements Parcelable.Creator<LocaleCount>
{
  public LocaleCount a(Parcel paramParcel)
  {
    return new LocaleCount(YelpBusinessReview.readLocaleFromParcel(paramParcel), paramParcel.readInt());
  }
  
  public LocaleCount[] a(int paramInt)
  {
    return new LocaleCount[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */