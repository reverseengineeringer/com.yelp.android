package android.support.v4.app;

import android.support.v4.view.ai;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class m$a
  implements Animation.AnimationListener
{
  private boolean a = false;
  private View b;
  
  public m$a(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null)) {
      return;
    }
    b = paramView;
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (a) {
      b.post(new Runnable()
      {
        public void run()
        {
          ai.a(m.a.a(m.a.this), 0, null);
        }
      });
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    a = m.a(b, paramAnimation);
    if (a) {
      b.post(new Runnable()
      {
        public void run()
        {
          ai.a(m.a.a(m.a.this), 2, null);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.m.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */