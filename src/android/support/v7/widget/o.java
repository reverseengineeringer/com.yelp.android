package android.support.v7.widget;

import java.util.ArrayList;
import java.util.List;

class o
  implements az
{
  final ArrayList<q> a = new ArrayList();
  final ArrayList<q> b = new ArrayList();
  final p c;
  Runnable d;
  final boolean e;
  final ay f;
  private com.yelp.android.e.o<q> g = new com.yelp.android.e.p(30);
  
  o(p paramp)
  {
    this(paramp, false);
  }
  
  o(p paramp, boolean paramBoolean)
  {
    c = paramp;
    e = paramBoolean;
    f = new ay(this);
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    int j = b.size() - 1;
    q localq;
    if (j >= 0)
    {
      localq = (q)b.get(j);
      int k;
      int i;
      if (a == 3) {
        if (b < c)
        {
          k = b;
          i = c;
          label65:
          if ((paramInt1 < k) || (paramInt1 > i)) {
            break label198;
          }
          if (k != b) {
            break label155;
          }
          if (paramInt2 != 0) {
            break label135;
          }
          c += 1;
          label102:
          paramInt1 += 1;
          label106:
          i = paramInt1;
        }
      }
      for (;;)
      {
        j -= 1;
        paramInt1 = i;
        break;
        k = c;
        i = b;
        break label65;
        label135:
        if (paramInt2 != 1) {
          break label102;
        }
        c -= 1;
        break label102;
        label155:
        if (paramInt2 == 0) {
          b += 1;
        }
        for (;;)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 1) {
            b -= 1;
          }
        }
        label198:
        if (paramInt1 < b)
        {
          if (paramInt2 == 0)
          {
            b += 1;
            c += 1;
            break label106;
          }
          if (paramInt2 == 1)
          {
            b -= 1;
            c -= 1;
          }
        }
        break label106;
        if (b <= paramInt1)
        {
          if (a == 0)
          {
            i = paramInt1 - c;
          }
          else
          {
            i = paramInt1;
            if (a == 1) {
              i = paramInt1 + c;
            }
          }
        }
        else if (paramInt2 == 0)
        {
          b += 1;
          i = paramInt1;
        }
        else
        {
          i = paramInt1;
          if (paramInt2 == 1)
          {
            b -= 1;
            i = paramInt1;
          }
        }
      }
    }
    paramInt2 = b.size() - 1;
    if (paramInt2 >= 0)
    {
      localq = (q)b.get(paramInt2);
      if (a == 3) {
        if ((c == b) || (c < 0))
        {
          b.remove(paramInt2);
          a(localq);
        }
      }
      for (;;)
      {
        paramInt2 -= 1;
        break;
        if (c <= 0)
        {
          b.remove(paramInt2);
          a(localq);
        }
      }
    }
    return paramInt1;
  }
  
  private void b(q paramq)
  {
    g(paramq);
  }
  
  private boolean b(int paramInt)
  {
    int k = b.size();
    int i = 0;
    while (i < k)
    {
      q localq = (q)b.get(i);
      if (a == 3)
      {
        if (a(c, i + 1) == paramInt) {
          return true;
        }
      }
      else if (a == 0)
      {
        int m = b;
        int n = c;
        int j = b;
        while (j < m + n)
        {
          if (a(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void c(q paramq)
  {
    int i2 = b;
    int k = b + c;
    int j = -1;
    int i = b;
    int n = 0;
    if (i < k) {
      if ((c.a(i) != null) || (b(i)))
      {
        if (j != 0) {
          break label213;
        }
        e(a(1, i2, n));
      }
    }
    label96:
    label208:
    label213:
    for (int m = 1;; m = 0)
    {
      j = 1;
      if (m != 0)
      {
        m = i - n;
        i = k - n;
        k = 1;
        n = k;
        k = i;
        i = m + 1;
        break;
        if (j != 1) {
          break label208;
        }
        g(a(1, i2, n));
      }
      for (j = 1;; j = 0)
      {
        int i1 = 0;
        m = j;
        j = i1;
        break;
        n += 1;
        m = i;
        i = k;
        k = n;
        break label96;
        q localq = paramq;
        if (n != c)
        {
          a(paramq);
          localq = a(1, i2, n);
        }
        if (j == 0)
        {
          e(localq);
          return;
        }
        g(localq);
        return;
      }
    }
  }
  
  private void d(q paramq)
  {
    int k = b;
    int i2 = b;
    int i3 = c;
    int i = b;
    int i1 = -1;
    int j = 0;
    if (i < i2 + i3)
    {
      int m;
      int n;
      if ((c.a(i) != null) || (b(i)))
      {
        m = j;
        n = k;
        if (i1 == 0)
        {
          e(a(2, k, j));
          m = 0;
          n = i;
        }
        k = n;
      }
      for (j = 1;; j = 0)
      {
        i += 1;
        m += 1;
        i1 = j;
        j = m;
        break;
        m = j;
        n = k;
        if (i1 == 1)
        {
          g(a(2, k, j));
          m = 0;
          n = i;
        }
        k = n;
      }
    }
    q localq = paramq;
    if (j != c)
    {
      a(paramq);
      localq = a(2, k, j);
    }
    if (i1 == 0)
    {
      e(localq);
      return;
    }
    g(localq);
  }
  
  private void e(q paramq)
  {
    if ((a == 0) || (a == 3)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int i1 = b(b, a);
    int j = b;
    int k;
    int n;
    int m;
    label108:
    int i2;
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("op should be remove or update." + paramq);
    case 2: 
      k = 1;
      n = 1;
      m = 1;
      if (m >= c) {
        break label286;
      }
      i2 = b(b + k * m, a);
      switch (a)
      {
      default: 
        i = 0;
        label166:
        if (i == 0) {}
        break;
      }
      break;
    }
    for (int i = n + 1;; i = n)
    {
      m += 1;
      n = i;
      break label108;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label166;
      }
      i = 0;
      break label166;
      if (i2 == i1)
      {
        i = 1;
        break label166;
      }
      i = 0;
      break label166;
      q localq = a(a, i1, n);
      a(localq, j);
      a(localq);
      i = j;
      if (a == 2) {
        i = j + n;
      }
      n = 1;
      i1 = i2;
      j = i;
    }
    label286:
    a(paramq);
    if (n > 0)
    {
      paramq = a(a, i1, n);
      a(paramq, j);
      a(paramq);
    }
  }
  
  private void f(q paramq)
  {
    g(paramq);
  }
  
  private void g(q paramq)
  {
    b.add(paramq);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("Unknown update op type for " + paramq);
    case 0: 
      c.d(b, c);
      return;
    case 3: 
      c.e(b, c);
      return;
    case 1: 
      c.b(b, c);
      return;
    }
    c.c(b, c);
  }
  
  int a(int paramInt)
  {
    return a(paramInt, 0);
  }
  
  int a(int paramInt1, int paramInt2)
  {
    int k = b.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    q localq;
    if (j < k)
    {
      localq = (q)b.get(j);
      if (a == 3) {
        if (b == paramInt2) {
          paramInt1 = c;
        }
      }
    }
    for (;;)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (b < paramInt2) {
        i = paramInt2 - 1;
      }
      paramInt1 = i;
      if (c <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (b <= paramInt2) {
          if (a == 1)
          {
            if (paramInt2 < b + c)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - c;
          }
          else
          {
            paramInt1 = paramInt2;
            if (a == 0) {
              paramInt1 = paramInt2 + c;
            }
          }
        }
      }
    }
  }
  
  public q a(int paramInt1, int paramInt2, int paramInt3)
  {
    q localq = (q)g.a();
    if (localq == null) {
      return new q(paramInt1, paramInt2, paramInt3);
    }
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    return localq;
  }
  
  void a()
  {
    a(a);
    a(b);
  }
  
  public void a(q paramq)
  {
    if (!e) {
      g.a(paramq);
    }
  }
  
  void a(q paramq, int paramInt)
  {
    c.a(paramq);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 1: 
      c.a(paramInt, c);
      return;
    }
    c.c(paramInt, c);
  }
  
  void a(List<q> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a((q)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  void b()
  {
    f.a(a);
    int j = a.size();
    int i = 0;
    if (i < j)
    {
      q localq = (q)a.get(i);
      switch (a)
      {
      }
      for (;;)
      {
        if (d != null) {
          d.run();
        }
        i += 1;
        break;
        f(localq);
        continue;
        c(localq);
        continue;
        d(localq);
        continue;
        b(localq);
      }
    }
    a.clear();
  }
  
  void c()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      c.b((q)b.get(i));
      i += 1;
    }
    a(b);
  }
  
  boolean d()
  {
    return a.size() > 0;
  }
  
  void e()
  {
    c();
    int j = a.size();
    int i = 0;
    if (i < j)
    {
      q localq = (q)a.get(i);
      switch (a)
      {
      }
      for (;;)
      {
        if (d != null) {
          d.run();
        }
        i += 1;
        break;
        c.b(localq);
        c.d(b, c);
        continue;
        c.b(localq);
        c.a(b, c);
        continue;
        c.b(localq);
        c.c(b, c);
        continue;
        c.b(localq);
        c.e(b, c);
      }
    }
    a(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */