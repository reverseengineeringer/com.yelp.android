package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class o$1
  implements Animation.AnimationListener
{
  o$1(o paramo) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (o.a(a) == paramAnimation) {
      o.a(a, null);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.o.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */