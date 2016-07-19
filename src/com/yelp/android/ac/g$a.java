package com.yelp.android.ac;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.aa.c;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import java.io.InputStream;

public class g$a
  implements m<String, InputStream>
{
  public l<String, InputStream> a(Context paramContext, c paramc)
  {
    return new g(paramc.a(Uri.class, InputStream.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */