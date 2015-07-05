package com.yelp.android.util;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;

final class j
  implements Parcelable.Creator<EclairFetcher.EclairContact>
{
  public EclairFetcher.EclairContact a(Parcel paramParcel)
  {
    EclairFetcher.EclairContact localEclairContact = new EclairFetcher.EclairContact((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    localEclairContact.readFromParcel(paramParcel);
    return localEclairContact;
  }
  
  public EclairFetcher.EclairContact[] a(int paramInt)
  {
    return new EclairFetcher.EclairContact[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */