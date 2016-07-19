package com.flipboard.bottomsheet.commons;

import android.view.MenuItem;

class MenuSheetView$b
{
  private static final b a = new b(null);
  private final MenuItem b;
  
  private MenuSheetView$b(MenuItem paramMenuItem)
  {
    b = paramMenuItem;
  }
  
  public boolean a()
  {
    return this == a;
  }
  
  public MenuItem b()
  {
    return b;
  }
  
  public boolean c()
  {
    return (b != null) && (!b.hasSubMenu()) && (b.isEnabled());
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.MenuSheetView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */