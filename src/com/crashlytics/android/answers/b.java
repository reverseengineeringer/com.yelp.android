package com.crashlytics.android.answers;

import com.yelp.android.cs.c;
import com.yelp.android.cs.e;
import com.yelp.android.ct.k;
import java.io.File;
import java.util.List;

class b
  implements k
{
  private final l a;
  private final i b;
  
  b(l paraml, i parami)
  {
    a = paraml;
    b = parami;
  }
  
  public static b a(l paraml)
  {
    return new b(paraml, new i(new e(new h(new c(1000L, 8), 0.1D), new com.yelp.android.cs.b(5))));
  }
  
  public boolean a(List<File> paramList)
  {
    boolean bool = false;
    long l = System.nanoTime();
    if (b.a(l))
    {
      if (a.a(paramList))
      {
        b.a();
        bool = true;
      }
    }
    else {
      return bool;
    }
    b.b(l);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */