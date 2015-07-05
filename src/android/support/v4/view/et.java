package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class et
{
  public static void a(View paramView, ex paramex)
  {
    if (paramex != null)
    {
      paramView.animate().setListener(new eu(paramex, paramView));
      return;
    }
    paramView.animate().setListener(null);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */