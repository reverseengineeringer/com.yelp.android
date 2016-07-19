package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.n;
import io.fabric.sdk.android.services.common.n.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

class t
  implements o
{
  private final File a;
  private final int b;
  private n c;
  
  public t(File paramFile, int paramInt)
  {
    a = paramFile;
    b = paramInt;
  }
  
  private void b(long paramLong, String paramString)
  {
    if (c == null) {}
    for (;;)
    {
      return;
      if (paramString == null)
      {
        paramString = "null";
        try
        {
          for (;;)
          {
            int i = b / 4;
            String str = paramString;
            if (paramString.length() > i) {
              str = "..." + paramString.substring(paramString.length() - i);
            }
            paramString = str.replaceAll("\r", " ").replaceAll("\n", " ");
            paramString = String.format(Locale.US, "%d %s%n", new Object[] { Long.valueOf(paramLong), paramString }).getBytes("UTF-8");
            c.a(paramString);
            while ((!c.b()) && (c.a() > b)) {
              c.c();
            }
          }
        }
        catch (IOException paramString)
        {
          c.h().e("Fabric", "There was a problem writing to the Crashlytics log.", paramString);
          return;
        }
      }
    }
  }
  
  private void d()
  {
    if (c == null) {}
    try
    {
      c = new n(a);
      return;
    }
    catch (IOException localIOException)
    {
      c.h().e("Fabric", "Could not open log file: " + a, localIOException);
    }
  }
  
  public b a()
  {
    if (!a.exists()) {}
    do
    {
      return null;
      d();
    } while (c == null);
    final int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 0;
    final byte[] arrayOfByte = new byte[c.a()];
    try
    {
      c.a(new n.c()
      {
        public void a(InputStream paramAnonymousInputStream, int paramAnonymousInt)
          throws IOException
        {
          try
          {
            paramAnonymousInputStream.read(arrayOfByte, arrayOfInt[0], paramAnonymousInt);
            int[] arrayOfInt = arrayOfInt;
            arrayOfInt[0] += paramAnonymousInt;
            return;
          }
          finally
          {
            paramAnonymousInputStream.close();
          }
        }
      });
      return b.a(arrayOfByte, 0, arrayOfInt[0]);
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        c.h().e("Fabric", "A problem occurred while reading the Crashlytics log file.", localIOException);
      }
    }
  }
  
  public void a(long paramLong, String paramString)
  {
    d();
    b(paramLong, paramString);
  }
  
  public void b()
  {
    CommonUtils.a(c, "There was a problem closing the Crashlytics log file.");
    c = null;
  }
  
  public void c()
  {
    b();
    a.delete();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */