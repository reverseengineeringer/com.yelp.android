package com.yelp.android.ac;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.aa.l;
import com.yelp.android.w.c;
import com.yelp.android.w.i;
import java.io.InputStream;

public class b
  implements l<Uri, InputStream>
{
  private final Context a;
  private final l<Uri, InputStream> b;
  
  public b(Context paramContext, l<Uri, InputStream> paraml)
  {
    a = paramContext;
    b = paraml;
  }
  
  public c<InputStream> a(Uri paramUri, int paramInt1, int paramInt2)
  {
    return new i(a, paramUri, b.a(paramUri, paramInt1, paramInt2), paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */