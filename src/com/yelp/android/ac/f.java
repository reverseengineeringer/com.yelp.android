package com.yelp.android.ac;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.aa.c;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.aa.n;
import java.io.InputStream;

public class f
  extends n<InputStream>
  implements e<Integer>
{
  public f(Context paramContext, l<Uri, InputStream> paraml)
  {
    super(paramContext, paraml);
  }
  
  public static class a
    implements m<Integer, InputStream>
  {
    public l<Integer, InputStream> a(Context paramContext, c paramc)
    {
      return new f(paramContext, paramc.a(Uri.class, InputStream.class));
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */