package com.google.android.gms.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

class lx$b
  extends FilterInputStream
{
  private int a = 0;
  
  private lx$b(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public int read()
    throws IOException
  {
    int i = super.read();
    if (i != -1) {
      a += 1;
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 != -1) {
      a += paramInt1;
    }
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lx.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */