package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

class ac$a
{
  ByteArrayOutputStream a = new ByteArrayOutputStream(4096);
  Base64OutputStream b = new Base64OutputStream(a, 10);
  
  public void a(byte[] paramArrayOfByte)
    throws IOException
  {
    b.write(paramArrayOfByte);
  }
  
  public String toString()
  {
    try
    {
      b.close();
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        try
        {
          a.close();
          String str = a.toString();
          return str;
        }
        catch (IOException localIOException2)
        {
          gz.b("HashManager: Unable to convert to Base64.", localIOException2);
          return "";
        }
        finally
        {
          a = null;
          b = null;
        }
        localIOException1 = localIOException1;
        gz.b("HashManager: Unable to convert to Base64.", localIOException1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ac.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */