package com.yelp.android.s;

import android.util.Log;
import com.yelp.android.o.c;
import com.yelp.android.o.e;
import java.io.File;
import java.io.IOException;

public class d
  implements a
{
  private static d a = null;
  private final k b;
  private final File c;
  private final int d;
  private com.yelp.android.o.a e;
  
  protected d(File paramFile, int paramInt)
  {
    c = paramFile;
    d = paramInt;
    b = new k();
  }
  
  private com.yelp.android.o.a a()
  {
    try
    {
      if (e == null) {
        e = com.yelp.android.o.a.a(c, 1, 1, d);
      }
      com.yelp.android.o.a locala = e;
      return locala;
    }
    finally {}
  }
  
  public static a a(File paramFile, int paramInt)
  {
    try
    {
      if (a == null) {
        a = new d(paramFile, paramInt);
      }
      paramFile = a;
      return paramFile;
    }
    finally {}
  }
  
  public File a(com.bumptech.glide.load.b paramb)
  {
    paramb = b.a(paramb);
    Object localObject = null;
    try
    {
      e locale = a().a(paramb);
      paramb = (com.bumptech.glide.load.b)localObject;
      if (locale != null) {
        paramb = locale.a(0);
      }
    }
    catch (IOException localIOException)
    {
      do
      {
        paramb = (com.bumptech.glide.load.b)localObject;
      } while (!Log.isLoggable("DiskLruCacheWrapper", 5));
      Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", localIOException);
    }
    return paramb;
    return null;
  }
  
  public void a(com.bumptech.glide.load.b paramb, b paramb1)
  {
    paramb = b.a(paramb);
    try
    {
      paramb = a().b(paramb);
      if (paramb != null) {
        try
        {
          if (paramb1.a(paramb.a(0))) {
            paramb.a();
          }
          return;
        }
        finally
        {
          paramb.c();
        }
      }
      return;
    }
    catch (IOException paramb)
    {
      if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
        Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", paramb);
      }
    }
  }
  
  public void b(com.bumptech.glide.load.b paramb)
  {
    paramb = b.a(paramb);
    try
    {
      a().c(paramb);
      return;
    }
    catch (IOException paramb)
    {
      while (!Log.isLoggable("DiskLruCacheWrapper", 5)) {}
      Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", paramb);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.s.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */