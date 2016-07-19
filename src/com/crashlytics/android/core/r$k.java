package com.crashlytics.android.core;

import java.io.IOException;

final class r$k
  extends r.j
{
  private final r.j[] a;
  
  public r$k(r.j... paramVarArgs)
  {
    super(0, new r.j[0]);
    a = paramVarArgs;
  }
  
  public int b()
  {
    int i = 0;
    r.j[] arrayOfj = a;
    int k = arrayOfj.length;
    int j = 0;
    while (i < k)
    {
      j += arrayOfj[i].b();
      i += 1;
    }
    return j;
  }
  
  public void b(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    r.j[] arrayOfj = a;
    int j = arrayOfj.length;
    int i = 0;
    while (i < j)
    {
      arrayOfj[i].b(paramCodedOutputStream);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */