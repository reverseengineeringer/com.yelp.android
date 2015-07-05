package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class qt
{
  private qr<?, ?> azd;
  private Object aze;
  private List<qy> azf = new ArrayList();
  
  private byte[] toByteArray()
  {
    byte[] arrayOfByte = new byte[c()];
    a(qp.q(arrayOfByte));
    return arrayOfByte;
  }
  
  void a(qp paramqp)
  {
    if (aze != null) {
      azd.a(aze, paramqp);
    }
    for (;;)
    {
      return;
      Iterator localIterator = azf.iterator();
      while (localIterator.hasNext()) {
        ((qy)localIterator.next()).a(paramqp);
      }
    }
  }
  
  void a(qy paramqy)
  {
    azf.add(paramqy);
  }
  
  <T> T b(qr<?, T> paramqr)
  {
    if (aze != null)
    {
      if (azd != paramqr) {
        throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
      }
    }
    else
    {
      azd = paramqr;
      aze = paramqr.m(azf);
      azf = null;
    }
    return (T)aze;
  }
  
  int c()
  {
    int j;
    if (aze != null)
    {
      j = azd.B(aze);
      return j;
    }
    Iterator localIterator = azf.iterator();
    for (int i = 0;; i = ((qy)localIterator.next()).c() + i)
    {
      j = i;
      if (!localIterator.hasNext()) {
        break;
      }
    }
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
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof qt));
      paramObject = (qt)paramObject;
      if ((aze == null) || (aze == null)) {
        break;
      }
      bool1 = bool2;
    } while (azd != azd);
    if (!azd.ayX.isArray()) {
      return aze.equals(aze);
    }
    if ((aze instanceof byte[])) {
      return Arrays.equals((byte[])aze, (byte[])aze);
    }
    if ((aze instanceof int[])) {
      return Arrays.equals((int[])aze, (int[])aze);
    }
    if ((aze instanceof long[])) {
      return Arrays.equals((long[])aze, (long[])aze);
    }
    if ((aze instanceof float[])) {
      return Arrays.equals((float[])aze, (float[])aze);
    }
    if ((aze instanceof double[])) {
      return Arrays.equals((double[])aze, (double[])aze);
    }
    if ((aze instanceof boolean[])) {
      return Arrays.equals((boolean[])aze, (boolean[])aze);
    }
    return Arrays.deepEquals((Object[])aze, (Object[])aze);
    if ((azf != null) && (azf != null)) {
      return azf.equals(azf);
    }
    try
    {
      bool1 = Arrays.equals(toByteArray(), ((qt)paramObject).toByteArray());
      return bool1;
    }
    catch (IOException paramObject)
    {
      throw new IllegalStateException((Throwable)paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = Arrays.hashCode(toByteArray());
      return i + 527;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */