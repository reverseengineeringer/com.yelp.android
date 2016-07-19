package com.google.android.gms.internal;

import android.content.Context;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

@fv
public class hi
{
  public static final a<Void> a = new a()
  {
    public Void a()
    {
      return null;
    }
    
    public Void a(InputStream paramAnonymousInputStream)
    {
      return null;
    }
  };
  private static iw b;
  private static final Object c = new Object();
  
  public hi(Context paramContext)
  {
    b = a(paramContext);
  }
  
  private static iw a(Context paramContext)
  {
    synchronized (c)
    {
      if (b == null) {
        b = c.a(paramContext.getApplicationContext());
      }
      paramContext = b;
      return paramContext;
    }
  }
  
  public <T> hs<T> a(String paramString, a<T> parama)
  {
    c localc = new c(null);
    b.a(new b(paramString, parama, localc));
    return localc;
  }
  
  public hs<String> a(final String paramString, final Map<String, String> paramMap)
  {
    final c localc = new c(null);
    paramString = new b(paramString, localc, new jc.a()
    {
      public void a(zzr paramAnonymouszzr)
      {
        gz.d("Failed to load URL: " + paramString + "\n" + paramAnonymouszzr.toString());
        localc.a(null);
      }
    })
    {
      public Map<String, String> a()
        throws zza
      {
        if (paramMap == null) {
          return super.a();
        }
        return paramMap;
      }
    };
    b.a(paramString);
    return localc;
  }
  
  public static abstract interface a<T>
  {
    public abstract T b();
    
    public abstract T b(InputStream paramInputStream);
  }
  
  private static class b<T>
    extends zzk<InputStream>
  {
    private final hi.a<T> a;
    private final jc.b<T> b;
    
    public b(String paramString, final hi.a<T> parama, jc.b<T> paramb)
    {
      super(paramString, new jc.a()
      {
        public void a(zzr paramAnonymouszzr)
        {
          a(parama.b());
        }
      });
      a = parama;
      b = paramb;
    }
    
    protected jc<InputStream> a(gm paramgm)
    {
      return jc.a(new ByteArrayInputStream(b), lz.a(paramgm));
    }
    
    protected void a(InputStream paramInputStream)
    {
      b.a(a.b(paramInputStream));
    }
  }
  
  private class c<T>
    extends hp<T>
    implements jc.b<T>
  {
    private c() {}
    
    public void a(T paramT)
    {
      super.b(paramT);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */