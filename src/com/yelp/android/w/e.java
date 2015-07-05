package com.yelp.android.w;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.v.c;
import com.yelp.android.v.m;
import com.yelp.android.v.n;

public class e
  implements n<Integer, ParcelFileDescriptor>
{
  public m<Integer, ParcelFileDescriptor> a(Context paramContext, c paramc)
  {
    return new d(paramContext, paramc.a(Uri.class, ParcelFileDescriptor.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.w.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */