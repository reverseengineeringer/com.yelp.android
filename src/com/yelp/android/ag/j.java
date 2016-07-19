package com.yelp.android.ag;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.f;
import com.yelp.android.u.a.a;
import java.io.IOException;
import java.io.OutputStream;

public class j
  implements e<b>
{
  private static final a a = new a();
  private final a.a b;
  private final com.yelp.android.x.c c;
  private final a d;
  
  public j(com.yelp.android.x.c paramc)
  {
    this(paramc, a);
  }
  
  j(com.yelp.android.x.c paramc, a parama)
  {
    c = paramc;
    b = new a(paramc);
    d = parama;
  }
  
  private i<Bitmap> a(Bitmap paramBitmap, f<Bitmap> paramf, b paramb)
  {
    paramBitmap = d.a(paramBitmap, c);
    paramf = paramf.a(paramBitmap, paramb.getIntrinsicWidth(), paramb.getIntrinsicHeight());
    if (!paramBitmap.equals(paramf)) {
      paramBitmap.d();
    }
    return paramf;
  }
  
  private com.yelp.android.u.a a(byte[] paramArrayOfByte)
  {
    Object localObject = d.a();
    ((com.yelp.android.u.d)localObject).a(paramArrayOfByte);
    localObject = ((com.yelp.android.u.d)localObject).b();
    com.yelp.android.u.a locala = d.a(b);
    locala.a((com.yelp.android.u.c)localObject, paramArrayOfByte);
    locala.a();
    return locala;
  }
  
  private boolean a(byte[] paramArrayOfByte, OutputStream paramOutputStream)
  {
    try
    {
      paramOutputStream.write(paramArrayOfByte);
      return true;
    }
    catch (IOException paramArrayOfByte)
    {
      if (Log.isLoggable("GifEncoder", 3)) {
        Log.d("GifEncoder", "Failed to write data to output stream in GifResourceEncoder", paramArrayOfByte);
      }
    }
    return false;
  }
  
  public String a()
  {
    return "";
  }
  
  public boolean a(i<b> parami, OutputStream paramOutputStream)
  {
    boolean bool1 = false;
    long l = com.yelp.android.ao.d.a();
    parami = (b)parami.b();
    f localf = parami.c();
    if ((localf instanceof com.yelp.android.ad.d)) {
      bool1 = a(parami.d(), paramOutputStream);
    }
    com.yelp.android.u.a locala;
    boolean bool2;
    do
    {
      com.yelp.android.v.a locala1;
      do
      {
        return bool1;
        locala = a(parami.d());
        locala1 = d.b();
      } while (!locala1.a(paramOutputStream));
      int i = 0;
      while (i < locala.c())
      {
        paramOutputStream = a(locala.f(), localf, parami);
        try
        {
          bool1 = locala1.a((Bitmap)paramOutputStream.b());
          if (!bool1) {
            return false;
          }
          locala1.a(locala.a(locala.d()));
          locala.a();
          paramOutputStream.d();
          i += 1;
        }
        finally
        {
          paramOutputStream.d();
        }
      }
      bool2 = locala1.a();
      bool1 = bool2;
    } while (!Log.isLoggable("GifEncoder", 2));
    Log.v("GifEncoder", "Encoded gif with " + locala.c() + " frames and " + parami.d().length + " bytes in " + com.yelp.android.ao.d.a(l) + " ms");
    return bool2;
  }
  
  static class a
  {
    public i<Bitmap> a(Bitmap paramBitmap, com.yelp.android.x.c paramc)
    {
      return new com.bumptech.glide.load.resource.bitmap.c(paramBitmap, paramc);
    }
    
    public com.yelp.android.u.a a(a.a parama)
    {
      return new com.yelp.android.u.a(parama);
    }
    
    public com.yelp.android.u.d a()
    {
      return new com.yelp.android.u.d();
    }
    
    public com.yelp.android.v.a b()
    {
      return new com.yelp.android.v.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */