package com.google.android.gms.internal;

import java.io.IOException;

public abstract interface ky
{
  public static final class a
    extends lq
  {
    private static volatile a[] d;
    public Integer a;
    public ky.e[] b;
    public ky.b[] c;
    
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
        int j;
        Object localObject;
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          a = Integer.valueOf(paramlk.f());
          break;
        case 18: 
          j = lt.b(paramlk, 18);
          if (b == null) {}
          for (i = 0;; i = b.length)
          {
            localObject = new ky.e[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(b, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = new ky.e();
              paramlk.a(localObject[j]);
              paramlk.a();
              j += 1;
            }
          }
          localObject[j] = new ky.e();
          paramlk.a(localObject[j]);
          b = ((ky.e[])localObject);
          break;
        case 26: 
          j = lt.b(paramlk, 26);
          if (c == null) {}
          for (i = 0;; i = c.length)
          {
            localObject = new ky.b[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(c, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = new ky.b();
              paramlk.a(localObject[j]);
              paramlk.a();
              j += 1;
            }
          }
          localObject[j] = new ky.b();
          paramlk.a(localObject[j]);
          c = ((ky.b[])localObject);
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      int j = 0;
      if (a != null) {
        paramzzsn.a(1, a.intValue());
      }
      int i;
      Object localObject;
      if ((b != null) && (b.length > 0))
      {
        i = 0;
        while (i < b.length)
        {
          localObject = b[i];
          if (localObject != null) {
            paramzzsn.a(2, (lq)localObject);
          }
          i += 1;
        }
      }
      if ((c != null) && (c.length > 0))
      {
        i = j;
        while (i < c.length)
        {
          localObject = c[i];
          if (localObject != null) {
            paramzzsn.a(3, (lq)localObject);
          }
          i += 1;
        }
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int m = 0;
      int i = super.b();
      int j = i;
      if (a != null) {
        j = i + zzsn.b(1, a.intValue());
      }
      i = j;
      Object localObject;
      if (b != null)
      {
        i = j;
        if (b.length > 0)
        {
          i = j;
          j = 0;
          while (j < b.length)
          {
            localObject = b[j];
            k = i;
            if (localObject != null) {
              k = i + zzsn.c(2, (lq)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      int k = i;
      if (c != null)
      {
        k = i;
        if (c.length > 0)
        {
          j = m;
          for (;;)
          {
            k = i;
            if (j >= c.length) {
              break;
            }
            localObject = c[j];
            k = i;
            if (localObject != null) {
              k = i + zzsn.c(3, (lq)localObject);
            }
            j += 1;
            i = k;
          }
        }
      }
      return k;
    }
    
    public a c()
    {
      a = null;
      b = ky.e.a();
      c = ky.b.a();
      S = -1;
      return this;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        return true;
        if (!(paramObject instanceof a)) {
          return false;
        }
        paramObject = (a)paramObject;
        if (a == null)
        {
          if (a != null) {
            return false;
          }
        }
        else if (!a.equals(a)) {
          return false;
        }
        if (!lp.a(b, b)) {
          return false;
        }
      } while (lp.a(c, c));
      return false;
    }
    
    public int hashCode()
    {
      int j = getClass().getName().hashCode();
      if (a == null) {}
      for (int i = 0;; i = a.hashCode()) {
        return ((i + (j + 527) * 31) * 31 + lp.a(b)) * 31 + lp.a(c);
      }
    }
  }
  
  public static final class b
    extends lq
  {
    private static volatile b[] f;
    public Integer a;
    public String b;
    public ky.c[] c;
    public Boolean d;
    public ky.d e;
    
    public b()
    {
      c();
    }
    
    public static b[] a()
    {
      if (f == null) {}
      synchronized (lp.a)
      {
        if (f == null) {
          f = new b[0];
        }
        return f;
      }
    }
    
    public b a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          a = Integer.valueOf(paramlk.f());
          break;
        case 18: 
          b = paramlk.h();
          break;
        case 26: 
          int j = lt.b(paramlk, 26);
          if (c == null) {}
          ky.c[] arrayOfc;
          for (i = 0;; i = c.length)
          {
            arrayOfc = new ky.c[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(c, 0, arrayOfc, 0, i);
              j = i;
            }
            while (j < arrayOfc.length - 1)
            {
              arrayOfc[j] = new ky.c();
              paramlk.a(arrayOfc[j]);
              paramlk.a();
              j += 1;
            }
          }
          arrayOfc[j] = new ky.c();
          paramlk.a(arrayOfc[j]);
          c = arrayOfc;
          break;
        case 32: 
          d = Boolean.valueOf(paramlk.g());
          break;
        case 42: 
          if (e == null) {
            e = new ky.d();
          }
          paramlk.a(e);
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.a(1, a.intValue());
      }
      if (b != null) {
        paramzzsn.a(2, b);
      }
      if ((c != null) && (c.length > 0))
      {
        int i = 0;
        while (i < c.length)
        {
          ky.c localc = c[i];
          if (localc != null) {
            paramzzsn.a(3, localc);
          }
          i += 1;
        }
      }
      if (d != null) {
        paramzzsn.a(4, d.booleanValue());
      }
      if (e != null) {
        paramzzsn.a(5, e);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int i = super.b();
      int j = i;
      if (a != null) {
        j = i + zzsn.b(1, a.intValue());
      }
      i = j;
      if (b != null) {
        i = j + zzsn.b(2, b);
      }
      j = i;
      if (c != null)
      {
        j = i;
        if (c.length > 0)
        {
          j = 0;
          while (j < c.length)
          {
            ky.c localc = c[j];
            int k = i;
            if (localc != null) {
              k = i + zzsn.c(3, localc);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (d != null) {
        i = j + zzsn.b(4, d.booleanValue());
      }
      j = i;
      if (e != null) {
        j = i + zzsn.c(5, e);
      }
      return j;
    }
    
    public b c()
    {
      a = null;
      b = null;
      c = ky.c.a();
      d = null;
      e = null;
      S = -1;
      return this;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        do
        {
          return true;
          if (!(paramObject instanceof b)) {
            return false;
          }
          paramObject = (b)paramObject;
          if (a == null)
          {
            if (a != null) {
              return false;
            }
          }
          else if (!a.equals(a)) {
            return false;
          }
          if (b == null)
          {
            if (b != null) {
              return false;
            }
          }
          else if (!b.equals(b)) {
            return false;
          }
          if (!lp.a(c, c)) {
            return false;
          }
          if (d == null)
          {
            if (d != null) {
              return false;
            }
          }
          else if (!d.equals(d)) {
            return false;
          }
          if (e != null) {
            break;
          }
        } while (e == null);
        return false;
      } while (e.equals(e));
      return false;
    }
    
    public int hashCode()
    {
      int m = 0;
      int n = getClass().getName().hashCode();
      int i;
      int j;
      label33:
      int i1;
      int k;
      if (a == null)
      {
        i = 0;
        if (b != null) {
          break label103;
        }
        j = 0;
        i1 = lp.a(c);
        if (d != null) {
          break label114;
        }
        k = 0;
        label51:
        if (e != null) {
          break label125;
        }
      }
      for (;;)
      {
        return (k + ((j + (i + (n + 527) * 31) * 31) * 31 + i1) * 31) * 31 + m;
        i = a.hashCode();
        break;
        label103:
        j = b.hashCode();
        break label33;
        label114:
        k = d.hashCode();
        break label51;
        label125:
        m = e.hashCode();
      }
    }
  }
  
  public static final class c
    extends lq
  {
    private static volatile c[] e;
    public ky.f a;
    public ky.d b;
    public Boolean c;
    public String d;
    
    public c()
    {
      c();
    }
    
    public static c[] a()
    {
      if (e == null) {}
      synchronized (lp.a)
      {
        if (e == null) {
          e = new c[0];
        }
        return e;
      }
    }
    
    public c a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 10: 
          if (a == null) {
            a = new ky.f();
          }
          paramlk.a(a);
          break;
        case 18: 
          if (b == null) {
            b = new ky.d();
          }
          paramlk.a(b);
          break;
        case 24: 
          c = Boolean.valueOf(paramlk.g());
          break;
        case 34: 
          d = paramlk.h();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.a(1, a);
      }
      if (b != null) {
        paramzzsn.a(2, b);
      }
      if (c != null) {
        paramzzsn.a(3, c.booleanValue());
      }
      if (d != null) {
        paramzzsn.a(4, d);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (a != null) {
        i = j + zzsn.c(1, a);
      }
      j = i;
      if (b != null) {
        j = i + zzsn.c(2, b);
      }
      i = j;
      if (c != null) {
        i = j + zzsn.b(3, c.booleanValue());
      }
      j = i;
      if (d != null) {
        j = i + zzsn.b(4, d);
      }
      return j;
    }
    
    public c c()
    {
      a = null;
      b = null;
      c = null;
      d = null;
      S = -1;
      return this;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        do
        {
          return true;
          if (!(paramObject instanceof c)) {
            return false;
          }
          paramObject = (c)paramObject;
          if (a == null)
          {
            if (a != null) {
              return false;
            }
          }
          else if (!a.equals(a)) {
            return false;
          }
          if (b == null)
          {
            if (b != null) {
              return false;
            }
          }
          else if (!b.equals(b)) {
            return false;
          }
          if (c == null)
          {
            if (c != null) {
              return false;
            }
          }
          else if (!c.equals(c)) {
            return false;
          }
          if (d != null) {
            break;
          }
        } while (d == null);
        return false;
      } while (d.equals(d));
      return false;
    }
    
    public int hashCode()
    {
      int m = 0;
      int n = getClass().getName().hashCode();
      int i;
      int j;
      label33:
      int k;
      if (a == null)
      {
        i = 0;
        if (b != null) {
          break label88;
        }
        j = 0;
        if (c != null) {
          break label99;
        }
        k = 0;
        label42:
        if (d != null) {
          break label110;
        }
      }
      for (;;)
      {
        return (k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + m;
        i = a.hashCode();
        break;
        label88:
        j = b.hashCode();
        break label33;
        label99:
        k = c.hashCode();
        break label42;
        label110:
        m = d.hashCode();
      }
    }
  }
  
  public static final class d
    extends lq
  {
    public Integer a;
    public Boolean b;
    public String c;
    public String d;
    public String e;
    
    public d()
    {
      a();
    }
    
    public d a()
    {
      a = null;
      b = null;
      c = null;
      d = null;
      e = null;
      S = -1;
      return this;
    }
    
    public d a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          i = paramlk.f();
          switch (i)
          {
          default: 
            break;
          case 0: 
          case 1: 
          case 2: 
          case 3: 
          case 4: 
            a = Integer.valueOf(i);
          }
          break;
        case 16: 
          b = Boolean.valueOf(paramlk.g());
          break;
        case 26: 
          c = paramlk.h();
          break;
        case 34: 
          d = paramlk.h();
          break;
        case 42: 
          e = paramlk.h();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.a(1, a.intValue());
      }
      if (b != null) {
        paramzzsn.a(2, b.booleanValue());
      }
      if (c != null) {
        paramzzsn.a(3, c);
      }
      if (d != null) {
        paramzzsn.a(4, d);
      }
      if (e != null) {
        paramzzsn.a(5, e);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (a != null) {
        i = j + zzsn.b(1, a.intValue());
      }
      j = i;
      if (b != null) {
        j = i + zzsn.b(2, b.booleanValue());
      }
      i = j;
      if (c != null) {
        i = j + zzsn.b(3, c);
      }
      j = i;
      if (d != null) {
        j = i + zzsn.b(4, d);
      }
      i = j;
      if (e != null) {
        i = j + zzsn.b(5, e);
      }
      return i;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        do
        {
          return true;
          if (!(paramObject instanceof d)) {
            return false;
          }
          paramObject = (d)paramObject;
          if (a == null)
          {
            if (a != null) {
              return false;
            }
          }
          else if (!a.equals(a)) {
            return false;
          }
          if (b == null)
          {
            if (b != null) {
              return false;
            }
          }
          else if (!b.equals(b)) {
            return false;
          }
          if (c == null)
          {
            if (c != null) {
              return false;
            }
          }
          else if (!c.equals(c)) {
            return false;
          }
          if (d == null)
          {
            if (d != null) {
              return false;
            }
          }
          else if (!d.equals(d)) {
            return false;
          }
          if (e != null) {
            break;
          }
        } while (e == null);
        return false;
      } while (e.equals(e));
      return false;
    }
    
    public int hashCode()
    {
      int n = 0;
      int i1 = getClass().getName().hashCode();
      int i;
      int j;
      label33:
      int k;
      label42:
      int m;
      if (a == null)
      {
        i = 0;
        if (b != null) {
          break label104;
        }
        j = 0;
        if (c != null) {
          break label115;
        }
        k = 0;
        if (d != null) {
          break label126;
        }
        m = 0;
        label52:
        if (e != null) {
          break label138;
        }
      }
      for (;;)
      {
        return (m + (k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31) * 31 + n;
        i = a.intValue();
        break;
        label104:
        j = b.hashCode();
        break label33;
        label115:
        k = c.hashCode();
        break label42;
        label126:
        m = d.hashCode();
        break label52;
        label138:
        n = e.hashCode();
      }
    }
  }
  
  public static final class e
    extends lq
  {
    private static volatile e[] d;
    public Integer a;
    public String b;
    public ky.c c;
    
    public e()
    {
      c();
    }
    
    public static e[] a()
    {
      if (d == null) {}
      synchronized (lp.a)
      {
        if (d == null) {
          d = new e[0];
        }
        return d;
      }
    }
    
    public e a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          a = Integer.valueOf(paramlk.f());
          break;
        case 18: 
          b = paramlk.h();
          break;
        case 26: 
          if (c == null) {
            c = new ky.c();
          }
          paramlk.a(c);
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.a(1, a.intValue());
      }
      if (b != null) {
        paramzzsn.a(2, b);
      }
      if (c != null) {
        paramzzsn.a(3, c);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (a != null) {
        i = j + zzsn.b(1, a.intValue());
      }
      j = i;
      if (b != null) {
        j = i + zzsn.b(2, b);
      }
      i = j;
      if (c != null) {
        i = j + zzsn.c(3, c);
      }
      return i;
    }
    
    public e c()
    {
      a = null;
      b = null;
      c = null;
      S = -1;
      return this;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        do
        {
          return true;
          if (!(paramObject instanceof e)) {
            return false;
          }
          paramObject = (e)paramObject;
          if (a == null)
          {
            if (a != null) {
              return false;
            }
          }
          else if (!a.equals(a)) {
            return false;
          }
          if (b == null)
          {
            if (b != null) {
              return false;
            }
          }
          else if (!b.equals(b)) {
            return false;
          }
          if (c != null) {
            break;
          }
        } while (c == null);
        return false;
      } while (c.equals(c));
      return false;
    }
    
    public int hashCode()
    {
      int k = 0;
      int m = getClass().getName().hashCode();
      int i;
      int j;
      if (a == null)
      {
        i = 0;
        if (b != null) {
          break label72;
        }
        j = 0;
        label32:
        if (c != null) {
          break label83;
        }
      }
      for (;;)
      {
        return (j + (i + (m + 527) * 31) * 31) * 31 + k;
        i = a.hashCode();
        break;
        label72:
        j = b.hashCode();
        break label32;
        label83:
        k = c.hashCode();
      }
    }
  }
  
  public static final class f
    extends lq
  {
    public Integer a;
    public String b;
    public Boolean c;
    public String[] d;
    
    public f()
    {
      a();
    }
    
    public f a()
    {
      a = null;
      b = null;
      c = null;
      d = lt.f;
      S = -1;
      return this;
    }
    
    public f a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int i = paramlk.a();
        switch (i)
        {
        default: 
          if (lt.a(paramlk, i)) {}
          break;
        case 0: 
          return this;
        case 8: 
          i = paramlk.f();
          switch (i)
          {
          default: 
            break;
          case 0: 
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
            a = Integer.valueOf(i);
          }
          break;
        case 18: 
          b = paramlk.h();
          break;
        case 24: 
          c = Boolean.valueOf(paramlk.g());
          break;
        case 34: 
          int j = lt.b(paramlk, 34);
          if (d == null) {}
          String[] arrayOfString;
          for (i = 0;; i = d.length)
          {
            arrayOfString = new String[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(d, 0, arrayOfString, 0, i);
              j = i;
            }
            while (j < arrayOfString.length - 1)
            {
              arrayOfString[j] = paramlk.h();
              paramlk.a();
              j += 1;
            }
          }
          arrayOfString[j] = paramlk.h();
          d = arrayOfString;
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (a != null) {
        paramzzsn.a(1, a.intValue());
      }
      if (b != null) {
        paramzzsn.a(2, b);
      }
      if (c != null) {
        paramzzsn.a(3, c.booleanValue());
      }
      if ((d != null) && (d.length > 0))
      {
        int i = 0;
        while (i < d.length)
        {
          String str = d[i];
          if (str != null) {
            paramzzsn.a(4, str);
          }
          i += 1;
        }
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int n = 0;
      int j = super.b();
      int i = j;
      if (a != null) {
        i = j + zzsn.b(1, a.intValue());
      }
      j = i;
      if (b != null) {
        j = i + zzsn.b(2, b);
      }
      i = j;
      if (c != null) {
        i = j + zzsn.b(3, c.booleanValue());
      }
      j = i;
      if (d != null)
      {
        j = i;
        if (d.length > 0)
        {
          int k = 0;
          int m = 0;
          j = n;
          while (j < d.length)
          {
            String str = d[j];
            int i1 = k;
            n = m;
            if (str != null)
            {
              n = m + 1;
              i1 = k + zzsn.b(str);
            }
            j += 1;
            k = i1;
            m = n;
          }
          j = i + k + m * 1;
        }
      }
      return j;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        return true;
        if (!(paramObject instanceof f)) {
          return false;
        }
        paramObject = (f)paramObject;
        if (a == null)
        {
          if (a != null) {
            return false;
          }
        }
        else if (!a.equals(a)) {
          return false;
        }
        if (b == null)
        {
          if (b != null) {
            return false;
          }
        }
        else if (!b.equals(b)) {
          return false;
        }
        if (c == null)
        {
          if (c != null) {
            return false;
          }
        }
        else if (!c.equals(c)) {
          return false;
        }
      } while (lp.a(d, d));
      return false;
    }
    
    public int hashCode()
    {
      int k = 0;
      int m = getClass().getName().hashCode();
      int i;
      int j;
      if (a == null)
      {
        i = 0;
        if (b != null) {
          break label83;
        }
        j = 0;
        label32:
        if (c != null) {
          break label94;
        }
      }
      for (;;)
      {
        return ((j + (i + (m + 527) * 31) * 31) * 31 + k) * 31 + lp.a(d);
        i = a.intValue();
        break;
        label83:
        j = b.hashCode();
        break label32;
        label94:
        k = c.hashCode();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */