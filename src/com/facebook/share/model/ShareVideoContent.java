package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ShareVideoContent
  extends ShareContent<ShareVideoContent, Object>
  implements ShareModel
{
  public static final Parcelable.Creator<ShareVideoContent> CREATOR = new Parcelable.Creator()
  {
    public ShareVideoContent a(Parcel paramAnonymousParcel)
    {
      return new ShareVideoContent(paramAnonymousParcel);
    }
    
    public ShareVideoContent[] a(int paramAnonymousInt)
    {
      return new ShareVideoContent[paramAnonymousInt];
    }
  };
  private final String a;
  private final String b;
  private final SharePhoto c;
  private final ShareVideo d;
  
  ShareVideoContent(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
    b = paramParcel.readString();
    SharePhoto.a locala = new SharePhoto.a().a(paramParcel);
    if ((locala.a() != null) || (locala.b() != null)) {}
    for (c = locala.c();; c = null)
    {
      d = new ShareVideo.a().a(paramParcel).a();
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return a;
  }
  
  public String f()
  {
    return b;
  }
  
  public SharePhoto g()
  {
    return c;
  }
  
  public ShareVideo h()
  {
    return d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeParcelable(c, 0);
    paramParcel.writeParcelable(d, 0);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareVideoContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */