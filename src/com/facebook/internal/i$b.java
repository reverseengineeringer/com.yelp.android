package com.facebook.internal;

import java.io.IOException;
import java.io.OutputStream;

class i$b
  extends OutputStream
{
  final OutputStream a;
  final i.f b;
  
  i$b(OutputStream paramOutputStream, i.f paramf)
  {
    a = paramOutputStream;
    b = paramf;
  }
  
  public void close()
    throws IOException
  {
    try
    {
      a.close();
      return;
    }
    finally
    {
      b.a();
    }
  }
  
  public void flush()
    throws IOException
  {
    a.flush();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    a.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    a.write(paramArrayOfByte);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */