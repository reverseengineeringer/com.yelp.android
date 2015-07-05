package com.yelp.android.x;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.v.c;
import com.yelp.android.v.m;
import com.yelp.android.v.n;
import java.io.File;
import java.io.InputStream;

public class g
  implements n<File, InputStream>
{
  public m<File, InputStream> a(Context paramContext, c paramc)
  {
    return new f(paramc.a(Uri.class, InputStream.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.x.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */