package com.yelp.android.ui.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.ui.activities.support.YelpFragment;

public class SimpleLayoutFragment
  extends YelpFragment
{
  public static Fragment a(int paramInt)
  {
    SimpleLayoutFragment localSimpleLayoutFragment = new SimpleLayoutFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("layout_id", paramInt);
    localSimpleLayoutFragment.setArguments(localBundle);
    return localSimpleLayoutFragment;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(getArguments().getInt("layout_id"), paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.fragments.SimpleLayoutFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */