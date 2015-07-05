package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.UUID;

public class GiftRecipient
  extends _GiftRecipient
{
  public static final Parcelable.Creator<GiftRecipient> CREATOR = new ax();
  private UUID mUUID;
  
  private GiftRecipient() {}
  
  public GiftRecipient(GiftRecipient paramGiftRecipient, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString1, paramString2, paramString4, paramString3);
    mUUID = mUUID;
  }
  
  public GiftRecipient(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString1, paramString2, paramString4, paramString3);
    mUUID = UUID.randomUUID();
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
        if (mUUID != null) {
          break;
        }
      } while (mUUID == null);
      return false;
    } while (mUUID.equals(mUUID));
    return false;
  }
  
  public UUID getUUID()
  {
    return mUUID;
  }
  
  public int hashCode()
  {
    if (mUUID == null) {}
    for (int i = 0;; i = mUUID.hashCode()) {
      return i + 31;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mUUID = UUID.fromString(paramParcel.readString());
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(mUUID.toString());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.GiftRecipient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */