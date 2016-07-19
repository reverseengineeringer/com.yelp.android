package com.yelp.android.ab;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.aa.c;
import com.yelp.android.aa.d;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;

public class e$a
  implements m<Uri, ParcelFileDescriptor>
{
  public l<Uri, ParcelFileDescriptor> a(Context paramContext, c paramc)
  {
    return new e(paramContext, paramc.a(d.class, ParcelFileDescriptor.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */