package com.yelp.android.w;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.v.c;
import com.yelp.android.v.m;
import com.yelp.android.v.n;

public class g
  implements n<String, ParcelFileDescriptor>
{
  public m<String, ParcelFileDescriptor> a(Context paramContext, c paramc)
  {
    return new f(paramc.a(Uri.class, ParcelFileDescriptor.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.w.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */