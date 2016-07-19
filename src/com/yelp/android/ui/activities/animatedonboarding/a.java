package com.yelp.android.ui.activities.animatedonboarding;

import android.content.Context;
import android.support.v4.view.ac;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;

class a
  extends ac
{
  private Context a;
  private View.OnClickListener b;
  private View.OnClickListener c;
  private View.OnClickListener d;
  
  public a(Context paramContext, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, View.OnClickListener paramOnClickListener3)
  {
    a = paramContext;
    b = paramOnClickListener1;
    c = paramOnClickListener2;
    d = paramOnClickListener3;
  }
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    AnimatedOnboardingPageModel localAnimatedOnboardingPageModel = AnimatedOnboardingPageModel.values()[paramInt];
    View localView = LayoutInflater.from(a).inflate(layoutRes, paramViewGroup, false);
    localView.setTag(Integer.valueOf(paramInt));
    if (stringRes != 0) {
      ((TextView)localView.findViewById(2131689844)).setText(stringRes);
    }
    if (localAnimatedOnboardingPageModel == AnimatedOnboardingPageModel.PAGE_SIGN_UP)
    {
      localView.findViewById(2131690432).setOnClickListener(b);
      localView.findViewById(2131690431).setOnClickListener(c);
      localView.findViewById(2131690429).setOnClickListener(d);
    }
    paramViewGroup.addView(localView);
    return localView;
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public int b()
  {
    return AnimatedOnboardingPageModel.values().length;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */