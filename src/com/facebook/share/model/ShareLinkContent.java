package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ShareLinkContent
  extends ShareContent<ShareLinkContent, Object>
{
  public static final Parcelable.Creator<ShareLinkContent> CREATOR = new Parcelable.Creator()
  {
    public ShareLinkContent a(Parcel paramAnonymousParcel)
    {
      return new ShareLinkContent(paramAnonymousParcel);
    }
    
    public ShareLinkContent[] a(int paramAnonymousInt)
    {
      return new ShareLinkContent[paramAnonymousInt];
    }
  };
  private final String a;
  private final String b;
  private final Uri c;
  
  ShareLinkContent(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
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
  
  public Uri g()
  {
    return c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeParcelable(c, 0);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareLinkContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */