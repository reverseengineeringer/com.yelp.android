package com.crashlytics.android.core;

import java.io.IOException;

final class r$c
  extends r.j
{
  private final String a;
  private final String b;
  
  public r$c(com.yelp.android.ax.b paramb)
  {
    super(2, new r.j[0]);
    a = a;
    b = b;
  }
  
  public int a()
  {
    int i = CodedOutputStream.b(1, b.a(a));
    if (b == null) {}
    for (String str = "";; str = b) {
      return CodedOutputStream.b(2, b.a(str)) + i;
    }
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.a(1, b.a(a));
    if (b == null) {}
    for (String str = "";; str = b)
    {
      paramCodedOutputStream.a(2, b.a(str));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */