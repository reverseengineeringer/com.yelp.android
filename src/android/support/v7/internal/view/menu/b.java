package android.support.v7.internal.view.menu;

import android.support.v7.widget.ListPopupWindow;
import android.support.v7.widget.aq;

class b
  extends aq
{
  public b(ActionMenuItemView paramActionMenuItemView)
  {
    super(paramActionMenuItemView);
  }
  
  public ListPopupWindow a()
  {
    if (ActionMenuItemView.a(a) != null) {
      return ActionMenuItemView.a(a).a();
    }
    return null;
  }
  
  protected boolean b()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (ActionMenuItemView.b(a) != null)
    {
      bool1 = bool2;
      if (ActionMenuItemView.b(a).a(ActionMenuItemView.c(a)))
      {
        ListPopupWindow localListPopupWindow = a();
        bool1 = bool2;
        if (localListPopupWindow != null)
        {
          bool1 = bool2;
          if (localListPopupWindow.b()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  protected boolean c()
  {
    ListPopupWindow localListPopupWindow = a();
    if (localListPopupWindow != null)
    {
      localListPopupWindow.a();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */