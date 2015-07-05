package com.yelp.android.v;

import android.net.Uri;
import com.yelp.android.r.c;
import java.io.File;

public class b<T>
  implements m<File, T>
{
  private final m<Uri, T> a;
  
  public b(m<Uri, T> paramm)
  {
    a = paramm;
  }
  
  public c<T> a(File paramFile, int paramInt1, int paramInt2)
  {
    return a.a(Uri.fromFile(paramFile), paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */