package com.google.android.gms.internal;

import android.text.TextUtils;

@fv
public class ar
{
  public aq a(ap paramap)
  {
    if (paramap == null) {
      throw new IllegalArgumentException("CSI configuration can't be null. ");
    }
    if (!paramap.a())
    {
      gz.e("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
      return null;
    }
    if (paramap.c() == null) {
      throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
    if (TextUtils.isEmpty(paramap.d())) {
      throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
    }
    return new aq(paramap.c(), paramap.d(), paramap.b(), paramap.e());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */