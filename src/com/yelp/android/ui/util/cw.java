package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ListView;
import com.yelp.android.bf.b;
import com.yelp.android.bf.h;
import java.util.HashMap;

public class cw
{
  public static int a;
  public static int b;
  public static int c;
  public static int d;
  public static int e;
  public static int f;
  
  public static AlphaAnimation a(View paramView, long paramLong)
  {
    return a(paramView, paramLong, 4);
  }
  
  private static AlphaAnimation a(View paramView, long paramLong, int paramInt)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(paramLong);
    localAlphaAnimation.setAnimationListener(new cx(paramView, paramInt));
    paramView.startAnimation(localAlphaAnimation);
    paramView.invalidate();
    return localAlphaAnimation;
  }
  
  public static Animation a(Context paramContext, dd paramdd)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, b.slide_in_left);
    paramContext.setInterpolator(new OvershootInterpolator(0.8F));
    paramContext.setDuration(700L);
    paramContext.setAnimationListener(paramdd);
    return paramContext;
  }
  
  public static Animation a(View paramView1, View paramView2)
  {
    int i = getLayoutParamstopMargin;
    int j = paramView1.getHeight();
    paramView1 = new da(paramView1, i, paramView2, getLayoutParamsbottomMargin + j + i);
    paramView1.setDuration(d);
    paramView1.setInterpolator(new AccelerateDecelerateInterpolator());
    return paramView1;
  }
  
  public static void a(Resources paramResources)
  {
    f = paramResources.getInteger(h.animation_duration_tiny);
    e = paramResources.getInteger(h.animation_duration_short);
    d = paramResources.getInteger(h.animation_duration_medium_short);
    c = paramResources.getInteger(h.animation_duration_medium);
    b = paramResources.getInteger(h.animation_duration_medium_long);
    a = paramResources.getInteger(h.animation_duration_long);
  }
  
  public static void a(View paramView, int paramInt, dd paramdd)
  {
    int i = paramView.getMeasuredHeight();
    getLayoutParamsheight = 10;
    cz localcz = new cz(paramView, i - 10, paramdd);
    if (paramdd != null) {
      localcz.setAnimationListener(paramdd);
    }
    localcz.setDuration(paramInt);
    paramView.startAnimation(localcz);
  }
  
  public static void a(View paramView, int paramInt, boolean paramBoolean, dd paramdd)
  {
    cy localcy = new cy(paramView, paramBoolean, paramView.getMeasuredHeight());
    if (paramdd != null) {
      localcy.setAnimationListener(paramdd);
    }
    localcy.setDuration(paramInt);
    paramView.startAnimation(localcy);
  }
  
  public static void a(au paramau, ListView paramListView, View paramView, Runnable paramRunnable)
  {
    int i = 0;
    HashMap localHashMap = new HashMap();
    int k = paramListView.getFirstVisiblePosition();
    int j = 0;
    if (i < paramListView.getChildCount())
    {
      localObject = paramListView.getChildAt(i);
      if (localObject != paramView) {
        localHashMap.put(Long.valueOf(paramau.getItemId(k + i + j)), Integer.valueOf(((View)localObject).getTop()));
      }
      for (;;)
      {
        i += 1;
        break;
        j = -1;
      }
    }
    paramau.b(paramau.getItem(paramListView.getPositionForView(paramView)));
    Object localObject = paramListView.getViewTreeObserver();
    ((ViewTreeObserver)localObject).addOnPreDrawListener(new dc((ViewTreeObserver)localObject, paramListView, paramView, paramau, localHashMap, paramRunnable));
  }
  
  public static AlphaAnimation b(View paramView, long paramLong)
  {
    return a(paramView, paramLong, 8);
  }
  
  public static Animation b(Context paramContext, dd paramdd)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, b.slide_out_right);
    paramContext.setDuration(b);
    paramContext.setInterpolator(new DecelerateInterpolator(1.3F));
    paramContext.setAnimationListener(paramdd);
    return paramContext;
  }
  
  public static Animation b(View paramView1, View paramView2)
  {
    int i = getLayoutParamstopMargin;
    int j = paramView1.getHeight();
    paramView1 = new db(paramView1, i, paramView2, getLayoutParamsbottomMargin + j + i);
    paramView1.setDuration(d);
    paramView1.setInterpolator(new AccelerateDecelerateInterpolator());
    return paramView1;
  }
  
  public static AlphaAnimation c(View paramView, long paramLong)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setDuration(paramLong);
    paramView.setVisibility(0);
    paramView.startAnimation(localAlphaAnimation);
    paramView.invalidate();
    return localAlphaAnimation;
  }
  
  public static Animation c(Context paramContext, dd paramdd)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, b.slide_out_left);
    paramContext.setDuration(b);
    paramContext.setInterpolator(new DecelerateInterpolator(1.3F));
    paramContext.setAnimationListener(paramdd);
    return paramContext;
  }
  
  public static Animation d(Context paramContext, dd paramdd)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, b.slide_in_bottom);
    paramContext.setDuration(b);
    paramContext.setInterpolator(new DecelerateInterpolator(1.3F));
    if (paramdd != null) {
      paramContext.setAnimationListener(paramdd);
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */