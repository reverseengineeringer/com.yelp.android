package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class YelpException$1
  implements Parcelable.Creator<YelpException>
{
  public YelpException a(Parcel paramParcel)
  {
    YelpException localYelpException = new YelpException(paramParcel.readInt());
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      localYelpException.setIsRecoverable(bool);
      return localYelpException;
    }
  }
  
  public YelpException[] a(int paramInt)
  {
    return new YelpException[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.YelpException.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */