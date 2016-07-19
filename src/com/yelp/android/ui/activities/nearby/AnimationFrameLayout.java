package com.yelp.android.ui.activities.nearby;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;

public class AnimationFrameLayout
  extends FrameLayout
{
  private a a;
  private int b;
  private int c;
  private boolean d = false;
  private boolean e = false;
  
  public AnimationFrameLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public AnimationFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AnimationFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @SuppressLint({"NewApi"})
  private void a(int paramInt, float paramFloat)
  {
    int i = getTranslation();
    float f = Math.abs(paramFloat);
    paramFloat = f;
    if (f < 800.0F) {
      paramFloat = 5000.0F;
    }
    paramFloat /= 1000.0F;
    i = (int)Math.abs((i - paramInt) / paramFloat);
    animate().y(paramInt).setDuration(i).setListener(new AnimationFrameLayout.1(this));
  }
  
  private void c()
  {
    if (a != null) {
      a.b();
    }
  }
  
  private void d()
  {
    if (a != null) {
      a.a();
    }
  }
  
  private void e()
  {
    if (e)
    {
      e = false;
      d();
    }
    while (!d) {
      return;
    }
    d = false;
    c();
  }
  
  public void a()
  {
    setTranslation(c);
    d();
  }
  
  public void a(float paramFloat)
  {
    e = true;
    a(c, paramFloat);
  }
  
  public void b()
  {
    setTranslation(b);
    c();
  }
  
  public void b(float paramFloat)
  {
    d = true;
    a(b, paramFloat);
  }
  
  public int getBottomThreshold()
  {
    return c;
  }
  
  public int getTopThreshold()
  {
    return b;
  }
  
  public int getTranslation()
  {
    return (int)getTranslationY();
  }
  
  protected void onAnimationEnd()
  {
    super.onAnimationEnd();
    e();
  }
  
  protected void onAnimationStart()
  {
    super.onAnimationStart();
    if (d) {
      setTranslation(b);
    }
    while (!e) {
      return;
    }
    setTranslation(c);
  }
  
  public void setBottomThreshold(int paramInt)
  {
    c = paramInt;
  }
  
  public void setSlideFrameCallback(a parama)
  {
    a = parama;
  }
  
  public void setTopThreshold(int paramInt)
  {
    b = paramInt;
  }
  
  public void setTranslation(int paramInt)
  {
    setTranslationY(paramInt);
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.AnimationFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */