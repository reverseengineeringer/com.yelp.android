package com.yelp.android.ui.activities.animatedonboarding;

import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.h;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.av.a;

class ActivityAnimatedOnboarding$5
  extends ViewPager.h
{
  private boolean b = false;
  
  ActivityAnimatedOnboarding$5(ActivityAnimatedOnboarding paramActivityAnimatedOnboarding) {}
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    if (paramInt == 0)
    {
      ActivityAnimatedOnboarding.b(a, ActivityAnimatedOnboarding.a(a).getCurrentItem());
      ActivityAnimatedOnboarding.d(a, false);
      ActivityAnimatedOnboarding.b(a, false);
      ActivityAnimatedOnboarding.c(a, true);
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    AnimatedOnboardingPageModel localAnimatedOnboardingPageModel = AnimatedOnboardingPageModel.pages[paramInt1];
    int i;
    if ((paramFloat > 0.4D) && (ActivityAnimatedOnboarding.f(a) == paramInt1))
    {
      paramInt2 = 1;
      if ((1.0F - paramFloat <= 0.4D) || (ActivityAnimatedOnboarding.f(a) - 1 != paramInt1)) {
        break label294;
      }
      i = 1;
      label56:
      if (((paramInt2 != 0) || (i != 0)) && (localAnimatedOnboardingPageModel != AnimatedOnboardingPageModel.PAGE_SIGN_UP))
      {
        if (ActivityAnimatedOnboarding.f(a) - 1 != paramInt1) {
          break label300;
        }
        ActivityAnimatedOnboarding.b(a).a(new b(endFrame, startFrame, 16));
        ActivityAnimatedOnboarding.a(a, ActivityAnimatedOnboarding.f(a) - 1);
        ActivityAnimatedOnboarding.a(a).a(ActivityAnimatedOnboarding.f(a) - 1, true);
        ActivityAnimatedOnboarding.b(a, true);
        if (ActivityAnimatedOnboarding.g(a))
        {
          AppData.a(ActivityAnimatedOnboarding.a()[(ActivityAnimatedOnboarding.f(a) - 1)], a.getParametersForIri(ActivityAnimatedOnboarding.a()[(ActivityAnimatedOnboarding.f(a) - 1)]));
          ActivityAnimatedOnboarding.c(a, false);
        }
      }
      label215:
      if (!ActivityAnimatedOnboarding.h(a)) {
        break label438;
      }
      if ((paramFloat > 0.0F) && (paramFloat < 0.4D))
      {
        ActivityAnimatedOnboarding.b(a, paramInt1);
        ActivityAnimatedOnboarding.c(a, true);
      }
    }
    for (;;)
    {
      if ((paramInt1 == 0) && (paramFloat == 0.0F) && (!b)) {
        b(0);
      }
      ActivityAnimatedOnboarding.a(a, paramInt1);
      return;
      paramInt2 = 0;
      break;
      label294:
      i = 0;
      break label56;
      label300:
      if (ActivityAnimatedOnboarding.f(a) != paramInt1) {
        break label215;
      }
      ActivityAnimatedOnboarding.b(a).a(new b(startFrame, endFrame, 2));
      ActivityAnimatedOnboarding.a(a, ActivityAnimatedOnboarding.f(a) + 1);
      ActivityAnimatedOnboarding.a(a).a(ActivityAnimatedOnboarding.f(a) + 1, true);
      ActivityAnimatedOnboarding.d(a, true);
      if (!ActivityAnimatedOnboarding.g(a)) {
        break label215;
      }
      AppData.a(ActivityAnimatedOnboarding.b()[ActivityAnimatedOnboarding.f(a)], a.getParametersForIri(ActivityAnimatedOnboarding.b()[ActivityAnimatedOnboarding.f(a)]));
      ActivityAnimatedOnboarding.c(a, false);
      break label215;
      label438:
      if ((ActivityAnimatedOnboarding.i(a)) && (1.0F - paramFloat > 0.0F) && (1.0F - paramFloat < 0.4D))
      {
        ActivityAnimatedOnboarding.b(a, paramInt1);
        ActivityAnimatedOnboarding.c(a, true);
      }
    }
  }
  
  public void b(int paramInt)
  {
    final Object localObject = a.findViewById(2131689708);
    switch (ActivityAnimatedOnboarding.9.a[AnimatedOnboardingPageModel.pages[paramInt].ordinal()])
    {
    }
    for (;;)
    {
      AppData.a(ActivityAnimatedOnboarding.d()[paramInt], a.getParametersForIri(ActivityAnimatedOnboarding.d()[paramInt]));
      return;
      if (!b)
      {
        localObject = av.c(a.findViewById(2131689844), ActivityAnimatedOnboarding.c());
        a.findViewById(2131689844).startAnimation((Animation)localObject);
        b = true;
        continue;
        if (localObject != null)
        {
          AlphaAnimation localAlphaAnimation = av.a((View)localObject, av.c);
          localAlphaAnimation.setAnimationListener(new av.a()
          {
            public void onAnimationStart(Animation paramAnonymousAnimation)
            {
              localObject.setVisibility(4);
            }
          });
          ((View)localObject).startAnimation(localAlphaAnimation);
          if ((ActivityAnimatedOnboarding.j(a)) && (ActivityAnimatedOnboarding.k(a).getVisibility() == 4)) {
            av.c(ActivityAnimatedOnboarding.k(a), av.c);
          }
          if ((ActivityAnimatedOnboarding.l(a)) && (ActivityAnimatedOnboarding.m(a).getVisibility() == 4))
          {
            av.c(ActivityAnimatedOnboarding.m(a), av.c);
            continue;
            if (localObject != null)
            {
              localAlphaAnimation = av.c((View)localObject, av.a * 2);
              localAlphaAnimation.setStartOffset(av.b);
              localAlphaAnimation.setAnimationListener(new av.a()
              {
                public void onAnimationStart(Animation paramAnonymousAnimation)
                {
                  localObject.setVisibility(0);
                }
              });
              ((View)localObject).startAnimation(localAlphaAnimation);
              if (ActivityAnimatedOnboarding.j(a)) {
                av.a(ActivityAnimatedOnboarding.k(a), av.c);
              }
              if (ActivityAnimatedOnboarding.l(a)) {
                av.a(ActivityAnimatedOnboarding.m(a), av.c);
              }
              if (ActivityAnimatedOnboarding.b(a).getJobListSize() > 1)
              {
                ActivityAnimatedOnboarding.b(a).c();
                ActivityAnimatedOnboarding.b(a).a(367);
                ActivityAnimatedOnboarding.b(a).a(new b(367, PAGE_FOURendFrame, 2));
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */