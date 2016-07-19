package com.yelp.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

public abstract class ContactsFetcher$Contact
  implements Parcelable
{
  protected String a;
  protected String b;
  protected Bitmap c;
  
  public String a(Context paramContext)
  {
    if (a == null) {
      a = b(paramContext);
    }
    return a;
  }
  
  protected void a(Parcel paramParcel)
  {
    b = paramParcel.readString();
    a = paramParcel.readString();
    c = ((Bitmap)paramParcel.readParcelable(getClass().getClassLoader()));
  }
  
  protected abstract String b(Context paramContext);
  
  public String c(Context paramContext)
  {
    if (b == null) {
      b = d(paramContext);
    }
    return b;
  }
  
  protected abstract String d(Context paramContext);
  
  public Bitmap e(Context paramContext)
  {
    if (c == null) {
      c = f(paramContext);
    }
    return c;
  }
  
  protected abstract Bitmap f(Context paramContext);
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b);
    paramParcel.writeString(a);
    paramParcel.writeParcelable(c, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ContactsFetcher.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */