package com.yelp.android.aa;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.yelp.android.w.c;
import java.io.InputStream;

public class f<A>
  implements l<A, g>
{
  private final l<A, InputStream> a;
  private final l<A, ParcelFileDescriptor> b;
  
  public f(l<A, InputStream> paraml, l<A, ParcelFileDescriptor> paraml1)
  {
    if ((paraml == null) && (paraml1 == null)) {
      throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
    }
    a = paraml;
    b = paraml1;
  }
  
  public c<g> a(A paramA, int paramInt1, int paramInt2)
  {
    a locala = null;
    if (a != null) {}
    for (c localc = a.a(paramA, paramInt1, paramInt2);; localc = null)
    {
      if (b != null) {}
      for (paramA = b.a(paramA, paramInt1, paramInt2);; paramA = null)
      {
        if ((localc != null) || (paramA != null)) {
          locala = new a(localc, paramA);
        }
        return locala;
      }
    }
  }
  
  static class a
    implements c<g>
  {
    private final c<InputStream> a;
    private final c<ParcelFileDescriptor> b;
    
    public a(c<InputStream> paramc, c<ParcelFileDescriptor> paramc1)
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
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */