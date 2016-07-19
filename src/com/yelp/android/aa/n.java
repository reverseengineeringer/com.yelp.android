package com.yelp.android.aa;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.util.Log;
import com.yelp.android.w.c;

public class n<T>
  implements l<Integer, T>
{
  private final l<Uri, T> a;
  private final Resources b;
  
  public n(Context paramContext, l<Uri, T> paraml)
  {
    this(paramContext.getResources(), paraml);
  }
  
  public n(Resources paramResources, l<Uri, T> paraml)
  {
    b = paramResources;
    a = paraml;
  }
  
  public c<T> a(Integer paramInteger, int paramInt1, int paramInt2)
  {
    c localc = null;
    try
    {
      Uri localUri = Uri.parse("android.resource://" + b.getResourcePackageName(paramInteger.intValue()) + '/' + b.getResourceTypeName(paramInteger.intValue()) + '/' + b.getResourceEntryName(paramInteger.intValue()));
      paramInteger = localUri;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;)
      {
        if (Log.isLoggable("ResourceLoader", 5)) {
          Log.w("ResourceLoader", "Received invalid resource id: " + paramInteger, localNotFoundException);
        }
        paramInteger = null;
      }
    }
    if (paramInteger != null) {
      localc = a.a(paramInteger, paramInt1, paramInt2);
    }
    return localc;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */