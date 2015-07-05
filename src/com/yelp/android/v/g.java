package com.yelp.android.v;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.yelp.android.r.c;
import java.io.InputStream;

class g
  implements c<h>
{
  private final c<InputStream> a;
  private final c<ParcelFileDescriptor> b;
  
  public g(c<InputStream> paramc, c<ParcelFileDescriptor> paramc1)
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
  
  public h b(Priority paramPriority)
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
          return new h(localInputStream, (ParcelFileDescriptor)localObject2);
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
 * Qualified Name:     com.yelp.android.v.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */