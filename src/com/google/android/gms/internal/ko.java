package com.google.android.gms.internal;

import java.io.IOException;

public abstract interface ko
{
  public static final class a
    extends ll<a>
  {
    public a[] a;
    
    public a()
    {
      a();
    }
    
    public a a()
    {
      a = a.a();
      m = null;
      S = -1;
      return this;
    }
    
    public a a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 10: 
          int j = lt.b(paramlk, 10);
          if (a == null) {}
          a[] arrayOfa;
          for (i = 0;; i = a.length)
          {
            arrayOfa = new a[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(a, 0, arrayOfa, 0, i);
              j = i;
            }
            while (j < arrayOfa.length - 1)
            {
              arrayOfa[j] = new a();
              paramlk.a(arrayOfa[j]);
              paramlk.a();
              j += 1;
            }
          }
          arrayOfa[j] = new a();
          paramlk.a(arrayOfa[j]);
          a = arrayOfa;
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if ((a != null) && (a.length > 0))
      {
        int i = 0;
        while (i < a.length)
        {
          a locala = a[i];
          if (locala != null) {
            paramzzsn.a(1, locala);
          }
          i += 1;
        }
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int i = super.b();
      int k = i;
      if (a != null)
      {
        k = i;
        if (a.length > 0)
        {
          int j = 0;
          for (;;)
          {
            k = i;
            if (j >= a.length) {
              break;
            }
            a locala = a[j];
            k = i;
            if (locala != null) {
              k = i + zzsn.c(1, locala);
            }
            j += 1;
            i = k;
          }
        }
      }
      return k;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (paramObject == this) {
        bool1 = true;
      }
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof a));
          paramObject = (a)paramObject;
          bool1 = bool2;
        } while (!lp.a(a, a));
        if ((m != null) && (!m.b())) {
          break label79;
        }
        if (m == null) {
          break;
        }
        bool1 = bool2;
      } while (!m.b());
      return true;
      label79:
      return m.equals(m);
    }
    
    public int hashCode()
    {
      int j = getClass().getName().hashCode();
      int k = lp.a(a);
      if ((m == null) || (m.b())) {}
      for (int i = 0;; i = m.hashCode()) {
        return i + ((j + 527) * 31 + k) * 31;
      }
    }
    
    public static final class a
      extends ll<a>
    {
      private static volatile a[] d;
      public String a;
      public String b;
      public int c;
      
      public a()
      {
        c();
      }
      
      public static a[] a()
      {
        if (d == null) {}
        synchronized (lp.a)
        {
          if (d == null) {
            d = new a[0];
          }
          return d;
        }
      }
      
      public a a(lk paramlk)
        throws IOException
      {
        for (;;)
        {
          int i = paramlk.a();
          switch (i)
          {
          default: 
            if (a(paramlk, i)) {}
            break;
          case 0: 
            return this;
          case 10: 
            a = paramlk.h();
            break;
          case 18: 
            b = paramlk.h();
            break;
          case 24: 
            c = paramlk.f();
          }
        }
      }
      
      public void a(zzsn paramzzsn)
        throws IOException
      {
        if (!a.equals("")) {
          paramzzsn.a(1, a);
        }
        if (!b.equals("")) {
          paramzzsn.a(2, b);
        }
        if (c != 0) {
          paramzzsn.a(3, c);
        }
        super.a(paramzzsn);
      }
      
      protected int b()
      {
        int j = super.b();
        int i = j;
        if (!a.equals("")) {
          i = j + zzsn.b(1, a);
        }
        j = i;
        if (!b.equals("")) {
          j = i + zzsn.b(2, b);
        }
        i = j;
        if (c != 0) {
          i = j + zzsn.b(3, c);
        }
        return i;
      }
      
      public a c()
      {
        a = "";
        b = "";
        c = 0;
        m = null;
        S = -1;
        return this;
      }
      
      public boolean equals(Object paramObject)
      {
        boolean bool2 = false;
        boolean bool1;
        if (paramObject == this) {
          bool1 = true;
        }
        label41:
        do
        {
          do
          {
            do
            {
              return bool1;
              bool1 = bool2;
            } while (!(paramObject instanceof a));
            paramObject = (a)paramObject;
            if (a != null) {
              break;
            }
            bool1 = bool2;
          } while (a != null);
          if (b != null) {
            break label124;
          }
          bool1 = bool2;
        } while (b != null);
        label124:
        while (b.equals(b))
        {
          bool1 = bool2;
          if (c != c) {
            break;
          }
          if ((m != null) && (!m.b())) {
            break label140;
          }
          if (m != null)
          {
            bool1 = bool2;
            if (!m.b()) {
              break;
            }
          }
          return true;
          if (a.equals(a)) {
            break label41;
          }
          return false;
        }
        return false;
        label140:
        return m.equals(m);
      }
      
      public int hashCode()
      {
        int m = 0;
        int n = getClass().getName().hashCode();
        int i;
        int j;
        label33:
        int i1;
        if (a == null)
        {
          i = 0;
          if (b != null) {
            break label101;
          }
          j = 0;
          i1 = c;
          k = m;
          if (this.m != null) {
            if (!this.m.b()) {
              break label112;
            }
          }
        }
        label101:
        label112:
        for (int k = m;; k = this.m.hashCode())
        {
          return ((j + (i + (n + 527) * 31) * 31) * 31 + i1) * 31 + k;
          i = a.hashCode();
          break;
          j = b.hashCode();
          break label33;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */