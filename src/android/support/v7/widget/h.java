package android.support.v7.widget;

import java.util.List;

class h
{
  final a a;
  
  public h(a parama)
  {
    a = parama;
  }
  
  private void a(List<a.b> paramList, int paramInt1, int paramInt2)
  {
    a.b localb1 = (a.b)paramList.get(paramInt1);
    a.b localb2 = (a.b)paramList.get(paramInt2);
    switch (a)
    {
    default: 
      return;
    case 1: 
      a(paramList, paramInt1, localb1, paramInt2, localb2);
      return;
    case 0: 
      c(paramList, paramInt1, localb1, paramInt2, localb2);
      return;
    }
    b(paramList, paramInt1, localb1, paramInt2, localb2);
  }
  
  private int b(List<a.b> paramList)
  {
    int i = 0;
    int j = paramList.size() - 1;
    if (j >= 0)
    {
      if (geta == 3)
      {
        if (i == 0) {
          break label49;
        }
        return j;
      }
      i = 1;
    }
    label49:
    for (;;)
    {
      j -= 1;
      break;
      return -1;
    }
  }
  
  private void c(List<a.b> paramList, int paramInt1, a.b paramb1, int paramInt2, a.b paramb2)
  {
    int i = 0;
    if (d < b) {
      i = -1;
    }
    int j = i;
    if (b < b) {
      j = i + 1;
    }
    if (b <= b) {
      b += d;
    }
    if (b <= d) {
      d += d;
    }
    b = (j + b);
    paramList.set(paramInt1, paramb2);
    paramList.set(paramInt2, paramb1);
  }
  
  void a(List<a.b> paramList)
  {
    for (;;)
    {
      int i = b(paramList);
      if (i == -1) {
        break;
      }
      a(paramList, i, i + 1);
    }
  }
  
  void a(List<a.b> paramList, int paramInt1, a.b paramb1, int paramInt2, a.b paramb2)
  {
    int j = 0;
    int i;
    if (b < d)
    {
      if ((b != b) || (d != d - b)) {
        break label623;
      }
      i = 1;
    }
    for (;;)
    {
      label70:
      a.b localb;
      if (d < b)
      {
        b -= 1;
        if (b > b) {
          break label241;
        }
        b += 1;
        localb = null;
      }
      for (;;)
      {
        label97:
        if (i != 0)
        {
          paramList.set(paramInt1, paramb2);
          paramList.remove(paramInt2);
          a.a(paramb1);
        }
        label241:
        label596:
        label606:
        for (;;)
        {
          return;
          if ((b != d + 1) || (d != b - d)) {
            break label614;
          }
          j = 1;
          i = 1;
          break;
          if (d >= b + d) {
            break label70;
          }
          d -= 1;
          a = 1;
          d = 1;
          if (d == 0)
          {
            paramList.remove(paramInt2);
            a.a(paramb2);
            return;
            if (b >= b + d) {
              break label608;
            }
            int k = b;
            int m = d;
            int n = b;
            localb = a.a(1, b + 1, k + m - n, null);
            d = (b - b);
            break label97;
            if (j != 0)
            {
              if (localb != null)
              {
                if (b > b) {
                  b -= d;
                }
                if (d > b) {
                  d -= d;
                }
              }
              if (b > b) {
                b -= d;
              }
              if (d > b) {
                d -= d;
              }
              paramList.set(paramInt1, paramb2);
              if (b == d) {
                break label596;
              }
              paramList.set(paramInt2, paramb1);
            }
            for (;;)
            {
              if (localb == null) {
                break label606;
              }
              paramList.add(paramInt1, localb);
              return;
              if (localb != null)
              {
                if (b >= b) {
                  b -= d;
                }
                if (d >= b) {
                  d -= d;
                }
              }
              if (b >= b) {
                b -= d;
              }
              if (d < b) {
                break;
              }
              d -= d;
              break;
              paramList.remove(paramInt2);
            }
          }
        }
        label608:
        localb = null;
      }
      label614:
      i = 0;
      j = 1;
      continue;
      label623:
      i = 0;
    }
  }
  
  void b(List<a.b> paramList, int paramInt1, a.b paramb1, int paramInt2, a.b paramb2)
  {
    Object localObject2 = null;
    Object localObject1;
    if (d < b)
    {
      b -= 1;
      localObject1 = null;
    }
    for (;;)
    {
      if (b <= b)
      {
        b += 1;
        label54:
        paramList.set(paramInt2, paramb1);
        if (d <= 0) {
          break label243;
        }
        paramList.set(paramInt1, paramb2);
      }
      for (;;)
      {
        if (localObject1 != null) {
          paramList.add(paramInt1, localObject1);
        }
        if (localObject2 != null) {
          paramList.add(paramInt1, localObject2);
        }
        return;
        if (d >= b + d) {
          break label265;
        }
        d -= 1;
        localObject1 = a.a(2, b, 1, c);
        break;
        if (b >= b + d) {
          break label54;
        }
        int i = b + d - b;
        localObject2 = a.a(2, b + 1, i, c);
        d -= i;
        break label54;
        label243:
        paramList.remove(paramInt1);
        a.a(paramb2);
      }
      label265:
      localObject1 = null;
    }
  }
  
  static abstract interface a
  {
    public abstract a.b a(int paramInt1, int paramInt2, int paramInt3, Object paramObject);
    
    public abstract void a(a.b paramb);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */