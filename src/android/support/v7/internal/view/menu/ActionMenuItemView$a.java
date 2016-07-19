package android.support.v7.internal.view.menu;

import android.support.v7.widget.ListPopupWindow;
import android.support.v7.widget.ListPopupWindow.b;

class ActionMenuItemView$a
  extends ListPopupWindow.b
{
  public ActionMenuItemView$a(ActionMenuItemView paramActionMenuItemView)
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
          if (localListPopupWindow.k()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuItemView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */