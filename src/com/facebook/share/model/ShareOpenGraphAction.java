package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ShareOpenGraphAction
  extends ShareOpenGraphValueContainer<ShareOpenGraphAction, a>
{
  public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new Parcelable.Creator()
  {
    public ShareOpenGraphAction a(Parcel paramAnonymousParcel)
    {
      return new ShareOpenGraphAction(paramAnonymousParcel);
    }
    
    public ShareOpenGraphAction[] a(int paramAnonymousInt)
    {
      return new ShareOpenGraphAction[paramAnonymousInt];
    }
  };
  
  ShareOpenGraphAction(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  private ShareOpenGraphAction(a parama)
  {
    super(parama);
  }
  
  public String a()
  {
    return b("og:type");
  }
  
  public static final class a
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
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareOpenGraphAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */