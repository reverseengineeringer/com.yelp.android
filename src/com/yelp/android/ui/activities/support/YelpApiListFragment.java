package com.yelp.android.ui.activities.support;

import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.appdata.webrequests.ApiWorkerFragment;

public class YelpApiListFragment
  extends ListFragment
{
  private ApiWorkerFragment i;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i = ((ApiWorkerFragment)getFragmentManager().a("TAG_API_WORKER_FRAGMENT"));
    if (i == null)
    {
      i = new ApiWorkerFragment();
      getFragmentManager().a().a(i, "TAG_API_WORKER_FRAGMENT").a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpApiListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */