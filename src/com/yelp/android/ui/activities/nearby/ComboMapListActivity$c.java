package com.yelp.android.ui.activities.nearby;

import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.n;

class ComboMapListActivity$c
  extends n
{
  public ComboMapListActivity$c(ComboMapListActivity paramComboMapListActivity, l paraml)
  {
    super(paraml);
  }
  
  public Fragment a(int paramInt)
  {
    ComboListFragment localComboListFragment = ComboListFragment.a(paramInt, ComboMapListActivity.c(a));
    localComboListFragment.a(ComboMapListActivity.b(a));
    localComboListFragment.a(a);
    return localComboListFragment;
  }
  
  public int b()
  {
    return a.g();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboMapListActivity.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */