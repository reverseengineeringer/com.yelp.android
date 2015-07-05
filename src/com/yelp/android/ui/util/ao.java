package com.yelp.android.ui.util;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ao
  implements Parcelable.Creator<ImageInputHelper.SourceIriPair>
{
  public ImageInputHelper.SourceIriPair a(Parcel paramParcel)
  {
    return new ImageInputHelper.SourceIriPair(paramParcel, null);
  }
  
  public ImageInputHelper.SourceIriPair[] a(int paramInt)
  {
    return new ImageInputHelper.SourceIriPair[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */