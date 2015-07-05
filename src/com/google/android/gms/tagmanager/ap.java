package com.google.android.gms.tagmanager;

import android.text.TextUtils;

class ap
{
  private final long Bv;
  private final long Bw;
  private String By;
  private final long arw;
  
  ap(long paramLong1, long paramLong2, long paramLong3)
  {
    Bv = paramLong1;
    Bw = paramLong2;
    arw = paramLong3;
  }
  
  void ak(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {
      return;
    }
    By = paramString;
  }
  
  long fb()
  {
    return Bv;
  }
  
  long pK()
  {
    return arw;
  }
  
  String pL()
  {
    return By;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */