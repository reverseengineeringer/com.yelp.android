package com.yelp.android.ui.activities;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.av;

public class OnboardingGuidePagerFragment
  extends Fragment
{
  public static OnboardingGuidePagerFragment a(int paramInt1, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("splash", paramInt1);
    localBundle.putInt("tagline", paramInt2);
    OnboardingGuidePagerFragment localOnboardingGuidePagerFragment = new OnboardingGuidePagerFragment();
    localOnboardingGuidePagerFragment.setArguments(localBundle);
    return localOnboardingGuidePagerFragment;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)paramLayoutInflater.inflate(2130903312, paramViewGroup, false);
    ((TextView)paramLayoutInflater.findViewById(2131689792)).setText(getArguments().getInt("tagline"));
    ((ImageView)paramLayoutInflater.findViewById(2131690425)).setImageResource(getArguments().getInt("splash"));
    if (!AppData.G()) {
      paramLayoutInflater.findViewById(2131689677).startAnimation(av.a(20000L));
    }
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.OnboardingGuidePagerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */