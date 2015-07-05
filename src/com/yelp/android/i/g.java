package com.yelp.android.i;

import android.support.v7.internal.widget.ah;
import android.support.v7.widget.dl;
import android.view.Menu;
import android.view.View;

class g
  extends dl
{
  public g(a parama, h paramh)
  {
    super(paramh);
  }
  
  public View a(int paramInt)
  {
    switch (paramInt)
    {
    }
    Menu localMenu;
    do
    {
      return super.a(paramInt);
      localMenu = a.c(a).t();
    } while ((a.a(a) == null) || (!a.a(a).a(paramInt, null, localMenu)) || (!a.a(a).c(paramInt, localMenu)));
    return a.a(a, localMenu);
  }
  
  public boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    boolean bool = super.a(paramInt, paramView, paramMenu);
    if ((bool) && (!a.b(a)))
    {
      a.c(a).n();
      a.a(a, true);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.i.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */