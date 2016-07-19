package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;

class ba
{
  public static long a(View paramView)
  {
    return paramView.animate().getDuration();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.animate().alpha(paramFloat);
  }
  
  public static void a(View paramView, long paramLong)
  {
    paramView.animate().setDuration(paramLong);
  }
  
  public static void a(final View paramView, bd parambd)
  {
    if (parambd != null)
    {
      paramView.animate().setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          a.c(paramView);
        }
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          a.b(paramView);
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          a.a(paramView);
        }
      });
      return;
    }
    paramView.animate().setListener(null);
  }
  
  public static void a(View paramView, Interpolator paramInterpolator)
  {
    paramView.animate().setInterpolator(paramInterpolator);
  }
  
  public static void b(View paramView)
  {
    paramView.animate().cancel();
  }
  
  public static void b(View paramView, float paramFloat)
  {
    paramView.animate().translationX(paramFloat);
  }
  
  public static void b(View paramView, long paramLong)
  {
    paramView.animate().setStartDelay(paramLong);
  }
  
  public static void c(View paramView)
  {
    paramView.animate().start();
  }
  
  public static void c(View paramView, float paramFloat)
  {
    paramView.animate().translationY(paramFloat);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    paramView.animate().scaleX(paramFloat);
  }
  
  public static void e(View paramView, float paramFloat)
  {
    paramView.animate().scaleY(paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */