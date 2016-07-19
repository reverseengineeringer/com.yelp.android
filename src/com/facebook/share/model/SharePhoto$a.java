package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class SharePhoto$a
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

/* Location:
 * Qualified Name:     com.facebook.share.model.SharePhoto.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */