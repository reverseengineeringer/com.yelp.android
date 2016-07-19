package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import android.widget.ListView;
import com.yelp.android.co.a.a;
import com.yelp.android.co.a.g;
import java.util.HashMap;

public class av
{
  public static int a;
  public static int b;
  public static int c;
  public static int d;
  public static int e;
  public static int f;
  public static final Property<View, Integer> g = new Property(Integer.class, "height")
  {
    public Integer a(View paramAnonymousView)
    {
      return Integer.valueOf(paramAnonymousView.getHeight());
    }
    
    public void a(View paramAnonymousView, Integer paramAnonymousInteger)
    {
      getLayoutParamsheight = paramAnonymousInteger.intValue();
      paramAnonymousView.requestLayout();
    }
  };
  
  public static AlphaAnimation a(View paramView, long paramLong)
  {
    return a(paramView, paramLong, 4);
  }
  
  private static AlphaAnimation a(View paramView, long paramLong, int paramInt)
  {
    return a(paramView, paramLong, paramInt, null);
  }
  
  private static AlphaAnimation a(final View paramView, long paramLong, final int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(paramLong);
    localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        paramView.setVisibility(paramInt);
        if (a != null) {
          a.onAnimationEnd(paramAnonymousAnimation);
        }
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
        if (a != null) {
          a.onAnimationRepeat(paramAnonymousAnimation);
        }
      }
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        if (a != null) {
          a.onAnimationStart(paramAnonymousAnimation);
        }
      }
    });
    paramView.startAnimation(localAlphaAnimation);
    paramView.invalidate();
    return localAlphaAnimation;
  }
  
  public static AlphaAnimation a(View paramView, long paramLong, Animation.AnimationListener paramAnimationListener)
  {
    return a(paramView, paramLong, 8, paramAnimationListener);
  }
  
  public static Animation a(float paramFloat1, float paramFloat2)
  {
    ScaleAnimation localScaleAnimation = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setInterpolator(new BounceInterpolator());
    localScaleAnimation.setDuration(e);
    return localScaleAnimation;
  }
  
  public static Animation a(Context paramContext, a parama)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, a.a.slide_in_left);
    paramContext.setInterpolator(new OvershootInterpolator(0.8F));
    paramContext.setDuration(700L);
    paramContext.setAnimationListener(parama);
    return paramContext;
  }
  
  public static Animation a(View paramView1, final View paramView2)
  {
    final int i = getLayoutParamstopMargin;
    int j = paramView1.getHeight();
    paramView1 = new Animation()
    {
      protected void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        paramAnonymousTransformation = (ViewGroup.MarginLayoutParams)a.getLayoutParams();
        topMargin = ((int)(-a.getHeight() * paramAnonymousFloat + i * (1.0F - paramAnonymousFloat)));
        a.setLayoutParams(paramAnonymousTransformation);
        paramView2.setPadding(0, (int)(d - d * paramAnonymousFloat), 0, 0);
      }
    };
    paramView1.setDuration(d);
    paramView1.setInterpolator(new AccelerateDecelerateInterpolator());
    return paramView1;
  }
  
  public static RotateAnimation a(long paramLong)
  {
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 359.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setDuration(paramLong);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    localRotateAnimation.setRepeatCount(-1);
    return localRotateAnimation;
  }
  
  public static void a(Resources paramResources)
  {
    f = paramResources.getInteger(a.g.animation_duration_tiny);
    e = paramResources.getInteger(a.g.animation_duration_short);
    d = paramResources.getInteger(a.g.animation_duration_medium_short);
    c = paramResources.getInteger(a.g.animation_duration_medium);
    b = paramResources.getInteger(a.g.animation_duration_medium_long);
    a = paramResources.getInteger(a.g.animation_duration_long);
  }
  
  public static void a(View paramView, int paramInt, final a parama)
  {
    int i = paramView.getMeasuredHeight();
    getLayoutParamsheight = 10;
    Animation local3 = new Animation()
    {
      protected void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        a.getLayoutParams().height = ((int)(b * paramAnonymousFloat) + 10);
        a.requestLayout();
        if (parama != null) {
          parama.a(this);
        }
      }
      
      public boolean willChangeBounds()
      {
        return true;
      }
    };
    if (parama != null) {
      local3.setAnimationListener(parama);
    }
    local3.setDuration(paramInt);
    paramView.startAnimation(local3);
  }
  
  public static void a(View paramView, int paramInt, final boolean paramBoolean, a parama)
  {
    Animation local2 = new Animation()
    {
      protected void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        if (paramAnonymousFloat == 1.0F)
        {
          a.setVisibility(8);
          return;
        }
        if (paramBoolean) {
          paramAnonymousTransformation.setAlpha(1.0F - paramAnonymousFloat);
        }
        a.getLayoutParams().height = (c - (int)(c * paramAnonymousFloat));
        a.requestLayout();
      }
      
      public boolean willChangeBounds()
      {
        return true;
      }
    };
    if (parama != null) {
      local2.setAnimationListener(parama);
    }
    local2.setDuration(paramInt);
    paramView.startAnimation(local2);
  }
  
  public static void a(final w paramw, final ListView paramListView, final View paramView, final Runnable paramRunnable)
  {
    int i = 0;
    final HashMap localHashMap = new HashMap();
    int k = paramListView.getFirstVisiblePosition();
    int j = 0;
    if (i < paramListView.getChildCount())
    {
      localObject = paramListView.getChildAt(i);
      if (localObject != paramView) {
        localHashMap.put(Long.valueOf(paramw.getItemId(k + i + j)), Integer.valueOf(((View)localObject).getTop()));
      }
      for (;;)
      {
        i += 1;
        break;
        j = -1;
      }
    }
    paramw.c(paramw.getItem(paramListView.getPositionForView(paramView)));
    Object localObject = paramListView.getViewTreeObserver();
    ((ViewTreeObserver)localObject).addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
    {
      public boolean onPreDraw()
      {
        a.removeOnPreDrawListener(this);
        int k = paramListView.getFirstVisiblePosition();
        paramView.setVisibility(0);
        int i = 0;
        while (i < paramListView.getChildCount())
        {
          View localView = paramListView.getChildAt(i);
          long l = paramw.getItemId(k + i);
          Integer localInteger = (Integer)localHashMap.get(Long.valueOf(l));
          int m = localView.getTop();
          if (localInteger != null)
          {
            if (localInteger.intValue() != m)
            {
              localView.setTranslationY(localInteger.intValue() - m);
              localView.animate().setDuration(av.d).translationY(0.0F);
            }
            i += 1;
          }
          else
          {
            int j = localView.getHeight() + paramListView.getDividerHeight();
            if (i > 0) {}
            for (;;)
            {
              localView.setTranslationY(Integer.valueOf(j + m).intValue() - m);
              localView.animate().setDuration(av.d).translationY(0.0F);
              break;
              j = -j;
            }
          }
        }
        if (paramRunnable != null) {
          new Handler().postDelayed(paramRunnable, av.d);
        }
        return true;
      }
    });
  }
  
  public static AlphaAnimation b(View paramView, long paramLong)
  {
    return a(paramView, paramLong, 8);
  }
  
  public static Animation b(Context paramContext, a parama)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, a.a.slide_out_right);
    paramContext.setDuration(b);
    paramContext.setInterpolator(new DecelerateInterpolator(1.3F));
    paramContext.setAnimationListener(parama);
    return paramContext;
  }
  
  public static Animation b(View paramView1, final View paramView2)
  {
    final int i = getLayoutParamstopMargin;
    int j = paramView1.getHeight();
    paramView1 = new Animation()
    {
      protected void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        paramAnonymousTransformation = (ViewGroup.MarginLayoutParams)a.getLayoutParams();
        topMargin = ((int)(-a.getHeight() * (1.0F - paramAnonymousFloat) + i * paramAnonymousFloat));
        a.setLayoutParams(paramAnonymousTransformation);
        paramView2.setPadding(0, (int)(d * paramAnonymousFloat), 0, 0);
      }
    };
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
  
  public static Animation c(Context paramContext, a parama)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, a.a.slide_out_left);
    paramContext.setDuration(b);
    paramContext.setInterpolator(new DecelerateInterpolator(1.3F));
    paramContext.setAnimationListener(parama);
    return paramContext;
  }
  
  public static Animation d(Context paramContext, a parama)
  {
    paramContext = AnimationUtils.loadAnimation(paramContext, a.a.slide_in_bottom);
    paramContext.setDuration(b);
    paramContext.setInterpolator(new DecelerateInterpolator(1.3F));
    if (parama != null) {
      paramContext.setAnimationListener(parama);
    }
    return paramContext;
  }
  
  public static class a
    implements Animation.AnimationListener
  {
    public void a(Animation paramAnimation) {}
    
    public void onAnimationEnd(Animation paramAnimation) {}
    
    public void onAnimationRepeat(Animation paramAnimation) {}
    
    public void onAnimationStart(Animation paramAnimation) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */