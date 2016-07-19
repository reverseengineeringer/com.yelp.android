package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.view.View;
import java.util.List;

public class FloatingActionButton$Behavior
  extends CoordinatorLayout.Behavior<FloatingActionButton>
{
  private static final boolean a;
  private Rect b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private float a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
  {
    float f = 0.0F;
    List localList = paramCoordinatorLayout.d(paramFloatingActionButton);
    int j = localList.size();
    int i = 0;
    if (i < j)
    {
      View localView = (View)localList.get(i);
      if ((!(localView instanceof Snackbar.SnackbarLayout)) || (!paramCoordinatorLayout.a(paramFloatingActionButton, localView))) {
        break label88;
      }
      f = Math.min(f, ai.p(localView) - localView.getHeight());
    }
    label88:
    for (;;)
    {
      i += 1;
      break;
      return f;
    }
  }
  
  private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
  {
    if (((CoordinatorLayout.d)paramFloatingActionButton.getLayoutParams()).a() != paramAppBarLayout.getId()) {
      return false;
    }
    if (b == null) {
      b = new Rect();
    }
    Rect localRect = b;
    s.b(paramCoordinatorLayout, paramAppBarLayout, localRect);
    if (bottom <= paramAppBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
      paramFloatingActionButton.b();
    }
    for (;;)
    {
      return true;
      paramFloatingActionButton.a();
    }
  }
  
  private void b(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
  {
    int j = 0;
    Rect localRect = FloatingActionButton.a(paramFloatingActionButton);
    CoordinatorLayout.d locald;
    int i;
    if ((localRect != null) && (localRect.centerX() > 0) && (localRect.centerY() > 0))
    {
      locald = (CoordinatorLayout.d)paramFloatingActionButton.getLayoutParams();
      if (paramFloatingActionButton.getRight() < paramCoordinatorLayout.getWidth() - rightMargin) {
        break label98;
      }
      i = right;
    }
    for (;;)
    {
      if (paramFloatingActionButton.getBottom() >= paramCoordinatorLayout.getBottom() - bottomMargin) {
        j = bottom;
      }
      for (;;)
      {
        paramFloatingActionButton.offsetTopAndBottom(j);
        paramFloatingActionButton.offsetLeftAndRight(i);
        return;
        label98:
        if (paramFloatingActionButton.getLeft() > leftMargin) {
          break label143;
        }
        i = -left;
        break;
        if (paramFloatingActionButton.getTop() <= topMargin) {
          j = -top;
        }
      }
      label143:
      i = 0;
    }
  }
  
  private void d(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
  {
    if (paramFloatingActionButton.getVisibility() != 0) {
      return;
    }
    ai.b(paramFloatingActionButton, a(paramCoordinatorLayout, paramFloatingActionButton));
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, int paramInt)
  {
    List localList = paramCoordinatorLayout.d(paramFloatingActionButton);
    int j = localList.size();
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        View localView = (View)localList.get(i);
        if ((!(localView instanceof AppBarLayout)) || (!a(paramCoordinatorLayout, (AppBarLayout)localView, paramFloatingActionButton))) {}
      }
      else
      {
        paramCoordinatorLayout.a(paramFloatingActionButton, paramInt);
        b(paramCoordinatorLayout, paramFloatingActionButton);
        return true;
      }
      i += 1;
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
  {
    return (a) && ((paramView instanceof Snackbar.SnackbarLayout));
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
  {
    if ((paramView instanceof Snackbar.SnackbarLayout)) {
      d(paramCoordinatorLayout, paramFloatingActionButton, paramView);
    }
    for (;;)
    {
      return false;
      if ((paramView instanceof AppBarLayout)) {
        a(paramCoordinatorLayout, (AppBarLayout)paramView, paramFloatingActionButton);
      }
    }
  }
  
  public void c(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
  {
    if (((paramView instanceof Snackbar.SnackbarLayout)) && (ai.p(paramFloatingActionButton) != 0.0F)) {
      ai.s(paramFloatingActionButton).c(0.0F).d(1.0F).e(1.0F).a(1.0F).a(a.b).a(null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.FloatingActionButton.Behavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */