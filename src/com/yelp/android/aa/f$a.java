package com.yelp.android.aa;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.yelp.android.w.c;
import java.io.InputStream;

class f$a
  implements c<g>
{
  private final c<InputStream> a;
  private final c<ParcelFileDescriptor> b;
  
  public f$a(c<InputStream> paramc, c<ParcelFileDescriptor> paramc1)
  {
    a = paramc;
    b = paramc1;
  }
  
  public void a()
  {
    if (a != null) {
      a.a();
    }
    if (b != null) {
      b.a();
    }
  }
  
  public g b(Priority paramPriority)
    throws Exception
  {
    Object localObject3 = null;
    if (a != null) {}
    for (;;)
    {
      try
      {
        InputStream localInputStream = (InputStream)a.a(paramPriority);
        Object localObject2 = localObject3;
        if (b != null) {}
        Object localObject1 = null;
      }
      catch (Exception localException)
      {
        try
        {
          localObject2 = (ParcelFileDescriptor)b.a(paramPriority);
          return new g(localInputStream, (ParcelFileDescriptor)localObject2);
          localException = localException;
          if (Log.isLoggable("IVML", 2)) {
            Log.v("IVML", "Exception fetching input stream, trying ParcelFileDescriptor", localException);
          }
          if (b == null) {
            throw localException;
          }
        }
        catch (Exception paramPriority)
        {
          if (Log.isLoggable("IVML", 2)) {
            Log.v("IVML", "Exception fetching ParcelFileDescriptor", paramPriority);
          }
          localObject2 = localObject3;
          if (localException == null) {
            throw paramPriority;
          }
        }
      }
    }
  }
  
  public String b()
  {
    if (a != null) {
      return a.b();
    }
    return b.b();
  }
  
  public void c()
  {
    if (a != null) {
      a.c();
    }
    if (b != null) {
      b.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */