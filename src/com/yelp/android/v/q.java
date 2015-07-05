package com.yelp.android.v;

import android.net.Uri;
import com.yelp.android.r.c;
import java.io.File;

public class q<T>
  implements m<String, T>
{
  private final m<Uri, T> a;
  
  public q(m<Uri, T> paramm)
  {
    a = paramm;
  }
  
  private static Uri a(String paramString)
  {
    return Uri.fromFile(new File(paramString));
  }
  
  public c<T> a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject;
    if (paramString.startsWith("/")) {
      localObject = a(paramString);
    }
    for (;;)
    {
      return a.a(localObject, paramInt1, paramInt2);
      Uri localUri = Uri.parse(paramString);
      localObject = localUri;
      if (localUri.getScheme() == null) {
        localObject = a(paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */