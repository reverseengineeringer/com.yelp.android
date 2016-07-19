package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.n;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.h;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.experiment.OnboardingExperiment;
import com.yelp.android.appdata.experiment.OnboardingExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.av;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ActivitySplashLogin
  extends YelpActivity
{
  private ViewPager a;
  private View[] b;
  private ViewIri[] c;
  private a d;
  private View.OnClickListener e = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.LoginSplashHaveNoAccount);
      startActivityForResult(ActivityCreateAccount.b(ActivitySplashLogin.this, true), 1016);
    }
  };
  private View.OnClickListener f = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.LoginSplashHaveAccount);
      paramAnonymousView = ActivityLogin.a(ActivitySplashLogin.this);
      paramAnonymousView.addFlags(536870912);
      startActivityForResult(paramAnonymousView, 1048);
    }
  };
  private View.OnClickListener g = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      AppData.a(EventIri.LoginSplashFacebookConnect);
      startActivityForResult(ActivityCreateAccount.a(ActivitySplashLogin.this, true), 1016);
    }
  };
  private View.OnClickListener h = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ActivitySplashLogin.a(ActivitySplashLogin.this).a(ActivitySplashLogin.a(ActivitySplashLogin.this).getCurrentItem() + 1, true);
    }
  };
  private ViewPager.h i = new ViewPager.h()
  {
    public void b(int paramAnonymousInt)
    {
      AppData.a(ActivitySplashLogin.b(ActivitySplashLogin.this)[paramAnonymousInt], getParametersForIri(ActivitySplashLogin.b(ActivitySplashLogin.this)[paramAnonymousInt]));
      View localView1 = findViewById(2131690430);
      View localView2 = findViewById(2131690429);
      View localView3 = findViewById(2131689701);
      View localView4 = findViewById(2131690433);
      switch (paramAnonymousInt)
      {
      }
      for (;;)
      {
        ((ImageView)ActivitySplashLogin.c(ActivitySplashLogin.this)[ActivitySplashLogin.d(ActivitySplashLogin.this).d()]).setImageResource(2130838067);
        ((ImageView)ActivitySplashLogin.c(ActivitySplashLogin.this)[paramAnonymousInt]).setImageResource(2130838069);
        ActivitySplashLogin.d(ActivitySplashLogin.this).e(paramAnonymousInt);
        return;
        if (localView1.getVisibility() == 0)
        {
          av.a(localView2, av.c);
          av.a(localView1, av.c);
          av.c(localView3, av.a);
          av.c(localView4, av.a);
          continue;
          av.c(localView1, av.a);
          av.c(localView2, av.a);
          av.a(localView4, av.c);
          av.a(localView3, av.c);
        }
      }
    }
  };
  
  public static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, ActivitySplashLogin.class);
    localIntent.addFlags(536870912);
    localIntent.addFlags(67108864);
    return localIntent;
  }
  
  private void a()
  {
    b = new View[] { findViewById(2131689702), findViewById(2131689703), findViewById(2131689704) };
    ((ImageView)b[d.d()]).setImageResource(2130838069);
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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903313);
    ar.c(this);
    ArrayList localArrayList = new ArrayList();
    a = ((ViewPager)findViewById(2131690427));
    d = new a(getSupportFragmentManager(), localArrayList);
    a.setAdapter(d);
    if (paramBundle != null) {
      d.e(paramBundle.getInt("page_number"));
    }
    c = new ViewIri[] { ViewIri.OnboardingGuidePageOne, ViewIri.OnboardingGuidePageTwo, ViewIri.SplashScreenLogin };
    paramBundle = (Button)findViewById(2131690433);
    View localView = findViewById(2131689701);
    a();
    if (e.s.a(OnboardingExperiment.Cohort.status_quo_illustration_guide))
    {
      paramBundle.setOnClickListener(h);
      a.a(i);
      findViewById(2131690430).setVisibility(4);
      localArrayList.add(0, OnboardingGuidePagerFragment.a(2130838252, 2131166499));
      localArrayList.add(1, OnboardingGuidePagerFragment.a(2130837980, 2131166418));
      localArrayList.add(2, OnboardingGuidePagerFragment.a(2130838400, 2131166031));
      AppData.a(c[0], getParametersForIri(c[0]));
    }
    for (;;)
    {
      findViewById(2131690431).setOnClickListener(f);
      findViewById(2131690432).setOnClickListener(e);
      findViewById(2131690429).setOnClickListener(g);
      d.c();
      if (AppData.b().f().i() == 1) {
        AppData.b().f().d(true);
      }
      return;
      paramBundle.setVisibility(4);
      localView.setVisibility(4);
      findViewById(2131690429).setVisibility(0);
      localArrayList.add(0, OnboardingGuidePagerFragment.a(2130837759, 2131166799));
      AppData.a(ViewIri.SplashScreenLogin, getParametersForIri(ViewIri.SplashScreenLogin));
    }
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
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("page_number", d.d());
  }
  
  private class a
    extends n
  {
    private List<OnboardingGuidePagerFragment> b;
    private int c;
    
    public a(List<OnboardingGuidePagerFragment> paramList)
    {
      super();
      List localList;
      b = localList;
      c = 0;
    }
    
    public int b()
    {
      return b.size();
    }
    
    public int d()
    {
      return c;
    }
    
    public OnboardingGuidePagerFragment d(int paramInt)
    {
      return (OnboardingGuidePagerFragment)b.get(paramInt);
    }
    
    public void e(int paramInt)
    {
      c = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashLogin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */