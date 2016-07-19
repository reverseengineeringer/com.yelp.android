package com.yelp.android.ui.util;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import com.yelp.android.appdata.AppData;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class r
  extends ad
{
  private List<View> a;
  private float b = AppData.b().getResources().getDimension(2131361892);
  private boolean c;
  private float d;
  
  public r(View paramView1, View paramView2, View... paramVarArgs)
  {
    super(paramView1, paramView2);
    a = Arrays.asList(paramVarArgs);
    d = o.getTranslationY();
  }
  
  protected void a()
  {
    c = false;
  }
  
  protected void a(float paramFloat)
  {
    o.setTranslationY(-paramFloat);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((View)localIterator.next()).setTranslationY(-paramFloat);
    }
  }
  
  public void b()
  {
    a(0.0F);
    d();
  }
  
  public void b(float paramFloat)
  {
    if (o.getTranslationY() == -b) {}
    do
    {
      return;
      if (o.getTranslationY() > -b) {
        a(Math.abs(d - paramFloat));
      }
    } while (o.getTranslationY() > -b);
    a(b);
    a();
    d = o.getTranslationY();
  }
  
  public void c()
  {
    a(b);
    a();
  }
  
  public void c(float paramFloat)
  {
    if (o.getTranslationY() == 0.0F) {}
    do
    {
      return;
      if (o.getTranslationY() < 0.0F) {
        a(-d - paramFloat);
      }
    } while (o.getTranslationY() < 0.0F);
    a(0.0F);
    d();
  }
  
  protected void d()
  {
    c = false;
  }
  
  protected void e()
  {
    if (c) {
      return;
    }
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { -o.getTranslationY(), b }).setDuration(av.a);
    localValueAnimator.addUpdateListener(new r.1(this));
    localValueAnimator.addListener(new r.2(this));
    c = true;
    localValueAnimator.start();
  }
  
  public void f()
  {
    if (c) {
      return;
    }
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { -o.getTranslationY(), 0.0F }).setDuration(av.a);
    localValueAnimator.addUpdateListener(new r.3(this));
    localValueAnimator.addListener(new r.4(this));
    c = true;
    localValueAnimator.start();
  }
  
  protected void g()
  {
    d = o.getTranslationY();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onTouch(paramView, paramMotionEvent);
      if ((-o.getTranslationY() > b / 1.25D) && (-o.getTranslationY() != b))
      {
        e();
      }
      else if ((-o.getTranslationY() != b) && (o.getTranslationY() != 0.0F))
      {
        f();
        continue;
        d = o.getTranslationY();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */