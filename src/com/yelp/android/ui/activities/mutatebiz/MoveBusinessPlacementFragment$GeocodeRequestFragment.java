package com.yelp.android.ui.activities.mutatebiz;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.yelp.android.appdata.webrequests.cn;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Location;
import com.yelp.android.ui.util.f;
import com.yelp.android.ui.util.g;

public class MoveBusinessPlacementFragment$GeocodeRequestFragment
  extends Fragment
{
  private cn a;
  private g<Location> b;
  private f<Location> c;
  private final m<Location> d = new ac(this);
  
  private void a(String paramString)
  {
    if ((a != null) && (a.isFetching())) {
      return;
    }
    a = new cn(paramString, d);
    a.execute(new Void[0]);
  }
  
  private boolean a()
  {
    return (a != null) && (a.isFetching());
  }
  
  private cn b()
  {
    return a;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b = ((g)getTargetFragment());
    if (c != null)
    {
      c.a(b);
      c = null;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
  
  public void onDetach()
  {
    super.onDetach();
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.MoveBusinessPlacementFragment.GeocodeRequestFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */