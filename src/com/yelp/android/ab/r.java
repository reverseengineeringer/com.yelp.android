package com.yelp.android.ab;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.f;
import com.yelp.android.ai.c;
import java.io.IOException;
import java.io.OutputStream;

public class r
  implements com.bumptech.glide.load.e<b>
{
  private static final s a = new s();
  private final com.yelp.android.p.b b;
  private final com.bumptech.glide.load.engine.bitmap_recycle.e c;
  private final s d;
  
  public r(com.bumptech.glide.load.engine.bitmap_recycle.e parame)
  {
    this(parame, a);
  }
  
  r(com.bumptech.glide.load.engine.bitmap_recycle.e parame, s params)
  {
    c = parame;
    b = new a(parame);
    d = params;
  }
  
  private t<Bitmap> a(Bitmap paramBitmap, f<Bitmap> paramf, b paramb)
  {
    paramBitmap = d.a(paramBitmap, c);
    paramf = paramf.a(paramBitmap, paramb.getIntrinsicWidth(), paramb.getIntrinsicHeight());
    if (!paramBitmap.equals(paramf)) {
      paramBitmap.d();
    }
    return paramf;
  }
  
  private com.yelp.android.p.a a(byte[] paramArrayOfByte)
  {
    Object localObject = d.a();
    ((com.yelp.android.p.e)localObject).a(paramArrayOfByte);
    localObject = ((com.yelp.android.p.e)localObject).b();
    com.yelp.android.p.a locala = d.a(b);
    locala.a((com.yelp.android.p.d)localObject, paramArrayOfByte);
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
  
  public boolean a(t<b> paramt, OutputStream paramOutputStream)
  {
    boolean bool1 = false;
    long l = c.a();
    paramt = (b)paramt.b();
    f localf = paramt.c();
    if ((localf instanceof com.yelp.android.y.d)) {
      bool1 = a(paramt.d(), paramOutputStream);
    }
    com.yelp.android.p.a locala;
    boolean bool2;
    do
    {
      com.yelp.android.q.a locala1;
      do
      {
        return bool1;
        locala = a(paramt.d());
        locala1 = d.b();
      } while (!locala1.a(paramOutputStream));
      int i = 0;
      while (i < locala.c())
      {
        paramOutputStream = a(locala.g(), localf, paramt);
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
    Log.v("GifEncoder", "Encoded gif with " + locala.c() + " frames and " + paramt.d().length + " bytes in " + c.a(l) + " ms");
    return bool2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */