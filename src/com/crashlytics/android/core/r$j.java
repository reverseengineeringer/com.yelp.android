package com.crashlytics.android.core;

import java.io.IOException;

abstract class r$j
{
  private final int a;
  private final j[] b;
  
  public r$j(int paramInt, j... paramVarArgs)
  {
    a = paramInt;
    if (paramVarArgs != null) {}
    for (;;)
    {
      b = paramVarArgs;
      return;
      paramVarArgs = r.a();
    }
  }
  
  public int a()
  {
    return 0;
  }
  
  public void a(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {}
  
  public int b()
  {
    int i = c();
    return i + CodedOutputStream.l(i) + CodedOutputStream.j(a);
  }
  
  public void b(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    paramCodedOutputStream.g(a, 2);
    paramCodedOutputStream.k(c());
    a(paramCodedOutputStream);
    j[] arrayOfj = b;
    int j = arrayOfj.length;
    int i = 0;
    while (i < j)
    {
      arrayOfj[i].b(paramCodedOutputStream);
      i += 1;
    }
  }
  
  public int c()
  {
    int j = a();
    j[] arrayOfj = b;
    int k = arrayOfj.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfj[i].b();
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */