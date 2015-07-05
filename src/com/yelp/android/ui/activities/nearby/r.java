package com.yelp.android.ui.activities.nearby;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

class r
  extends FragmentStatePagerAdapter
{
  public r(ComboMapListActivity paramComboMapListActivity, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }
  
  public int getCount()
  {
    return a.g();
  }
  
  public Fragment getItem(int paramInt)
  {
    ComboListFragment localComboListFragment = ComboListFragment.a(paramInt, ComboMapListActivity.c(a));
    localComboListFragment.a(ComboMapListActivity.b(a));
    localComboListFragment.a(a);
    return localComboListFragment;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */