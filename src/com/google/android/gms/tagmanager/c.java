package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class c
  extends aj
{
  private static final String ID = com.google.android.gms.internal.a.v.toString();
  private final a aqc;
  
  public c(Context paramContext)
  {
    this(a.W(paramContext));
  }
  
  c(a parama)
  {
    super(ID, new String[0]);
    aqc = parama;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    if (!aqc.isLimitAdTrackingEnabled()) {}
    for (boolean bool = true;; bool = false) {
      return di.u(Boolean.valueOf(bool));
    }
  }
  
  public boolean pe()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */