package android.support.design.widget;

import android.view.MotionEvent;

final class Snackbar$a
  extends SwipeDismissBehavior<Snackbar.SnackbarLayout>
{
  Snackbar$a(Snackbar paramSnackbar) {}
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, Snackbar.SnackbarLayout paramSnackbarLayout, MotionEvent paramMotionEvent)
  {
    if (paramCoordinatorLayout.a(paramSnackbarLayout, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
      switch (paramMotionEvent.getActionMasked())
      {
      }
    }
    for (;;)
    {
      return super.b(paramCoordinatorLayout, paramSnackbarLayout, paramMotionEvent);
      n.a().c(Snackbar.a(a));
      continue;
      n.a().d(Snackbar.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */