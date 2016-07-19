package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

class bb
{
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
}

/* Location:
 * Qualified Name:     android.support.v4.view.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */