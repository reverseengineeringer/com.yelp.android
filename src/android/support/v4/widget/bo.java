package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class bo
  implements Animation.AnimationListener
{
  bo(SwipeRefreshLayout paramSwipeRefreshLayout) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (SwipeRefreshLayout.a(a))
    {
      SwipeRefreshLayout.b(a).setAlpha(255);
      SwipeRefreshLayout.b(a).start();
      if ((SwipeRefreshLayout.c(a)) && (SwipeRefreshLayout.d(a) != null)) {
        SwipeRefreshLayout.d(a).a();
      }
    }
    for (;;)
    {
      SwipeRefreshLayout.b(a, SwipeRefreshLayout.e(a).getTop());
      return;
      SwipeRefreshLayout.b(a).stop();
      SwipeRefreshLayout.e(a).setVisibility(8);
      SwipeRefreshLayout.a(a, 255);
      if (SwipeRefreshLayout.f(a)) {
        SwipeRefreshLayout.a(a, 0.0F);
      } else {
        SwipeRefreshLayout.a(a, a.b - SwipeRefreshLayout.g(a), true);
      }
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */