package com.yelp.android.aa;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a;
import java.io.InputStream;
import java.io.OutputStream;

public class h
  implements a<g>
{
  private final a<InputStream> a;
  private final a<ParcelFileDescriptor> b;
  private String c;
  
  public h(a<InputStream> parama, a<ParcelFileDescriptor> parama1)
  {
    a = parama;
    b = parama1;
  }
  
  public String a()
  {
    if (c == null) {
      c = (a.a() + b.a());
    }
    return c;
  }
  
  public boolean a(g paramg, OutputStream paramOutputStream)
  {
    if (paramg.a() != null) {
      return a.a(paramg.a(), paramOutputStream);
    }
    return b.a(paramg.b(), paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */