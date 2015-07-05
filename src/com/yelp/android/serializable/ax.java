package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ax
  implements Parcelable.Creator<GiftRecipient>
{
  public GiftRecipient a(Parcel paramParcel)
  {
    GiftRecipient localGiftRecipient = new GiftRecipient(null);
    localGiftRecipient.readFromParcel(paramParcel);
    return localGiftRecipient;
  }
  
  public GiftRecipient[] a(int paramInt)
  {
    return new GiftRecipient[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */