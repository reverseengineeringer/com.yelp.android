package com.google.android.gms.internal;

import java.util.Map;

class fs$1
  implements cd
{
  fs$1(fs paramfs) {}
  
  public void a(gu arg1, Map<String, String> paramMap)
  {
    synchronized (fs.a(uI))
    {
      if (fs.b(uI).isDone()) {
        return;
      }
      paramMap = new fu(1, paramMap);
      gr.W("Invalid " + paramMap.getType() + " request error: " + paramMap.cT());
      fs.b(uI).a(paramMap);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */