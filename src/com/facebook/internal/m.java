package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.LoggingBehavior;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class m
{
  static final String a = m.class.getSimpleName();
  private static volatile i b;
  
  static i a(Context paramContext)
    throws IOException
  {
    try
    {
      if (b == null) {
        b = new i(a, new i.d());
      }
      paramContext = b;
      return paramContext;
    }
    finally {}
  }
  
  static InputStream a(Context paramContext, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    Object localObject = null;
    Uri localUri;
    InputStream localInputStream;
    if (paramHttpURLConnection.getResponseCode() == 200)
    {
      localUri = Uri.parse(paramHttpURLConnection.getURL().toString());
      localInputStream = paramHttpURLConnection.getInputStream();
      localObject = localInputStream;
    }
    try
    {
      if (a(localUri)) {
        localObject = a(paramContext).a(localUri.toString(), new a(localInputStream, paramHttpURLConnection));
      }
      return (InputStream)localObject;
    }
    catch (IOException paramContext) {}
    return localInputStream;
  }
  
  static InputStream a(Uri paramUri, Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramUri != null)
    {
      localObject1 = localObject2;
      if (!a(paramUri)) {}
    }
    try
    {
      localObject1 = a(paramContext).a(paramUri.toString());
      return (InputStream)localObject1;
    }
    catch (IOException paramUri)
    {
      n.a(LoggingBehavior.CACHE, 5, a, paramUri.toString());
    }
    return null;
  }
  
  private static boolean a(Uri paramUri)
  {
    if (paramUri != null)
    {
      paramUri = paramUri.getHost();
      if (paramUri.endsWith("fbcdn.net")) {}
      while ((paramUri.startsWith("fbcdn")) && (paramUri.endsWith("akamaihd.net"))) {
        return true;
      }
    }
    return false;
  }
  
  private static class a
    extends BufferedInputStream
  {
    HttpURLConnection a;
    
    a(InputStream paramInputStream, HttpURLConnection paramHttpURLConnection)
    {
      super(8192);
      a = paramHttpURLConnection;
    }
    
    public void close()
      throws IOException
    {
      super.close();
      u.a(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */