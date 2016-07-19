package com.yelp.android.h;

import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class j
{
  private static final a a = new d();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new b();
      return;
    }
  }
  
  public j()
  {
    b = a.a(this);
  }
  
  public j(Object paramObject)
  {
    b = paramObject;
  }
  
  public c a(int paramInt)
  {
    return null;
  }
  
  public Object a()
  {
    return b;
  }
  
  public List<c> a(String paramString, int paramInt)
  {
    return null;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
  
  public c b(int paramInt)
  {
    return null;
  }
  
  static abstract interface a
  {
    public abstract Object a(j paramj);
  }
  
  static class b
    extends j.d
  {
    public Object a(final j paramj)
    {
      k.a(new k.a()
      {
        public Object a(int paramAnonymousInt)
        {
          c localc = paramj.a(paramAnonymousInt);
          if (localc == null) {
            return null;
          }
          return localc.a();
        }
        
        public List<Object> a(String paramAnonymousString, int paramAnonymousInt)
        {
          paramAnonymousString = paramj.a(paramAnonymousString, paramAnonymousInt);
          ArrayList localArrayList = new ArrayList();
          int i = paramAnonymousString.size();
          paramAnonymousInt = 0;
          while (paramAnonymousInt < i)
          {
            localArrayList.add(((c)paramAnonymousString.get(paramAnonymousInt)).a());
            paramAnonymousInt += 1;
          }
          return localArrayList;
        }
        
        public boolean a(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
        {
          return paramj.a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
        }
      });
    }
  }
  
  static class c
    extends j.d
  {
    public Object a(final j paramj)
    {
      l.a(new l.a()
      {
        public Object a(int paramAnonymousInt)
        {
          c localc = paramj.a(paramAnonymousInt);
          if (localc == null) {
            return null;
          }
          return localc.a();
        }
        
        public List<Object> a(String paramAnonymousString, int paramAnonymousInt)
        {
          paramAnonymousString = paramj.a(paramAnonymousString, paramAnonymousInt);
          ArrayList localArrayList = new ArrayList();
          int i = paramAnonymousString.size();
          paramAnonymousInt = 0;
          while (paramAnonymousInt < i)
          {
            localArrayList.add(((c)paramAnonymousString.get(paramAnonymousInt)).a());
            paramAnonymousInt += 1;
          }
          return localArrayList;
        }
        
        public boolean a(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
        {
          return paramj.a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
        }
        
        public Object b(int paramAnonymousInt)
        {
          c localc = paramj.b(paramAnonymousInt);
          if (localc == null) {
            return null;
          }
          return localc.a();
        }
      });
    }
  }
  
  static class d
    implements j.a
  {
    public Object a(j paramj)
    {
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.h.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */