package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

@TargetApi(19)
public class he$g
  extends he.e
{
  public boolean a(View paramView)
  {
    return paramView.isAttachedToWindow();
  }
  
  public ViewGroup.LayoutParams d()
  {
    return new ViewGroup.LayoutParams(-1, -1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */