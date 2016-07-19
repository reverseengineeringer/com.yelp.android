package com.yelp.android.ac;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.aa.c;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.aa.p;
import java.io.InputStream;

public class g
  extends p<InputStream>
  implements e<String>
{
  public g(l<Uri, InputStream> paraml)
  {
    super(paraml);
  }
  
  public static class a
    implements m<String, InputStream>
  {
    public l<String, InputStream> a(Context paramContext, c paramc)
    {
      return new g(paramc.a(Uri.class, InputStream.class));
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */