package com.yelp.android.x;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.v.c;
import com.yelp.android.v.m;
import com.yelp.android.v.n;
import java.io.InputStream;

public class j
  implements n<Integer, InputStream>
{
  public m<Integer, InputStream> a(Context paramContext, c paramc)
  {
    return new i(paramContext, paramc.a(Uri.class, InputStream.class));
  }
  
  public void a() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.x.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */