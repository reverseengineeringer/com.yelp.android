package com.yelp.android.ac;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.aa.b;
import com.yelp.android.aa.c;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import java.io.File;
import java.io.InputStream;

public class d
  extends b<InputStream>
  implements e<File>
{
  public d(l<Uri, InputStream> paraml)
  {
    super(paraml);
  }
  
  public static class a
    implements m<File, InputStream>
  {
    public l<File, InputStream> a(Context paramContext, c paramc)
    {
      return new d(paramc.a(Uri.class, InputStream.class));
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */