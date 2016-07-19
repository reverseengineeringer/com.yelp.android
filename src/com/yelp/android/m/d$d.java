package com.yelp.android.m;

import android.support.v7.internal.widget.f;
import android.view.Menu;
import android.view.View;
import android.view.Window.Callback;
import com.yelp.android.p.g;

class d$d
  extends g
{
  public d$d(d paramd, Window.Callback paramCallback)
  {
    super(paramCallback);
  }
  
  public View onCreatePanelView(int paramInt)
  {
    switch (paramInt)
    {
    }
    Menu localMenu;
    do
    {
      return super.onCreatePanelView(paramInt);
      localMenu = d.c(a).s();
    } while ((!onPreparePanel(paramInt, null, localMenu)) || (!onMenuOpened(paramInt, localMenu)));
    return d.a(a, localMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
    if ((bool) && (!d.b(a)))
    {
      d.c(a).m();
      d.a(a, true);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */