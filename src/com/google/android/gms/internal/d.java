package com.google.android.gms.internal;

import java.io.IOException;

public abstract interface d
{
  public static final class a
    extends ll<a>
  {
    private static volatile a[] n;
    public int a;
    public String b;
    public a[] c;
    public a[] d;
    public a[] e;
    public String f;
    public String g;
    public long h;
    public boolean i;
    public a[] j;
    public int[] k;
    public boolean l;
    
    public a()
    {
      c();
    }
    
    public static a[] a()
    {
      if (n == null) {}
      synchronized (lp.a)
      {
        if (n == null) {
          n = new a[0];
        }
        return n;
      }
    }
    
    public a a(lk paramlk)
      throws IOException
    {
      for (;;)
      {
        int m = paramlk.a();
        int i1;
        Object localObject;
        int i2;
        switch (m)
        {
        default: 
          if (a(paramlk, m)) {}
          break;
        case 0: 
          return this;
        case 8: 
          m = paramlk.f();
          switch (m)
          {
          default: 
            break;
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
          case 7: 
          case 8: 
            a = m;
          }
          break;
        case 18: 
          b = paramlk.h();
          break;
        case 26: 
          i1 = lt.b(paramlk, 26);
          if (c == null) {}
          for (m = 0;; m = c.length)
          {
            localObject = new a[i1 + m];
            i1 = m;
            if (m != 0)
            {
              System.arraycopy(c, 0, localObject, 0, m);
              i1 = m;
            }
            while (i1 < localObject.length - 1)
            {
              localObject[i1] = new a();
              paramlk.a(localObject[i1]);
              paramlk.a();
              i1 += 1;
            }
          }
          localObject[i1] = new a();
          paramlk.a(localObject[i1]);
          c = ((a[])localObject);
          break;
        case 34: 
          i1 = lt.b(paramlk, 34);
          if (d == null) {}
          for (m = 0;; m = d.length)
          {
            localObject = new a[i1 + m];
            i1 = m;
            if (m != 0)
            {
              System.arraycopy(d, 0, localObject, 0, m);
              i1 = m;
            }
            while (i1 < localObject.length - 1)
            {
              localObject[i1] = new a();
              paramlk.a(localObject[i1]);
              paramlk.a();
              i1 += 1;
            }
          }
          localObject[i1] = new a();
          paramlk.a(localObject[i1]);
          d = ((a[])localObject);
          break;
        case 42: 
          i1 = lt.b(paramlk, 42);
          if (e == null) {}
          for (m = 0;; m = e.length)
          {
            localObject = new a[i1 + m];
            i1 = m;
            if (m != 0)
            {
              System.arraycopy(e, 0, localObject, 0, m);
              i1 = m;
            }
            while (i1 < localObject.length - 1)
            {
              localObject[i1] = new a();
              paramlk.a(localObject[i1]);
              paramlk.a();
              i1 += 1;
            }
          }
          localObject[i1] = new a();
          paramlk.a(localObject[i1]);
          e = ((a[])localObject);
          break;
        case 50: 
          f = paramlk.h();
          break;
        case 58: 
          g = paramlk.h();
          break;
        case 64: 
          h = paramlk.e();
          break;
        case 72: 
          l = paramlk.g();
          break;
        case 80: 
          int i3 = lt.b(paramlk, 80);
          localObject = new int[i3];
          i1 = 0;
          m = 0;
          if (i1 < i3)
          {
            if (i1 != 0) {
              paramlk.a();
            }
            int i4 = paramlk.f();
            switch (i4)
            {
            }
            for (;;)
            {
              i1 += 1;
              break;
              i2 = m + 1;
              localObject[m] = i4;
              m = i2;
            }
          }
          if (m != 0)
          {
            if (k == null) {}
            for (i1 = 0;; i1 = k.length)
            {
              if ((i1 != 0) || (m != localObject.length)) {
                break label810;
              }
              k = ((int[])localObject);
              break;
            }
            int[] arrayOfInt = new int[i1 + m];
            if (i1 != 0) {
              System.arraycopy(k, 0, arrayOfInt, 0, i1);
            }
            System.arraycopy(localObject, 0, arrayOfInt, i1, m);
            k = arrayOfInt;
          }
          break;
        case 82: 
          i2 = paramlk.c(paramlk.k());
          m = paramlk.q();
          i1 = 0;
          while (paramlk.o() > 0) {
            switch (paramlk.f())
            {
            default: 
              break;
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: 
            case 8: 
            case 9: 
            case 10: 
            case 11: 
            case 12: 
            case 13: 
            case 14: 
            case 15: 
            case 16: 
            case 17: 
              i1 += 1;
            }
          }
          if (i1 != 0)
          {
            paramlk.e(m);
            if (k == null) {}
            for (m = 0;; m = k.length)
            {
              localObject = new int[i1 + m];
              i1 = m;
              if (m != 0)
              {
                System.arraycopy(k, 0, localObject, 0, m);
                i1 = m;
              }
              while (paramlk.o() > 0)
              {
                m = paramlk.f();
                switch (m)
                {
                default: 
                  break;
                case 1: 
                case 2: 
                case 3: 
                case 4: 
                case 5: 
                case 6: 
                case 7: 
                case 8: 
                case 9: 
                case 10: 
                case 11: 
                case 12: 
                case 13: 
                case 14: 
                case 15: 
                case 16: 
                case 17: 
                  localObject[i1] = m;
                  i1 += 1;
                }
              }
            }
            k = ((int[])localObject);
          }
          paramlk.d(i2);
          break;
        case 90: 
          i1 = lt.b(paramlk, 90);
          if (j == null) {}
          for (m = 0;; m = j.length)
          {
            localObject = new a[i1 + m];
            i1 = m;
            if (m != 0)
            {
              System.arraycopy(j, 0, localObject, 0, m);
              i1 = m;
            }
            while (i1 < localObject.length - 1)
            {
              localObject[i1] = new a();
              paramlk.a(localObject[i1]);
              paramlk.a();
              i1 += 1;
            }
          }
          localObject[i1] = new a();
          paramlk.a(localObject[i1]);
          j = ((a[])localObject);
          break;
        case 96: 
          label810:
          i = paramlk.g();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      int i1 = 0;
      paramzzsn.a(1, a);
      if (!b.equals("")) {
        paramzzsn.a(2, b);
      }
      int m;
      a locala;
      if ((c != null) && (c.length > 0))
      {
        m = 0;
        while (m < c.length)
        {
          locala = c[m];
          if (locala != null) {
            paramzzsn.a(3, locala);
          }
          m += 1;
        }
      }
      if ((d != null) && (d.length > 0))
      {
        m = 0;
        while (m < d.length)
        {
          locala = d[m];
          if (locala != null) {
            paramzzsn.a(4, locala);
          }
          m += 1;
        }
      }
      if ((e != null) && (e.length > 0))
      {
        m = 0;
        while (m < e.length)
        {
          locala = e[m];
          if (locala != null) {
            paramzzsn.a(5, locala);
          }
          m += 1;
        }
      }
      if (!f.equals("")) {
        paramzzsn.a(6, f);
      }
      if (!g.equals("")) {
        paramzzsn.a(7, g);
      }
      if (h != 0L) {
        paramzzsn.b(8, h);
      }
      if (l) {
        paramzzsn.a(9, l);
      }
      if ((k != null) && (k.length > 0))
      {
        m = 0;
        while (m < k.length)
        {
          paramzzsn.a(10, k[m]);
          m += 1;
        }
      }
      if ((j != null) && (j.length > 0))
      {
        m = i1;
        while (m < j.length)
        {
          locala = j[m];
          if (locala != null) {
            paramzzsn.a(11, locala);
          }
          m += 1;
        }
      }
      if (i) {
        paramzzsn.a(12, i);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int i3 = 0;
      int i1 = super.b() + zzsn.b(1, a);
      int m = i1;
      if (!b.equals("")) {
        m = i1 + zzsn.b(2, b);
      }
      i1 = m;
      a locala;
      int i2;
      if (c != null)
      {
        i1 = m;
        if (c.length > 0)
        {
          i1 = 0;
          while (i1 < c.length)
          {
            locala = c[i1];
            i2 = m;
            if (locala != null) {
              i2 = m + zzsn.c(3, locala);
            }
            i1 += 1;
            m = i2;
          }
          i1 = m;
        }
      }
      m = i1;
      if (d != null)
      {
        m = i1;
        if (d.length > 0)
        {
          m = i1;
          i1 = 0;
          while (i1 < d.length)
          {
            locala = d[i1];
            i2 = m;
            if (locala != null) {
              i2 = m + zzsn.c(4, locala);
            }
            i1 += 1;
            m = i2;
          }
        }
      }
      i1 = m;
      if (e != null)
      {
        i1 = m;
        if (e.length > 0)
        {
          i1 = 0;
          while (i1 < e.length)
          {
            locala = e[i1];
            i2 = m;
            if (locala != null) {
              i2 = m + zzsn.c(5, locala);
            }
            i1 += 1;
            m = i2;
          }
          i1 = m;
        }
      }
      m = i1;
      if (!f.equals("")) {
        m = i1 + zzsn.b(6, f);
      }
      i1 = m;
      if (!g.equals("")) {
        i1 = m + zzsn.b(7, g);
      }
      m = i1;
      if (h != 0L) {
        m = i1 + zzsn.d(8, h);
      }
      i1 = m;
      if (l) {
        i1 = m + zzsn.b(9, l);
      }
      m = i1;
      if (k != null)
      {
        m = i1;
        if (k.length > 0)
        {
          m = 0;
          i2 = 0;
          while (m < k.length)
          {
            i2 += zzsn.b(k[m]);
            m += 1;
          }
          m = i1 + i2 + k.length * 1;
        }
      }
      i1 = m;
      if (j != null)
      {
        i1 = m;
        if (j.length > 0)
        {
          i2 = i3;
          for (;;)
          {
            i1 = m;
            if (i2 >= j.length) {
              break;
            }
            locala = j[i2];
            i1 = m;
            if (locala != null) {
              i1 = m + zzsn.c(11, locala);
            }
            i2 += 1;
            m = i1;
          }
        }
      }
      m = i1;
      if (i) {
        m = i1 + zzsn.b(12, i);
      }
      return m;
    }
    
    public a c()
    {
      a = 1;
      b = "";
      c = a();
      d = a();
      e = a();
      f = "";
      g = "";
      h = 0L;
      i = false;
      j = a();
      k = lt.a;
      l = false;
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
      label54:
      label118:
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
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
                  } while (a != a);
                  if (b != null) {
                    break;
                  }
                  bool1 = bool2;
                } while (b != null);
                bool1 = bool2;
              } while (!lp.a(c, c));
              bool1 = bool2;
            } while (!lp.a(d, d));
            bool1 = bool2;
          } while (!lp.a(e, e));
          if (f != null) {
            break label260;
          }
          bool1 = bool2;
        } while (f != null);
        if (g != null) {
          break label276;
        }
        bool1 = bool2;
      } while (g != null);
      label260:
      label276:
      while (g.equals(g))
      {
        bool1 = bool2;
        if (h != h) {
          break;
        }
        bool1 = bool2;
        if (i != i) {
          break;
        }
        bool1 = bool2;
        if (!lp.a(j, j)) {
          break;
        }
        bool1 = bool2;
        if (!lp.a(k, k)) {
          break;
        }
        bool1 = bool2;
        if (l != l) {
          break;
        }
        if ((m != null) && (!m.b())) {
          break label292;
        }
        if (m != null)
        {
          bool1 = bool2;
          if (!m.b()) {
            break;
          }
        }
        return true;
        if (b.equals(b)) {
          break label54;
        }
        return false;
        if (f.equals(f)) {
          break label118;
        }
        return false;
      }
      return false;
      label292:
      return m.equals(m);
    }
    
    public int hashCode()
    {
      int i4 = 1231;
      int i6 = 0;
      int i7 = getClass().getName().hashCode();
      int i8 = a;
      int m;
      int i9;
      int i10;
      int i11;
      int i1;
      label71:
      int i2;
      label80:
      int i12;
      int i3;
      label107:
      int i13;
      int i14;
      if (b == null)
      {
        m = 0;
        i9 = lp.a(c);
        i10 = lp.a(d);
        i11 = lp.a(e);
        if (f != null) {
          break label250;
        }
        i1 = 0;
        if (g != null) {
          break label261;
        }
        i2 = 0;
        i12 = (int)(h ^ h >>> 32);
        if (!i) {
          break label272;
        }
        i3 = 1231;
        i13 = lp.a(j);
        i14 = lp.a(k);
        if (!l) {
          break label280;
        }
        label132:
        i5 = i6;
        if (this.m != null) {
          if (!this.m.b()) {
            break label288;
          }
        }
      }
      label250:
      label261:
      label272:
      label280:
      label288:
      for (int i5 = i6;; i5 = this.m.hashCode())
      {
        return ((((i3 + ((i2 + (i1 + ((((m + ((i7 + 527) * 31 + i8) * 31) * 31 + i9) * 31 + i10) * 31 + i11) * 31) * 31) * 31 + i12) * 31) * 31 + i13) * 31 + i14) * 31 + i4) * 31 + i5;
        m = b.hashCode();
        break;
        i1 = f.hashCode();
        break label71;
        i2 = g.hashCode();
        break label80;
        i3 = 1237;
        break label107;
        i4 = 1237;
        break label132;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */