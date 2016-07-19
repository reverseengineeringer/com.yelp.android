package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ShareOpenGraphContent
  extends ShareContent<ShareOpenGraphContent, Object>
{
  public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new Parcelable.Creator()
  {
    public ShareOpenGraphContent a(Parcel paramAnonymousParcel)
    {
      return new ShareOpenGraphContent(paramAnonymousParcel);
    }
    
    public ShareOpenGraphContent[] a(int paramAnonymousInt)
    {
      return new ShareOpenGraphContent[paramAnonymousInt];
    }
  };
  private final ShareOpenGraphAction a;
  private final String b;
  
  ShareOpenGraphContent(Parcel paramParcel)
  {
    super(paramParcel);
    a = new ShareOpenGraphAction.a().a(paramParcel).a();
    b = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ShareOpenGraphAction e()
  {
    return a;
  }
  
  public String f()
  {
    return b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeString(b);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareOpenGraphContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */