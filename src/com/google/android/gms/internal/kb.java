package com.google.android.gms.internal;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class kb
{
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException
  {
    return a(paramInputStream, paramOutputStream, paramBoolean, 1024);
  }
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    long l = 0L;
    try
    {
      for (;;)
      {
        paramInt = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
        if (paramInt == -1) {
          break;
        }
        l += paramInt;
        paramOutputStream.write(arrayOfByte, 0, paramInt);
      }
      if (!paramBoolean) {
        break label71;
      }
    }
    finally
    {
      if (paramBoolean)
      {
        a(paramInputStream);
        a(paramOutputStream);
      }
    }
    a(paramInputStream);
    a(paramOutputStream);
    label71:
    return l;
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    return a(paramInputStream, true);
  }
  
  public static byte[] a(InputStream paramInputStream, boolean paramBoolean)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, localByteArrayOutputStream, paramBoolean);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */