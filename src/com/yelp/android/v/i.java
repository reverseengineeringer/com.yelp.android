package com.yelp.android.v;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a;
import java.io.InputStream;
import java.io.OutputStream;

public class i
  implements a<h>
{
  private final a<InputStream> a;
  private final a<ParcelFileDescriptor> b;
  private String c;
  
  public i(a<InputStream> parama, a<ParcelFileDescriptor> parama1)
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
  
  public boolean a(h paramh, OutputStream paramOutputStream)
  {
    if (paramh.a() != null) {
      return a.a(paramh.a(), paramOutputStream);
    }
    return b.a(paramh.b(), paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */