package com.yelp.android.bh;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzw;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private final Uri a;
  
  private a(Uri paramUri)
  {
    a = paramUri;
  }
  
  public static a a(Uri paramUri)
  {
    paramUri = new a(paramUri);
    if (a(paramUri)) {
      return paramUri;
    }
    throw new IllegalArgumentException("AndroidAppUri validation failed.");
  }
  
  public static a a(String paramString, Uri paramUri)
  {
    paramString = new Uri.Builder().scheme("android-app").authority(paramString);
    if (paramUri != null)
    {
      paramString.appendPath(paramUri.getScheme());
      if (paramUri.getAuthority() != null) {
        paramString.appendPath(paramUri.getAuthority());
      }
      Iterator localIterator = paramUri.getPathSegments().iterator();
      while (localIterator.hasNext()) {
        paramString.appendPath((String)localIterator.next());
      }
      paramString.encodedQuery(paramUri.getEncodedQuery()).encodedFragment(paramUri.getEncodedFragment());
    }
    return new a(paramString.build());
  }
  
  private static boolean a(a parama)
  {
    if (!"android-app".equals(a.getScheme())) {
      throw new IllegalArgumentException("android-app scheme is required.");
    }
    if (TextUtils.isEmpty(parama.b())) {
      throw new IllegalArgumentException("Package name is empty.");
    }
    Uri localUri = a(parama.b(), parama.c()).a();
    if (!a.equals(localUri)) {
      throw new IllegalArgumentException("URI is not canonical.");
    }
    return true;
  }
  
  public Uri a()
  {
    return a;
  }
  
  public String b()
  {
    return a.getAuthority();
  }
  
  public Uri c()
  {
    List localList = a.getPathSegments();
    if (localList.size() > 0)
    {
      String str = (String)localList.get(0);
      Uri.Builder localBuilder = new Uri.Builder();
      localBuilder.scheme(str);
      if (localList.size() > 1)
      {
        localBuilder.authority((String)localList.get(1));
        int i = 2;
        while (i < localList.size())
        {
          localBuilder.appendPath((String)localList.get(i));
          i += 1;
        }
      }
      localBuilder.encodedQuery(a.getEncodedQuery());
      localBuilder.encodedFragment(a.getEncodedFragment());
      return localBuilder.build();
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof a)) {
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { a });
  }
  
  public String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */