package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

@fv
public class ac
{
  private final int a;
  private final int b;
  private final int c;
  private final ab d = new ae();
  
  public ac(int paramInt)
  {
    b = paramInt;
    a = 6;
    c = 0;
  }
  
  private String b(String paramString)
  {
    String[] arrayOfString = paramString.split("\n");
    if (arrayOfString.length == 0) {
      return "";
    }
    paramString = a();
    Arrays.sort(arrayOfString, new Comparator()
    {
      public int a(String paramAnonymousString1, String paramAnonymousString2)
      {
        return paramAnonymousString2.length() - paramAnonymousString1.length();
      }
    });
    int i = 0;
    if ((i < arrayOfString.length) && (i < b))
    {
      if (arrayOfString[i].trim().length() == 0) {}
      for (;;)
      {
        i += 1;
        break;
        try
        {
          paramString.a(d.a(arrayOfString[i]));
        }
        catch (IOException localIOException)
        {
          gz.b("Error while writing hash to byteStream", localIOException);
        }
      }
    }
    return paramString.toString();
  }
  
  a a()
  {
    return new a();
  }
  
  String a(String paramString)
  {
    Object localObject1 = paramString.split("\n");
    if (localObject1.length == 0) {
      return "";
    }
    paramString = a();
    Object localObject2 = new PriorityQueue(b, new Comparator()
    {
      public int a(af.a paramAnonymousa1, af.a paramAnonymousa2)
      {
        int i = c - c;
        if (i != 0) {
          return i;
        }
        return (int)(a - a);
      }
    });
    int i = 0;
    if (i < localObject1.length)
    {
      String[] arrayOfString = ad.b(localObject1[i]);
      if (arrayOfString.length == 0) {}
      for (;;)
      {
        i += 1;
        break;
        af.a(arrayOfString, b, a, (PriorityQueue)localObject2);
      }
    }
    localObject1 = ((PriorityQueue)localObject2).iterator();
    for (;;)
    {
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (af.a)((Iterator)localObject1).next();
        try
        {
          paramString.a(d.a(b));
        }
        catch (IOException localIOException)
        {
          gz.b("Error while writing hash to byteStream", localIOException);
        }
      }
    }
    return paramString.toString();
  }
  
  public String a(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      localStringBuffer.append(((String)paramArrayList.next()).toLowerCase(Locale.US));
      localStringBuffer.append('\n');
    }
    switch (c)
    {
    default: 
      return "";
    case 0: 
      return a(localStringBuffer.toString());
    }
    return b(localStringBuffer.toString());
  }
  
  static class a
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */