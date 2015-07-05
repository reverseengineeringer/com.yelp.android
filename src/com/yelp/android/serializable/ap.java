package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ap
  implements Parcelable.Creator<FeatureSet>
{
  public FeatureSet a(Parcel paramParcel)
  {
    return new FeatureSet(paramParcel);
  }
  
  public FeatureSet[] a(int paramInt)
  {
    return new FeatureSet[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */