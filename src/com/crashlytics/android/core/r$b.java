package com.crashlytics.android.core;

import com.yelp.android.ax.a;
import java.io.IOException;

final class r$b
  extends r.j
{
  private final long a;
  private final long b;
  private final String c;
  private final String d;
  
  public r$b(a parama)
  {
    super(4, new r.j[0]);
    a = a;
    b = b;
    c = c;
    d = d;
  }
  
  public int a()
  {
    int i = CodedOutputStream.b(1, a);
    int j = CodedOutputStream.b(2, b);
    return i + CodedOutputStream.b(3, b.a(c)) + j + CodedOutputStream.b(4, b.a(d));
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.a(1, a);
    paramCodedOutputStream.a(2, b);
    paramCodedOutputStream.a(3, b.a(c));
    paramCodedOutputStream.a(4, b.a(d));
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */