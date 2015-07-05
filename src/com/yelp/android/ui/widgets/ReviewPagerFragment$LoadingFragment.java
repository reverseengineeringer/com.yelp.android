package com.yelp.android.ui.widgets;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.ui.panels.PanelLoading;

public class ReviewPagerFragment$LoadingFragment
  extends Fragment
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return new PanelLoading(paramViewGroup.getContext());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ReviewPagerFragment.LoadingFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */