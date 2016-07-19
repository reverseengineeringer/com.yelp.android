package com.crashlytics.android.core;

import java.io.IOException;

final class r$e
  extends r.j
{
  private final long a;
  private final String b;
  
  public r$e(long paramLong, String paramString, r.j... paramVarArgs)
  {
    super(10, paramVarArgs);
    a = paramLong;
    b = paramString;
  }
  
  public int a()
  {
    return CodedOutputStream.b(1, a) + CodedOutputStream.b(2, b.a(b));
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.a(1, a);
    paramCodedOutputStream.a(2, b.a(b));
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */