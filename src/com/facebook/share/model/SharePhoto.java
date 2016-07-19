package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class SharePhoto
  implements ShareModel
{
  public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator()
  {
    public SharePhoto a(Parcel paramAnonymousParcel)
    {
      return new SharePhoto(paramAnonymousParcel);
    }
    
    public SharePhoto[] a(int paramAnonymousInt)
    {
      return new SharePhoto[paramAnonymousInt];
    }
  };
  private final Bitmap a;
  private final Uri b;
  private final boolean c;
  private final String d;
  
  SharePhoto(Parcel paramParcel)
  {
    a = ((Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader()));
    b = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      d = paramParcel.readString();
      return;
    }
  }
  
  private SharePhoto(a parama)
  {
    a = a.a(parama);
    b = a.b(parama);
    c = a.c(parama);
    d = a.d(parama);
  }
  
  public Bitmap a()
  {
    return a;
  }
  
  public Uri b()
  {
    return b;
  }
  
  public boolean c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = 0;
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeParcelable(b, 0);
    if (c) {
      paramInt = 1;
    }
    paramParcel.writeByte((byte)paramInt);
    paramParcel.writeString(d);
  }
  
  public static final class a
  {
    private Bitmap a;
    private Uri b;
    private boolean c;
    private String d;
    
    public static void a(Parcel paramParcel, List<SharePhoto> paramList)
    {
      ArrayList localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localArrayList.add((SharePhoto)paramList.next());
      }
      paramParcel.writeTypedList(localArrayList);
    }
    
    public static List<SharePhoto> b(Parcel paramParcel)
    {
      ArrayList localArrayList = new ArrayList();
      paramParcel.readTypedList(localArrayList, SharePhoto.CREATOR);
      return localArrayList;
    }
    
    Uri a()
    {
      return b;
    }
    
    public a a(Bitmap paramBitmap)
    {
      a = paramBitmap;
      return this;
    }
    
    public a a(Uri paramUri)
    {
      b = paramUri;
      return this;
    }
    
    public a a(Parcel paramParcel)
    {
      return a((SharePhoto)paramParcel.readParcelable(SharePhoto.class.getClassLoader()));
    }
    
    public a a(SharePhoto paramSharePhoto)
    {
      if (paramSharePhoto == null) {
        return this;
      }
      return a(paramSharePhoto.a()).a(paramSharePhoto.b()).a(paramSharePhoto.c()).a(paramSharePhoto.d());
    }
    
    public a a(String paramString)
    {
      d = paramString;
      return this;
    }
    
    public a a(boolean paramBoolean)
    {
      c = paramBoolean;
      return this;
    }
    
    Bitmap b()
    {
      return a;
    }
    
    public SharePhoto c()
    {
      return new SharePhoto(this, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.SharePhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */