package com.yelp.android.ab;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.aa.c;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import java.io.File;

public class a$a
  implements m<File, ParcelFileDescriptor>
{
  public l<File, ParcelFileDescriptor> a(Context paramContext, c paramc)
  {
    return new a(paramc.a(Uri.class, ParcelFileDescriptor.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */