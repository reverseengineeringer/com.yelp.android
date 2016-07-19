package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

class h$1
  extends AnimatorListenerAdapter
{
  h$1(h paramh) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    h.a(a, false);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    h.a(a, false);
    a.e.setVisibility(8);
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    h.a(a, true);
    a.e.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.h.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */