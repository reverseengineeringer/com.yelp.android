package com.yelp.android.ui.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.yelp.android.analytics.iris.EventIri;

class ImageInputHelper$SourceIriPair
  implements Parcelable
{
  public static final Parcelable.Creator<SourceIriPair> CREATOR = new ao();
  private EventIri mEventIri;
  private ImageInputHelper.ImageSource mImageSource;
  
  private ImageInputHelper$SourceIriPair(Parcel paramParcel)
  {
    mImageSource = ((ImageInputHelper.ImageSource)paramParcel.readParcelable(ImageInputHelper.ImageSource.class.getClassLoader()));
    mEventIri = ((EventIri)paramParcel.readParcelable(EventIri.class.getClassLoader()));
  }
  
  public ImageInputHelper$SourceIriPair(ImageInputHelper.ImageSource paramImageSource, EventIri paramEventIri)
  {
    mImageSource = paramImageSource;
    mEventIri = paramEventIri;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mImageSource, 0);
    paramParcel.writeParcelable(mEventIri, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ImageInputHelper.SourceIriPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */