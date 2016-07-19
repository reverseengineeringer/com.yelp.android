package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v4.view.ai;
import android.view.View;
import android.view.ViewPropertyAnimator;

class h
  extends g
{
  private boolean g;
  
  h(View paramView, m paramm)
  {
    super(paramView, paramm);
  }
  
  void b()
  {
    if ((g) || (e.getVisibility() != 0)) {
      return;
    }
    if ((!ai.D(e)) || (e.isInEditMode()))
    {
      e.setVisibility(8);
      return;
    }
    e.animate().scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setDuration(200L).setInterpolator(a.b).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        h.a(h.this, false);
      }
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        h.a(h.this, false);
        e.setVisibility(8);
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        h.a(h.this, true);
        e.setVisibility(0);
      }
    });
  }
  
  void c()
  {
    if (e.getVisibility() != 0)
    {
      if ((ai.D(e)) && (!e.isInEditMode()))
      {
        e.setAlpha(0.0F);
        e.setScaleY(0.0F);
        e.setScaleX(0.0F);
        e.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(200L).setInterpolator(a.b).setListener(new AnimatorListenerAdapter()
        {
          public void onAnimationStart(Animator paramAnonymousAnimator)
          {
            e.setVisibility(0);
          }
        });
      }
    }
    else {
      return;
    }
    e.setVisibility(0);
    e.setAlpha(1.0F);
    e.setScaleY(1.0F);
    e.setScaleX(1.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */