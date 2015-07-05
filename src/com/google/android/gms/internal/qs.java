package com.google.android.gms.internal;

class qs
{
  private static final qt ayZ = new qt();
  private boolean aza = false;
  private int[] azb;
  private qt[] azc;
  private int mSize;
  
  public qs()
  {
    this(10);
  }
  
  public qs(int paramInt)
  {
    paramInt = idealIntArraySize(paramInt);
    azb = new int[paramInt];
    azc = new qt[paramInt];
    mSize = 0;
  }
  
  private boolean a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private boolean a(qt[] paramArrayOfqt1, qt[] paramArrayOfqt2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (!paramArrayOfqt1[i].equals(paramArrayOfqt2[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private void gc()
  {
    int m = mSize;
    int[] arrayOfInt = azb;
    qt[] arrayOfqt = azc;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      qt localqt = arrayOfqt[i];
      k = j;
      if (localqt != ayZ)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfqt[j] = localqt;
          arrayOfqt[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    aza = false;
    mSize = j;
  }
  
  private int hj(int paramInt)
  {
    int i = 0;
    int j = mSize - 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = azb[k];
      if (m < paramInt) {
        i = k + 1;
      } else if (m > paramInt) {
        j = k - 1;
      } else {
        return k;
      }
    }
    return i ^ 0xFFFFFFFF;
  }
  
  private int idealByteArraySize(int paramInt)
  {
    int i = 4;
    for (;;)
    {
      int j = paramInt;
      if (i < 32)
      {
        if (paramInt <= (1 << i) - 12) {
          j = (1 << i) - 12;
        }
      }
      else {
        return j;
      }
      i += 1;
    }
  }
  
  private int idealIntArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 4) / 4;
  }
  
  public void a(int paramInt, qt paramqt)
  {
    int i = hj(paramInt);
    if (i >= 0)
    {
      azc[i] = paramqt;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < mSize) && (azc[j] == ayZ))
    {
      azb[j] = paramInt;
      azc[j] = paramqt;
      return;
    }
    i = j;
    if (aza)
    {
      i = j;
      if (mSize >= azb.length)
      {
        gc();
        i = hj(paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (mSize >= azb.length)
    {
      j = idealIntArraySize(mSize + 1);
      int[] arrayOfInt = new int[j];
      qt[] arrayOfqt = new qt[j];
      System.arraycopy(azb, 0, arrayOfInt, 0, azb.length);
      System.arraycopy(azc, 0, arrayOfqt, 0, azc.length);
      azb = arrayOfInt;
      azc = arrayOfqt;
    }
    if (mSize - i != 0)
    {
      System.arraycopy(azb, i, azb, i + 1, mSize - i);
      System.arraycopy(azc, i, azc, i + 1, mSize - i);
    }
    azb[i] = paramInt;
    azc[i] = paramqt;
    mSize += 1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof qs)) {
        return false;
      }
      paramObject = (qs)paramObject;
      if (size() != ((qs)paramObject).size()) {
        return false;
      }
    } while ((a(azb, azb, mSize)) && (a(azc, azc, mSize)));
    return false;
  }
  
  public int hashCode()
  {
    if (aza) {
      gc();
    }
    int j = 17;
    int i = 0;
    while (i < mSize)
    {
      j = (j * 31 + azb[i]) * 31 + azc[i].hashCode();
      i += 1;
    }
    return j;
  }
  
  public qt hh(int paramInt)
  {
    paramInt = hj(paramInt);
    if ((paramInt < 0) || (azc[paramInt] == ayZ)) {
      return null;
    }
    return azc[paramInt];
  }
  
  public qt hi(int paramInt)
  {
    if (aza) {
      gc();
    }
    return azc[paramInt];
  }
  
  public boolean isEmpty()
  {
    return size() == 0;
  }
  
  public int size()
  {
    if (aza) {
      gc();
    }
    return mSize;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */