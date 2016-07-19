package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.UUID;

public class GiftRecipient
  extends _GiftRecipient
{
  public static final Parcelable.Creator<GiftRecipient> CREATOR = new GiftRecipient.1();
  private UUID e;
  
  private GiftRecipient() {}
  
  public GiftRecipient(GiftRecipient paramGiftRecipient, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString1, paramString2, paramString4, paramString3);
    e = e;
  }
  
  public GiftRecipient(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString1, paramString2, paramString4, paramString3);
    e = UUID.randomUUID();
  }
  
  public UUID a()
  {
    return e;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    e = UUID.fromString(paramParcel.readString());
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof GiftRecipient)) {
          return false;
        }
        paramObject = (GiftRecipient)paramObject;
        if (e != null) {
          break;
        }
      } while (e == null);
      return false;
    } while (e.equals(e));
    return false;
  }
  
  public int hashCode()
  {
    if (e == null) {}
    for (int i = 0;; i = e.hashCode()) {
      return i + 31;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(e.toString());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.GiftRecipient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */