package com.crashlytics.android.core;

import com.yelp.android.ax.e;
import java.io.IOException;

final class r$l
  extends r.j
{
  private final String a;
  private final String b;
  private final long c;
  
  public r$l(e parame)
  {
    super(3, new r.j[0]);
    a = a;
    b = b;
    c = c;
  }
  
  public int a()
  {
    return CodedOutputStream.b(1, b.a(a)) + CodedOutputStream.b(2, b.a(b)) + CodedOutputStream.b(3, c);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.a(1, b.a(a));
    paramCodedOutputStream.a(2, b.a(b));
    paramCodedOutputStream.a(3, c);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */