package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ak
  implements Animation.AnimationListener
{
  ak(ai paramai, an paraman) {}
  
  public void onAnimationEnd(Animation paramAnimation) {}
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    a.j();
    a.a();
    a.b(a.g());
    if (b.a)
    {
      b.a = false;
      paramAnimation.setDuration(1333L);
      a.a(false);
      return;
    }
    ai.a(b, (ai.a(b) + 1.0F) % 5.0F);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    ai.a(b, 0.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */