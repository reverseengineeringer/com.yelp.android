package com.yelp.android.ag;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.yelp.android.ao.h;
import com.yelp.android.u.a.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class i
  implements com.bumptech.glide.load.d<InputStream, b>
{
  private static final b a = new b();
  private static final a b = new a();
  private final Context c;
  private final b d;
  private final com.yelp.android.x.c e;
  private final a f;
  private final a g;
  
  public i(Context paramContext, com.yelp.android.x.c paramc)
  {
    this(paramContext, paramc, a, b);
  }
  
  i(Context paramContext, com.yelp.android.x.c paramc, b paramb, a parama)
  {
    c = paramContext;
    e = paramc;
    f = parama;
    g = new a(paramc);
    d = paramb;
  }
  
  private Bitmap a(com.yelp.android.u.a parama, com.yelp.android.u.c paramc, byte[] paramArrayOfByte)
  {
    parama.a(paramc, paramArrayOfByte);
    parama.a();
    return parama.f();
  }
  
  private d a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, com.yelp.android.u.d paramd, com.yelp.android.u.a parama)
  {
    paramd = paramd.b();
    if ((paramd.a() <= 0) || (paramd.b() != 0)) {}
    do
    {
      return null;
      parama = a(parama, paramd, paramArrayOfByte);
    } while (parama == null);
    com.yelp.android.ad.d locald = com.yelp.android.ad.d.b();
    return new d(new b(c, g, e, locald, paramInt1, paramInt2, paramd, paramArrayOfByte, parama));
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
  
  public d a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    Object localObject1 = a(paramInputStream);
    paramInputStream = d.a((byte[])localObject1);
    com.yelp.android.u.a locala = f.a(g);
    try
    {
      localObject1 = a((byte[])localObject1, paramInt1, paramInt2, paramInputStream, locala);
      return (d)localObject1;
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
  
  static class a
  {
    private final Queue<com.yelp.android.u.a> a = h.a(0);
    
    public com.yelp.android.u.a a(a.a parama)
    {
      try
      {
        com.yelp.android.u.a locala2 = (com.yelp.android.u.a)a.poll();
        com.yelp.android.u.a locala1 = locala2;
        if (locala2 == null) {
          locala1 = new com.yelp.android.u.a(parama);
        }
        return locala1;
      }
      finally {}
    }
    
    public void a(com.yelp.android.u.a parama)
    {
      try
      {
        parama.g();
        a.offer(parama);
        return;
      }
      finally
      {
        parama = finally;
        throw parama;
      }
    }
  }
  
  static class b
  {
    private final Queue<com.yelp.android.u.d> a = h.a(0);
    
    public com.yelp.android.u.d a(byte[] paramArrayOfByte)
    {
      try
      {
        com.yelp.android.u.d locald2 = (com.yelp.android.u.d)a.poll();
        com.yelp.android.u.d locald1 = locald2;
        if (locald2 == null) {
          locald1 = new com.yelp.android.u.d();
        }
        paramArrayOfByte = locald1.a(paramArrayOfByte);
        return paramArrayOfByte;
      }
      finally {}
    }
    
    public void a(com.yelp.android.u.d paramd)
    {
      try
      {
        paramd.a();
        a.offer(paramd);
        return;
      }
      finally
      {
        paramd = finally;
        throw paramd;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */