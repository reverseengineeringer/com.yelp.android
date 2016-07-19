package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Collections;
import java.util.List;

public final class SharePhotoContent
  extends ShareContent<SharePhotoContent, Object>
{
  public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Parcelable.Creator()
  {
    public SharePhotoContent a(Parcel paramAnonymousParcel)
    {
      return new SharePhotoContent(paramAnonymousParcel);
    }
    
    public SharePhotoContent[] a(int paramAnonymousInt)
    {
      return new SharePhotoContent[paramAnonymousInt];
    }
  };
  private final List<SharePhoto> a;
  
  SharePhotoContent(Parcel paramParcel)
  {
    super(paramParcel);
    a = Collections.unmodifiableList(SharePhoto.a.b(paramParcel));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<SharePhoto> e()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    SharePhoto.a.a(paramParcel, a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.SharePhotoContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */