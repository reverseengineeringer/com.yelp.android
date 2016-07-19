package com.yelp.android.ui.activities.elite;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bh;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Location;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.ErrorType;

public class ActivityEliteWelcomeSplash
  extends YelpActivity
{
  private ImageView a;
  private ImageView b;
  private ImageView c;
  private ImageView d;
  private ImageView e;
  private ImageView f;
  private ImageView g;
  private TextView h;
  private View i;
  private View j;
  private bh k;
  private String l;
  private final ApiRequest.b<Location> m = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Location paramAnonymousLocation)
    {
      disableLoading();
      if (paramAnonymousLocation != null)
      {
        disableLoading();
        paramAnonymousApiRequest = AppData.b().q().p().ad();
        ActivityEliteWelcomeSplash.e(ActivityEliteWelcomeSplash.this).setText(getString(2131165833, new Object[] { paramAnonymousApiRequest, paramAnonymousLocation.g() }));
        ActivityEliteWelcomeSplash.f(ActivityEliteWelcomeSplash.this);
        return;
      }
      as.a(getString(2131166751), 1);
      ActivityEliteWelcomeSplash.b(ActivityEliteWelcomeSplash.this);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      disableLoading();
      as.a(ErrorType.getTypeFromException(paramAnonymousYelpException).getTextId(), 1);
      ActivityEliteWelcomeSplash.b(ActivityEliteWelcomeSplash.this);
    }
  };
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityEliteWelcomeSplash.class);
    paramContext.putExtra("user_id", paramString);
    return paramContext;
  }
  
  private AnimationSet a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt)
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.5F, 1, paramFloat1, 1, 0.5F, 1, paramFloat2);
    localTranslateAnimation.setDuration(1200L);
    localTranslateAnimation.setInterpolator(new DecelerateInterpolator(1.5F));
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat3, paramFloat4);
    localAlphaAnimation.setDuration(1200L);
    localAlphaAnimation.setInterpolator(new LinearInterpolator());
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, paramInt, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setDuration(400L);
    localRotateAnimation.setStartOffset(900L);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    localAnimationSet.addAnimation(localRotateAnimation);
    localAnimationSet.addAnimation(localTranslateAnimation);
    localAnimationSet.addAnimation(localAlphaAnimation);
    localAnimationSet.setFillAfter(true);
    return localAnimationSet;
  }
  
  private void a()
  {
    if (isTaskRoot()) {
      startActivity(ActivityNearby.b(this));
    }
    finish();
  }
  
  private void a(int paramInt)
  {
    a.setColorFilter(getResources().getColor(paramInt));
    b.setColorFilter(getResources().getColor(paramInt));
    c.setColorFilter(getResources().getColor(paramInt));
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    findViewById(2131690194).setBackgroundColor(getResources().getColor(paramInt2));
    findViewById(2131690185).setBackgroundColor(getResources().getColor(paramInt2));
    findViewById(2131690184).setBackgroundColor(getResources().getColor(paramInt1));
    if (Build.VERSION.SDK_INT >= 21) {
      getWindow().setStatusBarColor(getResources().getColor(paramInt2));
    }
  }
  
  private void b()
  {
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        ActivityEliteWelcomeSplash.a(ActivityEliteWelcomeSplash.this);
      }
    }, 1000L);
    j.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivity(ActivityUserProfile.a(ActivityEliteWelcomeSplash.this));
        finish();
      }
    });
    i.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ActivityEliteWelcomeSplash.b(ActivityEliteWelcomeSplash.this);
      }
    });
  }
  
  private void c()
  {
    e().start();
    g.setVisibility(8);
    d.setVisibility(0);
    d.startAnimation(d());
    a.startAnimation(a(-4.5F, -4.0F, 0.4F, 1.0F, 5));
    b.startAnimation(a(-2.0F, -4.6F, 0.0F, 0.4F, -10));
    c.startAnimation(a(2.4F, -2.4F, 0.0F, 0.5F, 10));
  }
  
  private Animation d()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.5F, 1, -0.35F);
    localTranslateAnimation.setDuration(1000L);
    localTranslateAnimation.setInterpolator(new DecelerateInterpolator(1.0F));
    localTranslateAnimation.setFillAfter(true);
    return localTranslateAnimation;
  }
  
  private Animator e()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(f, "scaleY", new float[] { 1.0F, -1.0F });
    localObjectAnimator.setDuration(700L);
    localObjectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        if (((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue() >= 0.0F)
        {
          ActivityEliteWelcomeSplash.c(ActivityEliteWelcomeSplash.this).bringToFront();
          ActivityEliteWelcomeSplash.d(ActivityEliteWelcomeSplash.this).bringToFront();
        }
      }
    });
    f.setPivotY(0.0F);
    return localObjectAnimator;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903219);
    a = ((ImageView)findViewById(2131690186));
    b = ((ImageView)findViewById(2131690187));
    c = ((ImageView)findViewById(2131690188));
    d = ((ImageView)findViewById(2131690190));
    e = ((ImageView)findViewById(2131690191));
    f = ((ImageView)findViewById(2131690193));
    g = ((ImageView)findViewById(2131690192));
    j = findViewById(2131690197);
    i = findViewById(2131690198);
    h = ((TextView)findViewById(2131690195));
    l = getIntent().getStringExtra("user_id");
    paramBundle = AppData.b().q().p().B();
    if (paramBundle != null) {}
    for (int n = paramBundle.length; n >= 9; n = 0)
    {
      a(2131624069);
      a(2131624066, 2131624063);
      return;
    }
    if (n >= 4)
    {
      a(2131624071);
      a(2131624068, 2131624065);
      return;
    }
    a(2131624070);
    a(2131624067, 2131624064);
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("accept_invitation", k);
  }
  
  protected void onResume()
  {
    super.onResume();
    k = ((bh)thawRequest("accept_invitation", k, m));
    if (k == null)
    {
      k = new bh(l, m);
      k.f(new Void[0]);
      enableLoading();
    }
    while (k.v()) {
      return;
    }
    enableLoading();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.elite.ActivityEliteWelcomeSplash
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */