package com.yelp.android.x;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.r.k;
import com.yelp.android.v.m;
import java.io.InputStream;

public class c
  implements m<Uri, InputStream>
{
  private final Context a;
  private final m<Uri, InputStream> b;
  
  public c(Context paramContext, m<Uri, InputStream> paramm)
  {
    a = paramContext;
    b = paramm;
  }
  
  public com.yelp.android.r.c<InputStream> a(Uri paramUri, int paramInt1, int paramInt2)
  {
    return new k(a, paramUri, b.a(paramUri, paramInt1, paramInt2), paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */