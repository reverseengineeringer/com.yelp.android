package android.support.v7.widget;

import android.util.SparseIntArray;

public abstract class ag
{
  final SparseIntArray a;
  private boolean b;
  
  public abstract int a(int paramInt);
  
  int a(int paramInt1, int paramInt2)
  {
    int i;
    if (!b) {
      i = b(paramInt1, paramInt2);
    }
    int j;
    do
    {
      return i;
      j = a.get(paramInt1, -1);
      i = j;
    } while (j != -1);
    paramInt2 = b(paramInt1, paramInt2);
    a.put(paramInt1, paramInt2);
    return paramInt2;
  }
  
  public void a()
  {
    a.clear();
  }
  
  int b(int paramInt)
  {
    int i = 0;
    int j = a.size() - 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      if (a.keyAt(k) < paramInt) {
        i = k + 1;
      } else {
        j = k - 1;
      }
    }
    paramInt = i - 1;
    if ((paramInt >= 0) && (paramInt < a.size())) {
      return a.keyAt(paramInt);
    }
    return -1;
  }
  
  public int b(int paramInt1, int paramInt2)
  {
    int n = a(paramInt1);
    if (n == paramInt2) {
      return 0;
    }
    int j;
    int i;
    if ((b) && (a.size() > 0))
    {
      j = b(paramInt1);
      if (j >= 0)
      {
        i = a.get(j) + a(j);
        j += 1;
      }
    }
    for (;;)
    {
      if (j < paramInt1)
      {
        int k = a(j);
        int m = i + k;
        if (m == paramInt2) {
          i = 0;
        }
        for (;;)
        {
          j += 1;
          break;
          i = k;
          if (m <= paramInt2) {
            i = m;
          }
        }
      }
      if (i + n > paramInt2) {
        break;
      }
      return i;
      j = 0;
      i = 0;
    }
  }
  
  public int c(int paramInt1, int paramInt2)
  {
    int n = a(paramInt1);
    int k = 0;
    int i = 0;
    int j = 0;
    int m;
    if (k < paramInt1)
    {
      m = a(k);
      j += m;
      if (j == paramInt2)
      {
        j = i + 1;
        i = 0;
      }
    }
    for (;;)
    {
      m = k + 1;
      k = i;
      i = j;
      j = k;
      k = m;
      break;
      if (j > paramInt2)
      {
        j = i + 1;
        i = m;
        continue;
        paramInt1 = i;
        if (j + n > paramInt2) {
          paramInt1 = i + 1;
        }
        return paramInt1;
      }
      else
      {
        m = j;
        j = i;
        i = m;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */