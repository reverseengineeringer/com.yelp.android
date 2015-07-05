package com.yelp.android.v;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import com.yelp.android.r.c;

public class o<T>
  implements m<Integer, T>
{
  private final m<Uri, T> a;
  private final Resources b;
  
  public o(Context paramContext, m<Uri, T> paramm)
  {
    this(paramContext.getResources(), paramm);
  }
  
  public o(Resources paramResources, m<Uri, T> paramm)
  {
    b = paramResources;
    a = paramm;
  }
  
  public c<T> a(Integer paramInteger, int paramInt1, int paramInt2)
  {
    paramInteger = Uri.parse("android.resource://" + b.getResourcePackageName(paramInteger.intValue()) + '/' + b.getResourceTypeName(paramInteger.intValue()) + '/' + b.getResourceEntryName(paramInteger.intValue()));
    return a.a(paramInteger, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */