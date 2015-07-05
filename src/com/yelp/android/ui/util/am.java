package com.yelp.android.ui.util;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class am
  implements Parcelable.Creator<ImageInputHelper.ImageSource>
{
  public ImageInputHelper.ImageSource a(Parcel paramParcel)
  {
    return ImageInputHelper.ImageSource.values()[paramParcel.readInt()];
  }
  
  public ImageInputHelper.ImageSource[] a(int paramInt)
  {
    return new ImageInputHelper.ImageSource[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */