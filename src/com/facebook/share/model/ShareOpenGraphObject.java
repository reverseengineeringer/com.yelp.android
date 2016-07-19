package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ShareOpenGraphObject
  extends ShareOpenGraphValueContainer<ShareOpenGraphObject, Object>
{
  public static final Parcelable.Creator<ShareOpenGraphObject> CREATOR = new Parcelable.Creator()
  {
    public ShareOpenGraphObject a(Parcel paramAnonymousParcel)
    {
      return new ShareOpenGraphObject(paramAnonymousParcel);
    }
    
    public ShareOpenGraphObject[] a(int paramAnonymousInt)
    {
      return new ShareOpenGraphObject[paramAnonymousInt];
    }
  };
  
  ShareOpenGraphObject(Parcel paramParcel)
  {
    super(paramParcel);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareOpenGraphObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */