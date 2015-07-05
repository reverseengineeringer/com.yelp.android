package com.yelp.android.util;

import android.net.Uri;
import android.text.TextUtils;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.util.EncodingUtils;

public final class m
{
  public static final byte[] a = "\r\n".getBytes();
  public static final byte[] b = "----------------314159265358979323846".getBytes();
  public static final byte[] c = "--".getBytes();
  public static final byte[] d = EncodingUtils.getAsciiBytes("\"");
  public static final byte[] e = EncodingUtils.getAsciiBytes("Content-Disposition: form-data; name=\"");
  public static final byte[] f = EncodingUtils.getAsciiBytes("; filename=\"");
  public static final byte[] g = "Content-Type: ".getBytes();
  public static final byte[] h = EncodingUtils.getAsciiBytes("text/plain");
  public static final byte[] i = EncodingUtils.getAsciiBytes("image");
  
  public static int a()
  {
    return a.length + c.length + b.length + c.length + a.length;
  }
  
  public static int a(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = a.length + c.length + b.length + a.length + e.length + d.length + a.length * 2 + paramInt;
    paramInt = j;
    if (paramArrayOfByte1 != null) {
      paramInt = j + (f.length + paramArrayOfByte1.length + d.length);
    }
    j = paramInt;
    if (paramArrayOfByte2 != null) {
      j = paramInt + (a.length + g.length + paramArrayOfByte2.length);
    }
    return j;
  }
  
  public static String a(List<Cookie> paramList, String paramString)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Cookie localCookie = (Cookie)paramList.next();
      if (TextUtils.equals(localCookie.getName(), paramString)) {
        return localCookie.getValue();
      }
    }
    return null;
  }
  
  public static List<Cookie> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = paramString.split(";");
    int k = paramString.length;
    int j = 0;
    while (j < k)
    {
      String[] arrayOfString = paramString[j].split("=");
      if (arrayOfString.length == 2) {
        localArrayList.add(new BasicClientCookie(arrayOfString[0].trim(), arrayOfString[1].trim()));
      }
      j += 1;
    }
    return localArrayList;
  }
  
  public static Set<String> a(Uri paramUri)
  {
    if (paramUri.isOpaque()) {
      throw new UnsupportedOperationException();
    }
    paramUri = paramUri.getEncodedQuery();
    if (paramUri == null) {
      return Collections.emptySet();
    }
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int k = 0;
    int j;
    do
    {
      int m = paramUri.indexOf('&', k);
      j = m;
      if (m == -1) {
        j = paramUri.length();
      }
      int n = paramUri.indexOf('=', k);
      if (n <= j)
      {
        m = n;
        if (n != -1) {}
      }
      else
      {
        m = j;
      }
      localLinkedHashSet.add(Uri.decode(paramUri.substring(k, m)));
      j += 1;
      k = j;
    } while (j < paramUri.length());
    return Collections.unmodifiableSet(localLinkedHashSet);
  }
  
  public static void a(OutputStream paramOutputStream)
  {
    paramOutputStream.write(a);
    paramOutputStream.write(c);
    paramOutputStream.write(b);
    paramOutputStream.write(c);
    paramOutputStream.write(a);
  }
  
  public static void a(OutputStream paramOutputStream, InputStream paramInputStream, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, n paramn)
  {
    paramOutputStream.write(a);
    paramOutputStream.write(c);
    paramOutputStream.write(b);
    paramOutputStream.write(a);
    paramOutputStream.write(e);
    paramOutputStream.write(paramArrayOfByte1);
    paramOutputStream.write(d);
    if (paramArrayOfByte2 != null)
    {
      paramOutputStream.write(f);
      paramOutputStream.write(paramArrayOfByte2);
      paramOutputStream.write(d);
    }
    if (paramArrayOfByte3 != null)
    {
      paramOutputStream.write(a);
      paramOutputStream.write(g);
      paramOutputStream.write(paramArrayOfByte3);
    }
    paramOutputStream.write(a);
    paramOutputStream.write(a);
    int m = Math.min(1024, paramInputStream.available());
    paramArrayOfByte1 = new byte[m];
    int j = 0;
    for (;;)
    {
      int k = paramInputStream.read(paramArrayOfByte1, 0, m);
      if (k < 0) {
        break;
      }
      paramOutputStream.write(paramArrayOfByte1, 0, k);
      k = j + k;
      j = k;
      if (paramn != null)
      {
        paramn.a(k);
        j = k;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */