package com.google.android.gms.internal;

import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;

@ey
final class dp$c
{
  public final int index;
  public final ViewGroup.LayoutParams rZ;
  public final ViewGroup sa;
  
  public dp$c(gu paramgu)
  {
    rZ = paramgu.getLayoutParams();
    ViewParent localViewParent = paramgu.getParent();
    if ((localViewParent instanceof ViewGroup))
    {
      sa = ((ViewGroup)localViewParent);
      index = sa.indexOfChild(paramgu);
      sa.removeView(paramgu);
      paramgu.z(true);
      return;
    }
    throw new dp.a("Could not get the parent of the WebView for an overlay.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dp.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */