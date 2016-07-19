package com.yelp.android.ui.activities.animatedonboarding;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.d;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.h;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.BounceInterpolator;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.experiment.OnboardingExperiment;
import com.yelp.android.appdata.experiment.OnboardingExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.activities.ActivityCreateAccount;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.av.a;
import java.util.Map;

public class ActivityAnimatedOnboarding
  extends YelpActivity
{
  private static final int a = av.a * 6;
  private static final ViewIri[] b = { ViewIri.AnimatedOnboardingPageOne, ViewIri.AnimatedOnboardingPageTwo, ViewIri.AnimatedOnboardingPageThree, ViewIri.AnimatedOnboardingPageFour, ViewIri.SplashScreenLogin };
  private static final EventIri[] c = { EventIri.OnboardingSwipeForwardFromPage1, EventIri.OnboardingSwipeForwardFromPage2, EventIri.OnboardingSwipeForwardFromPage3, EventIri.OnboardingSwipeForwardFromPage4 };
  private static final EventIri[] d = { EventIri.OnboardingSwipeBackwardFromPage2, EventIri.OnboardingSwipeBackwardFromPage3, EventIri.OnboardingSwipeBackwardFromPage4, EventIri.OnboardingSwipeBackwardFromSignUpLogIn };
  private boolean e;
  private int f;
  private GifView g;
  private ViewPager h;
  private View i;
  private View j;
  private View[] k;
  private Handler l;
  private Runnable m;
  private boolean n;
  private boolean o;
  private boolean p;
  private View.OnClickListener q = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this).a(ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this).getCurrentItem() + 1, true);
      AppData.a(EventIri.AnimatedOnboardingNextPageClick, getParametersForIri(EventIri.AnimatedOnboardingNextPageClick));
    }
  };
  private ViewPager.h r = new ViewPager.h()
  {
    private boolean b = false;
    
    public void a(int paramAnonymousInt)
    {
      super.a(paramAnonymousInt);
      if (paramAnonymousInt == 0)
      {
        ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this, ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this).getCurrentItem());
        ActivityAnimatedOnboarding.d(ActivityAnimatedOnboarding.this, false);
        ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this, false);
        ActivityAnimatedOnboarding.c(ActivityAnimatedOnboarding.this, true);
      }
    }
    
    public void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
    {
      AnimatedOnboardingPageModel localAnimatedOnboardingPageModel = AnimatedOnboardingPageModel.pages[paramAnonymousInt1];
      int i;
      if ((paramAnonymousFloat > 0.4D) && (ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) == paramAnonymousInt1))
      {
        paramAnonymousInt2 = 1;
        if ((1.0F - paramAnonymousFloat <= 0.4D) || (ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) - 1 != paramAnonymousInt1)) {
          break label294;
        }
        i = 1;
        label56:
        if (((paramAnonymousInt2 != 0) || (i != 0)) && (localAnimatedOnboardingPageModel != AnimatedOnboardingPageModel.PAGE_SIGN_UP))
        {
          if (ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) - 1 != paramAnonymousInt1) {
            break label300;
          }
          ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).a(new b(endFrame, startFrame, 16));
          ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this, ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) - 1);
          ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this).a(ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) - 1, true);
          ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this, true);
          if (ActivityAnimatedOnboarding.g(ActivityAnimatedOnboarding.this))
          {
            AppData.a(ActivityAnimatedOnboarding.a()[(ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) - 1)], getParametersForIri(ActivityAnimatedOnboarding.a()[(ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) - 1)]));
            ActivityAnimatedOnboarding.c(ActivityAnimatedOnboarding.this, false);
          }
        }
        label215:
        if (!ActivityAnimatedOnboarding.h(ActivityAnimatedOnboarding.this)) {
          break label438;
        }
        if ((paramAnonymousFloat > 0.0F) && (paramAnonymousFloat < 0.4D))
        {
          ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this, paramAnonymousInt1);
          ActivityAnimatedOnboarding.c(ActivityAnimatedOnboarding.this, true);
        }
      }
      for (;;)
      {
        if ((paramAnonymousInt1 == 0) && (paramAnonymousFloat == 0.0F) && (!b)) {
          b(0);
        }
        ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this, paramAnonymousInt1);
        return;
        paramAnonymousInt2 = 0;
        break;
        label294:
        i = 0;
        break label56;
        label300:
        if (ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) != paramAnonymousInt1) {
          break label215;
        }
        ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).a(new b(startFrame, endFrame, 2));
        ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this, ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) + 1);
        ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this).a(ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this) + 1, true);
        ActivityAnimatedOnboarding.d(ActivityAnimatedOnboarding.this, true);
        if (!ActivityAnimatedOnboarding.g(ActivityAnimatedOnboarding.this)) {
          break label215;
        }
        AppData.a(ActivityAnimatedOnboarding.b()[ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this)], getParametersForIri(ActivityAnimatedOnboarding.b()[ActivityAnimatedOnboarding.f(ActivityAnimatedOnboarding.this)]));
        ActivityAnimatedOnboarding.c(ActivityAnimatedOnboarding.this, false);
        break label215;
        label438:
        if ((ActivityAnimatedOnboarding.i(ActivityAnimatedOnboarding.this)) && (1.0F - paramAnonymousFloat > 0.0F) && (1.0F - paramAnonymousFloat < 0.4D))
        {
          ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this, paramAnonymousInt1);
          ActivityAnimatedOnboarding.c(ActivityAnimatedOnboarding.this, true);
        }
      }
    }
    
    public void b(int paramAnonymousInt)
    {
      final Object localObject = findViewById(2131689708);
      switch (ActivityAnimatedOnboarding.9.a[AnimatedOnboardingPageModel.pages[paramAnonymousInt].ordinal()])
      {
      }
      for (;;)
      {
        AppData.a(ActivityAnimatedOnboarding.d()[paramAnonymousInt], getParametersForIri(ActivityAnimatedOnboarding.d()[paramAnonymousInt]));
        return;
        if (!b)
        {
          localObject = av.c(findViewById(2131689844), ActivityAnimatedOnboarding.c());
          findViewById(2131689844).startAnimation((Animation)localObject);
          b = true;
          continue;
          if (localObject != null)
          {
            AlphaAnimation localAlphaAnimation = av.a((View)localObject, av.c);
            localAlphaAnimation.setAnimationListener(new av.a()
            {
              public void onAnimationStart(Animation paramAnonymous2Animation)
              {
                localObject.setVisibility(4);
              }
            });
            ((View)localObject).startAnimation(localAlphaAnimation);
            if ((ActivityAnimatedOnboarding.j(ActivityAnimatedOnboarding.this)) && (ActivityAnimatedOnboarding.k(ActivityAnimatedOnboarding.this).getVisibility() == 4)) {
              av.c(ActivityAnimatedOnboarding.k(ActivityAnimatedOnboarding.this), av.c);
            }
            if ((ActivityAnimatedOnboarding.l(ActivityAnimatedOnboarding.this)) && (ActivityAnimatedOnboarding.m(ActivityAnimatedOnboarding.this).getVisibility() == 4))
            {
              av.c(ActivityAnimatedOnboarding.m(ActivityAnimatedOnboarding.this), av.c);
              continue;
              if (localObject != null)
              {
                localAlphaAnimation = av.c((View)localObject, av.a * 2);
                localAlphaAnimation.setStartOffset(av.b);
                localAlphaAnimation.setAnimationListener(new av.a()
                {
                  public void onAnimationStart(Animation paramAnonymous2Animation)
                  {
                    localObject.setVisibility(0);
                  }
                });
                ((View)localObject).startAnimation(localAlphaAnimation);
                if (ActivityAnimatedOnboarding.j(ActivityAnimatedOnboarding.this)) {
                  av.a(ActivityAnimatedOnboarding.k(ActivityAnimatedOnboarding.this), av.c);
                }
                if (ActivityAnimatedOnboarding.l(ActivityAnimatedOnboarding.this)) {
                  av.a(ActivityAnimatedOnboarding.m(ActivityAnimatedOnboarding.this), av.c);
                }
                if (ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).getJobListSize() > 1)
                {
                  ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).c();
                  ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).a(367);
                  ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).a(new b(367, PAGE_FOURendFrame, 2));
                }
              }
            }
          }
        }
      }
    }
  };
  private View.OnClickListener s = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.LoginSplashHaveNoAccount);
      startActivityForResult(ActivityCreateAccount.b(ActivityAnimatedOnboarding.this, true), 1016);
    }
  };
  private View.OnClickListener t = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.LoginSplashHaveAccount);
      paramAnonymousView = new Intent();
      paramAnonymousView.setClass(ActivityAnimatedOnboarding.this, ActivityLogin.class);
      paramAnonymousView.addFlags(536870912);
      startActivityForResult(paramAnonymousView, 1048);
    }
  };
  private View.OnClickListener u = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.LoginSplashFacebookConnect);
      startActivityForResult(ActivityCreateAccount.a(ActivityAnimatedOnboarding.this, true), 1016);
    }
  };
  
  public static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, ActivityAnimatedOnboarding.class);
    localIntent.addFlags(536870912);
    localIntent.addFlags(67108864);
    return localIntent;
  }
  
  private void a(int paramInt)
  {
    if (paramInt >= k.length) {
      return;
    }
    View[] arrayOfView = k;
    int i2 = arrayOfView.length;
    int i1 = 0;
    while (i1 < i2)
    {
      ((ImageView)arrayOfView[i1]).setImageResource(2130838068);
      i1 += 1;
    }
    ((ImageView)k[paramInt]).setImageResource(2130838066);
  }
  
  private boolean e()
  {
    return (e.s.a(OnboardingExperiment.Cohort.animated_onboarding_dots_and_arrows)) || (e.s.a(OnboardingExperiment.Cohort.animated_onboarding_dots));
  }
  
  private boolean f()
  {
    return (e.s.a(OnboardingExperiment.Cohort.animated_onboarding_dots_and_arrows)) || (e.s.a(OnboardingExperiment.Cohort.animated_onboarding_arrows));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    h.scrollBy(paramInt1, 0);
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { 0, paramInt1, 0 });
    localValueAnimator.setInterpolator(new BounceInterpolator());
    localValueAnimator.setDuration(paramInt2);
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        if ((!ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).a()) && (!ActivityAnimatedOnboarding.c(ActivityAnimatedOnboarding.this))) {
          ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this).scrollTo(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue(), 0);
        }
      }
    });
    localValueAnimator.start();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new com.yelp.android.g.a();
    parama.put("android_onboarding_experiment", e.s.b());
    return parama;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    setResult(-1);
    finish();
  }
  
  public void onBackPressed()
  {
    setResult(0);
    super.onBackPressed();
  }
  
  @TargetApi(21)
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903069);
    Window localWindow = getWindow();
    localWindow.addFlags(Integer.MIN_VALUE);
    if (Build.VERSION.SDK_INT >= 21) {
      localWindow.setStatusBarColor(d.b(this, 2131624260));
    }
    h = ((ViewPager)findViewById(2131689706));
    h.setAdapter(new a(this, s, t, u));
    h.a(r);
    i = findViewById(2131689707);
    i.setOnClickListener(q);
    if (f()) {
      i.setVisibility(0);
    }
    j = findViewById(2131689701);
    if (e()) {
      j.setVisibility(0);
    }
    k = new View[] { findViewById(2131689702), findViewById(2131689703), findViewById(2131689704), findViewById(2131689705) };
    g = ((GifView)findViewById(2131689699));
    if (paramBundle != null)
    {
      int i1 = paramBundle.getInt("page_number");
      r.b(i1);
      g.a(pagesstartFrame);
    }
    h.setOnTouchListener(new View.OnTouchListener()
    {
      @SuppressLint({"ClickableViewAccessibility"})
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this, true);
        }
        if (paramAnonymousMotionEvent.getAction() == 1) {
          ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this, false);
        }
        return false;
      }
    });
    e = true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    g.b();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if (paramArrayOfString.containsKey(PermissionGroup.LOCATION))
      {
        if (((Boolean)paramArrayOfString.get(PermissionGroup.LOCATION)).booleanValue())
        {
          AppData.b().F();
          AppData.a(EventIri.PermissionLocationAllowed);
        }
      }
      else {
        return;
      }
      AppData.a(EventIri.PermissionLocationDenied);
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (h.getCurrentItem() == 0)
    {
      f = 0;
      g.a(new b(11, 112, 1));
      l = new Handler();
      m = new Runnable()
      {
        public void run()
        {
          if (ActivityAnimatedOnboarding.a(ActivityAnimatedOnboarding.this).getCurrentItem() == 0)
          {
            if ((!ActivityAnimatedOnboarding.b(ActivityAnimatedOnboarding.this).a()) && (!ActivityAnimatedOnboarding.c(ActivityAnimatedOnboarding.this))) {
              a(150, 1500);
            }
            ActivityAnimatedOnboarding.e(ActivityAnimatedOnboarding.this).postDelayed(ActivityAnimatedOnboarding.d(ActivityAnimatedOnboarding.this), 3000L);
          }
        }
      };
      l.postDelayed(m, 3000L);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("page_number", h.getCurrentItem());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */