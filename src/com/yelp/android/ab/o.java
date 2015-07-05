package com.yelp.android.ab;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class o
  implements com.bumptech.glide.load.d<InputStream, b>
{
  private static final q a = new q();
  private static final p b = new p();
  private final Context c;
  private final q d;
  private final com.bumptech.glide.load.engine.bitmap_recycle.e e;
  private final p f;
  private final a g;
  
  public o(Context paramContext, com.bumptech.glide.load.engine.bitmap_recycle.e parame)
  {
    this(paramContext, parame, a, b);
  }
  
  o(Context paramContext, com.bumptech.glide.load.engine.bitmap_recycle.e parame, q paramq, p paramp)
  {
    c = paramContext;
    e = parame;
    f = paramp;
    g = new a(parame);
    d = paramq;
  }
  
  private Bitmap a(com.yelp.android.p.a parama, com.yelp.android.p.d paramd, byte[] paramArrayOfByte)
  {
    parama.a(paramd, paramArrayOfByte);
    parama.a();
    return parama.g();
  }
  
  private e a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, com.yelp.android.p.e parame, com.yelp.android.p.a parama)
  {
    parame = parame.b();
    if ((parame.a() <= 0) || (parame.b() != 0)) {}
    do
    {
      return null;
      parama = a(parama, parame, paramArrayOfByte);
    } while (parama == null);
    com.yelp.android.y.d locald = com.yelp.android.y.d.b();
    return new e(new b(c, g, e, locald, paramInt1, paramInt2, parame, paramArrayOfByte, parama));
  }
  
  private static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    try
    {
      byte[] arrayOfByte = new byte['䀀'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException paramInputStream)
    {
      Log.w("GifResourceDecoder", "Error reading data from stream", paramInputStream);
    }
    for (;;)
    {
      localByteArrayOutputStream.flush();
    }
  }
  
  public e a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    Object localObject1 = a(paramInputStream);
    paramInputStream = d.a((byte[])localObject1);
    com.yelp.android.p.a locala = f.a(g);
    try
    {
      localObject1 = a((byte[])localObject1, paramInt1, paramInt2, paramInputStream, locala);
      return (e)localObject1;
    }
    finally
    {
      d.a(paramInputStream);
      f.a(locala);
    }
  }
  
  public String a()
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */