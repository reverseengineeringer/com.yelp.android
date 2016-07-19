package android.support.design.widget;

import android.view.View;

class Snackbar$2
  implements SwipeDismissBehavior.a
{
  Snackbar$2(Snackbar paramSnackbar) {}
  
  public void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
    case 2: 
      n.a().c(Snackbar.a(a));
      return;
    }
    n.a().d(Snackbar.a(a));
  }
  
  public void a(View paramView)
  {
    Snackbar.a(a, 0);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */