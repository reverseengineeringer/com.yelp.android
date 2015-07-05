package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class ev
{
  public static void a(View paramView, ez paramez)
  {
    paramView.animate().setUpdateListener(new ew(paramez, paramView));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */