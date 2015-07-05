package com.yelp.android.ui.activities.drawer;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import com.yelp.android.DinoListView;
import com.yelp.android.appdata.ao;
import com.yelp.android.ui.h;
import java.util.Timer;

public class a
  implements AbsListView.OnScrollListener
{
  private final int a = ao.m;
  private final int b = ao.a(585);
  private final int c = ao.a(105);
  private final int d = ao.a(108);
  private DinoListView e;
  private ImageView f;
  private View g;
  private Activity h;
  private Timer i;
  private h j;
  private AnimatorSet k;
  private AnimatorSet l;
  private int m;
  private int n;
  private int o;
  private int p;
  private boolean q;
  private final Property<ImageView, Integer> r = new f(this, Integer.class, "height");
  private View.OnClickListener s = new g(this);
  
  public a(DinoListView paramDinoListView, ImageView paramImageView, View paramView, Activity paramActivity, int paramInt1, int paramInt2, h paramh)
  {
    e = paramDinoListView;
    f = paramImageView;
    g = paramView;
    h = paramActivity;
    n = paramInt1;
    o = paramInt2;
    p = paramh.a();
    j = paramh;
    g.setOnClickListener(s);
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    return (paramInt1 >= 0) && (paramInt2 >= 3);
  }
  
  private void b(int paramInt)
  {
    int i2 = 0;
    View localView = e.getChildAt(0);
    if (localView != null) {
      if (paramInt <= 0) {
        break label75;
      }
    }
    label75:
    for (int i1 = n;; i1 = 0)
    {
      if (paramInt > 1) {
        i2 = o;
      }
      i2 += i1 + 0;
      i1 = i2;
      if (paramInt > 2) {
        i1 = i2 + j.b(paramInt - 3);
      }
      m = (i1 + -localView.getTop());
      return;
    }
  }
  
  private void c()
  {
    e.setOnTouchListener(new b(this));
    q = true;
    i = new Timer();
    i.scheduleAtFixedRate(new c(this), 0L, 5L);
  }
  
  private void c(int paramInt)
  {
    f.getLayoutParams().height = f.getDrawable().getIntrinsicHeight();
    f.requestLayout();
    if (paramInt <= 1) {
      j.e();
    }
    e.setSelection(paramInt);
    e.setOnTouchListener(null);
    g.setVisibility(4);
    f.setVisibility(8);
    q = false;
  }
  
  private void d()
  {
    f.setVisibility(0);
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(f, View.TRANSLATION_Y, new float[] { -b, -c });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(f, View.TRANSLATION_Y, new float[] { -d });
    ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(f, View.ROTATION, new float[] { 0.0F, 360.0F });
    ObjectAnimator localObjectAnimator4 = ObjectAnimator.ofInt(f, r, new int[] { f.getDrawable().getIntrinsicHeight(), f.getDrawable().getIntrinsicHeight() / 2 });
    ObjectAnimator localObjectAnimator5 = ObjectAnimator.ofInt(f, r, new int[] { (int)(f.getDrawable().getIntrinsicHeight() * 0.6D) });
    localObjectAnimator1.setDuration(3000L);
    localObjectAnimator3.setDuration(3000L);
    localObjectAnimator2.setDuration(1000L);
    l = new AnimatorSet();
    l.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator3 });
    l.play(localObjectAnimator2).after(localObjectAnimator1);
    l.start();
    localObjectAnimator4.setDuration(500L);
    localObjectAnimator4.setStartDelay(2600L);
    localObjectAnimator5.setDuration(200L);
    k = new AnimatorSet();
    k.play(localObjectAnimator5).after(localObjectAnimator4);
    k.addListener(new e(this));
    k.start();
  }
  
  private boolean d(int paramInt)
  {
    return (e.getFirstVisiblePosition() == 0) && (paramInt > 1) && (e.getChildAt(1).getBottom() == e.getHeight());
  }
  
  private boolean e()
  {
    return (e.getFirstVisiblePosition() == 0) && (e.getLastVisiblePosition() == 0);
  }
  
  public void a()
  {
    c(0);
  }
  
  public void a(int paramInt)
  {
    n = paramInt;
  }
  
  public void b()
  {
    if (i != null)
    {
      i.cancel();
      k.cancel();
      l.cancel();
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (q) {
      return;
    }
    b(paramInt1);
    if ((a(paramInt1, paramInt2)) && (!j.c())) {
      c(1);
    }
    for (;;)
    {
      float f1 = (m - n - o + paramAbsListView.getHeight()) / p;
      float f2 = paramAbsListView.getHeight();
      float f3 = paramAbsListView.getHeight();
      float f4 = n + o - m;
      e.a(f2 - f1 * f3, f4);
      if (paramInt1 < 10) {
        break;
      }
      c();
      d();
      q = true;
      return;
      if ((d(paramInt2)) && (j.f()))
      {
        paramAbsListView.smoothScrollBy(0, 0);
        j.d();
      }
      else if ((e()) && (!j.f()))
      {
        j.e();
      }
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */