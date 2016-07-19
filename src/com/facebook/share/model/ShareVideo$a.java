package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;

public final class ShareVideo$a
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

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareVideo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */