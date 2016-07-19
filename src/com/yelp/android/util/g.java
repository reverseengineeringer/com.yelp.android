package com.yelp.android.util;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.util.EncodingUtils;

public final class g
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
  
  public static Map<String, String> a(HttpUriRequest paramHttpUriRequest)
  {
    Object localObject2 = c(paramHttpUriRequest);
    if (localObject2 == null) {
      return Collections.emptyMap();
    }
    Object localObject1 = new ArrayList();
    try
    {
      localObject2 = URLEncodedUtils.parse(new URI((String)localObject2), "UTF-8");
      if (localObject2 != null) {
        ((List)localObject1).addAll((Collection)localObject2);
      }
    }
    catch (URISyntaxException localURISyntaxException)
    {
      for (;;)
      {
        YelpLog.remoteError("HttpUtils", "Error in parsing query parameters.", localURISyntaxException);
        continue;
        if (paramHttpUriRequest != null) {
          try
          {
            paramHttpUriRequest = URLEncodedUtils.parse(paramHttpUriRequest);
            if (paramHttpUriRequest != null) {
              ((List)localObject1).addAll(paramHttpUriRequest);
            }
          }
          catch (IOException paramHttpUriRequest)
          {
            Log.e("HttpUtils", "Error in parsing post parameters.", paramHttpUriRequest);
          }
        }
      }
    }
    if ((paramHttpUriRequest instanceof HttpPost))
    {
      paramHttpUriRequest = ((HttpPost)paramHttpUriRequest).getEntity();
      if ((paramHttpUriRequest instanceof j)) {
        ((List)localObject1).addAll(((j)paramHttpUriRequest).a());
      }
    }
    else
    {
      paramHttpUriRequest = new HashMap();
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (NameValuePair)((Iterator)localObject1).next();
        paramHttpUriRequest.put(((NameValuePair)localObject2).getName(), ((NameValuePair)localObject2).getValue());
      }
    }
    return paramHttpUriRequest;
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
    throws IOException
  {
    paramOutputStream.write(a);
    paramOutputStream.write(c);
    paramOutputStream.write(b);
    paramOutputStream.write(c);
    paramOutputStream.write(a);
  }
  
  public static void a(OutputStream paramOutputStream, InputStream paramInputStream, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, a parama)
    throws IOException
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
      if (parama != null)
      {
        parama.a(k);
        j = k;
      }
    }
  }
  
  public static List<byte[]> b(HttpUriRequest paramHttpUriRequest)
  {
    ArrayList localArrayList = new ArrayList();
    if (!(paramHttpUriRequest instanceof HttpPost)) {
      return localArrayList;
    }
    Object localObject = ((HttpPost)paramHttpUriRequest).getEntity();
    if ((localObject instanceof j))
    {
      localObject = (j)localObject;
      try
      {
        localObject = ((j)localObject).b().iterator();
        while (((Iterator)localObject).hasNext()) {
          localArrayList.add(e.a(nextd));
        }
        return localArrayList;
      }
      catch (IOException localIOException1)
      {
        Log.e("HttpUtils", "Error occurred while retrieving contents from request:  " + StringUtils.a(paramHttpUriRequest));
      }
    }
    for (;;)
    {
      try
      {
        localArrayList.add(e.a(localIOException1.getContent()));
      }
      catch (IOException localIOException2)
      {
        Log.e("HttpUtils", "Error occurred while retrieving contents from request:  " + StringUtils.a(paramHttpUriRequest));
      }
    }
  }
  
  public static String c(HttpUriRequest paramHttpUriRequest)
  {
    try
    {
      paramHttpUriRequest = paramHttpUriRequest.getURI().toURL().toString();
      return paramHttpUriRequest;
    }
    catch (MalformedURLException paramHttpUriRequest)
    {
      YelpLog.remoteError("HttpUtils", "Could not retrieve the url from the request.", paramHttpUriRequest);
    }
    return null;
  }
  
  public static String d(HttpUriRequest paramHttpUriRequest)
  {
    return paramHttpUriRequest.getURI().getPath();
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */