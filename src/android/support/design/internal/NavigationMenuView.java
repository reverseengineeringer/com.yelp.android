package android.support.design.internal;

import android.content.Context;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.m;
import android.util.AttributeSet;
import android.widget.ListView;

public class NavigationMenuView
  extends ListView
  implements m
{
  public NavigationMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(f paramf) {}
  
  public int getWindowAnimations()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.NavigationMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */