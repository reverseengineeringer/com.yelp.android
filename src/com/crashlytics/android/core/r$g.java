package com.crashlytics.android.core;

import com.yelp.android.ax.f.a;
import java.io.IOException;

final class r$g
  extends r.j
{
  private final long a;
  private final String b;
  private final String c;
  private final long d;
  private final int e;
  
  public r$g(f.a parama)
  {
    super(3, new r.j[0]);
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
  }
  
  public int a()
  {
    return CodedOutputStream.b(1, a) + CodedOutputStream.b(2, b.a(b)) + CodedOutputStream.b(3, b.a(c)) + CodedOutputStream.b(4, d) + CodedOutputStream.d(5, e);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.a(1, a);
    paramCodedOutputStream.a(2, b.a(b));
    paramCodedOutputStream.a(3, b.a(c));
    paramCodedOutputStream.a(4, d);
    paramCodedOutputStream.a(5, e);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */