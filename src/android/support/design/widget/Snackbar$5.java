package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class Snackbar$5
  implements Animation.AnimationListener
{
  Snackbar$5(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (Snackbar.d(a) != null) {
      Snackbar.d(a).a(a);
    }
    n.a().b(Snackbar.a(a));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */