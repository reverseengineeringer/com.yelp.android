package com.yelp.android.aa;

import android.net.Uri;
import com.yelp.android.w.c;
import java.io.File;

public class b<T>
  implements l<File, T>
{
  private final l<Uri, T> a;
  
  public b(l<Uri, T> paraml)
  {
    a = paraml;
  }
  
  public c<T> a(File paramFile, int paramInt1, int paramInt2)
  {
    return a.a(Uri.fromFile(paramFile), paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */