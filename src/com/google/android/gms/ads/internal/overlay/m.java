package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.ib;

@fv
public class m
  extends i
{
  public h a(Context paramContext, ib paramib, int paramInt, ax paramax, au paramau)
  {
    if (!a(paramContext)) {
      return null;
    }
    return new c(paramContext, new s(paramContext, paramib.o(), paramib.u(), paramax, paramau));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */