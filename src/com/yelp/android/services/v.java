package com.yelp.android.services;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Adler32;

public class v
{
  Adler32 a = new Adler32();
  
  public static int a(String paramString, int paramInt)
  {
    Adler32 localAdler32 = new Adler32();
    try
    {
      long l = a(new ByteArrayInputStream(paramString.getBytes()), localAdler32);
      return (int)l;
    }
    catch (IOException paramString) {}
    return paramInt;
  }
  
  static long a(InputStream paramInputStream, Adler32 paramAdler32)
  {
    try
    {
      byte[] arrayOfByte = new byte['Ѐ'];
      while (paramInputStream.read(arrayOfByte) != -1) {
        paramAdler32.update(arrayOfByte);
      }
      l = paramAdler32.getValue();
    }
    finally
    {
      paramAdler32.reset();
    }
    long l;
    paramAdler32.reset();
    return l;
  }
  
  public long a(InputStream paramInputStream)
  {
    return a(paramInputStream, a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */