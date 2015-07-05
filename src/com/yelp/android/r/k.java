package com.yelp.android.r;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.Priority;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class k
  implements c<InputStream>
{
  private static final p a = new p();
  private final Context b;
  private final Uri c;
  private final c<InputStream> d;
  private final int e;
  private final int f;
  private final p g;
  private InputStream h;
  
  public k(Context paramContext, Uri paramUri, c<InputStream> paramc, int paramInt1, int paramInt2)
  {
    this(paramContext, paramUri, paramc, paramInt1, paramInt2, a);
  }
  
  k(Context paramContext, Uri paramUri, c<InputStream> paramc, int paramInt1, int paramInt2, p paramp)
  {
    b = paramContext;
    c = paramUri;
    d = paramc;
    e = paramInt1;
    f = paramInt2;
    g = paramp;
  }
  
  private static boolean c(Uri paramUri)
  {
    return (paramUri != null) && ("content".equals(paramUri.getScheme())) && ("media".equals(paramUri.getAuthority()));
  }
  
  private static boolean d(Uri paramUri)
  {
    return (c(paramUri)) && (paramUri.getPathSegments().contains("video"));
  }
  
  public void a()
  {
    if (h != null) {}
    try
    {
      h.close();
      d.a();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public InputStream b(Priority paramPriority)
  {
    o localo = g.a(c, e, f);
    if (localo != null) {
      h = localo.a(b, c);
    }
    if (h != null) {
      return h;
    }
    return (InputStream)d.a(paramPriority);
  }
  
  public String b()
  {
    return c.toString();
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.r.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */