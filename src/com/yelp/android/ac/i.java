package com.yelp.android.ac;

import android.content.Context;
import com.yelp.android.aa.c;
import com.yelp.android.aa.d;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.aa.r;
import java.io.InputStream;
import java.net.URL;

public class i
  extends r<InputStream>
{
  public i(l<d, InputStream> paraml)
  {
    super(paraml);
  }
  
  public static class a
    implements m<URL, InputStream>
  {
    public l<URL, InputStream> a(Context paramContext, c paramc)
    {
      return new i(paramc.a(d.class, InputStream.class));
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */