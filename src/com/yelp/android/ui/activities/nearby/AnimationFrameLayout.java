package com.yelp.android.ui.activities.nearby;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.yelp.android.appdata.n;

public class AnimationFrameLayout
  extends FrameLayout
{
  private f a;
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
    int i = getTranslation() - paramInt;
    float f = Math.abs(paramFloat);
    paramFloat = f;
    if (f < 800.0F) {
      paramFloat = 5000.0F;
    }
    paramFloat /= 1000.0F;
    int j = (int)Math.abs(i / paramFloat);
    if (n.a(12))
    {
      animate().y(paramInt).setDuration(j).setListener(new e(this));
      return;
    }
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, i, 0.0F);
    localTranslateAnimation.setDuration(j);
    startAnimation(localTranslateAnimation);
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
  
  @SuppressLint({"NewApi"})
  public int getTranslation()
  {
    if (n.a(12)) {
      return (int)getTranslationY();
    }
    return getLayoutParamstopMargin;
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
  
  public void setSlideFrameCallback(f paramf)
  {
    a = paramf;
  }
  
  public void setTopThreshold(int paramInt)
  {
    b = paramInt;
  }
  
  @SuppressLint({"NewApi"})
  public void setTranslation(int paramInt)
  {
    if (n.a(12))
    {
      setTranslationY(paramInt);
      return;
    }
    ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(getLayoutParams());
    topMargin = paramInt;
    setLayoutParams(new RelativeLayout.LayoutParams(localMarginLayoutParams));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.AnimationFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */