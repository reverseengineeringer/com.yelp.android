package com.facebook.share.model;

import android.os.Parcel;

public final class ShareOpenGraphAction$a
  extends ShareOpenGraphValueContainer.a<ShareOpenGraphAction, a>
{
  public a a(Parcel paramParcel)
  {
    return a((ShareOpenGraphAction)paramParcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
  }
  
  public a a(ShareOpenGraphAction paramShareOpenGraphAction)
  {
    if (paramShareOpenGraphAction == null) {
      return this;
    }
    return ((a)super.a(paramShareOpenGraphAction)).a(paramShareOpenGraphAction.a());
  }
  
  public a a(String paramString)
  {
    a("og:type", paramString);
    return this;
  }
  
  public ShareOpenGraphAction a()
  {
    return new ShareOpenGraphAction(this, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareOpenGraphAction.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */