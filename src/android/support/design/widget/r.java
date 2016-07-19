package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.animation.Interpolator;

class r
  extends p.e
{
  final ValueAnimator a = new ValueAnimator();
  
  public void a()
  {
    a.start();
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    a.setFloatValues(new float[] { paramFloat1, paramFloat2 });
  }
  
  public void a(int paramInt)
  {
    a.setDuration(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.setIntValues(new int[] { paramInt1, paramInt2 });
  }
  
  public void a(final p.e.a parama)
  {
    a.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        parama.c();
      }
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        parama.b();
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        parama.a();
      }
    });
  }
  
  public void a(final p.e.b paramb)
  {
    a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        paramb.a();
      }
    });
  }
  
  public void a(Interpolator paramInterpolator)
  {
    a.setInterpolator(paramInterpolator);
  }
  
  public boolean b()
  {
    return a.isRunning();
  }
  
  public int c()
  {
    return ((Integer)a.getAnimatedValue()).intValue();
  }
  
  public float d()
  {
    return ((Float)a.getAnimatedValue()).floatValue();
  }
  
  public void e()
  {
    a.cancel();
  }
  
  public float f()
  {
    return a.getAnimatedFraction();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */