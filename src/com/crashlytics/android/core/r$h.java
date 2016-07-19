package com.crashlytics.android.core;

import java.io.IOException;

final class r$h
  extends r.j
{
  b a;
  
  public r$h(b paramb)
  {
    super(6, new r.j[0]);
    a = paramb;
  }
  
  public int a()
  {
    return CodedOutputStream.b(1, a);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.a(1, a);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */