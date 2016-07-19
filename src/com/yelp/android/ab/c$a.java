package com.yelp.android.ab;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;

public class c$a
  implements m<Integer, ParcelFileDescriptor>
{
  public l<Integer, ParcelFileDescriptor> a(Context paramContext, com.yelp.android.aa.c paramc)
  {
    return new c(paramContext, paramc.a(Uri.class, ParcelFileDescriptor.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */