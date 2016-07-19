package com.crashlytics.android.core;

import com.yelp.android.ax.f;
import java.io.IOException;

final class r$m
  extends r.j
{
  private final String a;
  private final int b;
  
  public r$m(f paramf, r.k paramk)
  {
    super(1, new r.j[] { paramk });
    a = a;
    b = b;
  }
  
  private boolean d()
  {
    return (a != null) && (a.length() > 0);
  }
  
  public int a()
  {
    if (d()) {}
    for (int i = CodedOutputStream.b(1, b.a(a));; i = 0) {
      return i + CodedOutputStream.d(2, b);
    }
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    if (d()) {
      paramCodedOutputStream.a(1, b.a(a));
    }
    paramCodedOutputStream.a(2, b);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */