package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ShareVideo
  implements ShareModel
{
  public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator()
  {
    public ShareVideo a(Parcel paramAnonymousParcel)
    {
      return new ShareVideo(paramAnonymousParcel);
    }
    
    public ShareVideo[] a(int paramAnonymousInt)
    {
      return new ShareVideo[paramAnonymousInt];
    }
  };
  private final Uri a;
  
  ShareVideo(Parcel paramParcel)
  {
    a = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
  }
  
  private ShareVideo(a parama)
  {
    a = a.a(parama);
  }
  
  public Uri a()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
  }
  
  public static final class a
  {
    private Uri a;
    
    public a a(Uri paramUri)
    {
      a = paramUri;
      return this;
    }
    
    public a a(Parcel paramParcel)
    {
      return a((ShareVideo)paramParcel.readParcelable(ShareVideo.class.getClassLoader()));
    }
    
    public a a(ShareVideo paramShareVideo)
    {
      if (paramShareVideo == null) {
        return this;
      }
      return a(paramShareVideo.a());
    }
    
    public ShareVideo a()
    {
      return new ShareVideo(this, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */