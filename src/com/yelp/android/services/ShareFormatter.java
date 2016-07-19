package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.yelp.android.analytics.g.a;

public abstract class ShareFormatter<T extends Parcelable>
  implements Parcelable
{
  private T a;
  
  public ShareFormatter(T paramT)
  {
    a = paramT;
  }
  
  private Uri d()
  {
    Uri localUri2 = a();
    Uri localUri1 = localUri2;
    if (!"yelp-android".equals(localUri2.getQueryParameter("ref"))) {
      localUri1 = localUri2.buildUpon().appendQueryParameter("ref", "yelp-android").build();
    }
    return localUri1;
  }
  
  protected abstract Uri a();
  
  public abstract String a(Context paramContext);
  
  public void a(Context paramContext, e.a parama, Intent paramIntent)
  {
    if (parama.a())
    {
      paramIntent.putExtra("android.intent.extra.TEXT", String.valueOf(d()));
      return;
    }
    paramIntent.putExtra("android.intent.extra.TEXT", TextUtils.join("\n", new Object[] { a(paramContext), d() }));
  }
  
  public abstract g.a b();
  
  protected T c()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (getClass() != paramObject.getClass());
    paramObject = (ShareFormatter)paramObject;
    return c().equals(((ShareFormatter)paramObject).c());
  }
  
  public int hashCode()
  {
    if (c() == null) {}
    for (int i = 0;; i = c().hashCode()) {
      return i + 31;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.ShareFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */