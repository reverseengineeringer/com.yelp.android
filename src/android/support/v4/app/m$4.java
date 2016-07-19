package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;

class m$4
  extends m.a
{
  m$4(m paramm, View paramView, Animation paramAnimation, Fragment paramFragment)
  {
    super(paramView, paramAnimation);
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    if (a.mAnimatingAway != null)
    {
      a.mAnimatingAway = null;
      b.a(a, a.mStateAfterAnimating, 0, 0, false);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.m.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */