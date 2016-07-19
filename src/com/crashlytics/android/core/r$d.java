package com.crashlytics.android.core;

import java.io.IOException;

final class r$d
  extends r.j
{
  private final float a;
  private final int b;
  private final boolean c;
  private final int d;
  private final long e;
  private final long f;
  
  public r$d(float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    super(5, new r.j[0]);
    a = paramFloat;
    b = paramInt1;
    c = paramBoolean;
    d = paramInt2;
    e = paramLong1;
    f = paramLong2;
  }
  
  public int a()
  {
    return 0 + CodedOutputStream.b(1, a) + CodedOutputStream.f(2, b) + CodedOutputStream.b(3, c) + CodedOutputStream.d(4, d) + CodedOutputStream.b(5, e) + CodedOutputStream.b(6, f);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.a(1, a);
    paramCodedOutputStream.c(2, b);
    paramCodedOutputStream.a(3, c);
    paramCodedOutputStream.a(4, d);
    paramCodedOutputStream.a(5, e);
    paramCodedOutputStream.a(6, f);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */