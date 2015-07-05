package com.yelp.android.w;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.v.c;
import com.yelp.android.v.m;
import com.yelp.android.v.n;
import java.io.File;

public class b
  implements n<File, ParcelFileDescriptor>
{
  public m<File, ParcelFileDescriptor> a(Context paramContext, c paramc)
  {
    return new a(paramc.a(Uri.class, ParcelFileDescriptor.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.w.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */