package com.yelp.android.w;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.r.d;
import com.yelp.android.v.m;
import com.yelp.android.v.r;

public class h
  extends r<ParcelFileDescriptor>
  implements c<Uri>
{
  public h(Context paramContext, m<com.yelp.android.v.e, ParcelFileDescriptor> paramm)
  {
    super(paramContext, paramm);
  }
  
  protected com.yelp.android.r.c<ParcelFileDescriptor> a(Context paramContext, Uri paramUri)
  {
    return new com.yelp.android.r.e(paramContext, paramUri);
  }
  
  protected com.yelp.android.r.c<ParcelFileDescriptor> a(Context paramContext, String paramString)
  {
    return new d(paramContext.getApplicationContext().getAssets(), paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */