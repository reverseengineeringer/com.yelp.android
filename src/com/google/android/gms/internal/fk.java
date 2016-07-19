package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;

@fv
public class fk
  extends fi
{
  private fj g;
  
  fk(Context paramContext, gr.a parama, ib paramib, fl.a parama1)
  {
    super(paramContext, parama, paramib, parama1);
  }
  
  protected void b()
  {
    Object localObject = c.k();
    int j;
    if (e)
    {
      localObject = b.getResources().getDisplayMetrics();
      j = widthPixels;
    }
    for (int i = heightPixels;; i = d)
    {
      g = new fj(this, c, j, i);
      c.l().a(this);
      g.a(e);
      return;
      j = g;
    }
  }
  
  protected int c()
  {
    if (g.c())
    {
      gz.a("Ad-Network indicated no fill with passback URL.");
      return 3;
    }
    if (!g.d()) {
      return 2;
    }
    return -2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */