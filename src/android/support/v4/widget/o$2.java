package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class o$2
  implements Animation.AnimationListener
{
  o$2(o paramo, o.a parama) {}
  
  public void onAnimationEnd(Animation paramAnimation) {}
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    a.l();
    a.b();
    a.b(a.i());
    if (b.a)
    {
      b.a = false;
      paramAnimation.setDuration(1332L);
      a.a(false);
      return;
    }
    o.a(b, (o.a(b) + 1.0F) % 5.0F);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    o.a(b, 0.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.o.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */