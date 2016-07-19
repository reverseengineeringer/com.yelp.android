package com.yelp.android.ui.activities.search.vertical;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.l;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.e;
import java.util.List;
import java.util.Map;

public class PlatformAddressListFragment
  extends YelpListFragment
{
  private ey a;
  private b b;
  private a c;
  private String d;
  private DisambiguateAddressFragment.a e = new PlatformAddressListFragment.2(this);
  private View.OnClickListener f = new PlatformAddressListFragment.3(this);
  private ApiRequest.b<List<PlatformDisambiguatedAddress>> g = new PlatformAddressListFragment.4(this);
  
  public static PlatformAddressListFragment a(String paramString, boolean paramBoolean)
  {
    PlatformAddressListFragment localPlatformAddressListFragment = new PlatformAddressListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("current_address_id", paramString);
    localBundle.putBoolean("show_current_location", paramBoolean);
    localPlatformAddressListFragment.setArguments(localBundle);
    return localPlatformAddressListFragment;
  }
  
  private void a(aj paramaj)
  {
    if (getArguments().getBoolean("show_current_location"))
    {
      View localView = LayoutInflater.from(getActivity()).inflate(2130903190, m(), false);
      localView.setOnClickListener(new PlatformAddressListFragment.1(this));
      paramaj.a(2131165745, new e(new View[] { localView }));
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (PlatformDisambiguatedAddress)paramListView.getItemAtPosition(paramInt);
    paramView = new com.yelp.android.g.a();
    if (!paramListView.c().equals(d)) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.put("different_address", Boolean.valueOf(bool));
      AppData.a(EventIri.SearchDeliveryAddressListSelected, paramView);
      b.a(paramListView.c());
      c.a(paramListView);
      return;
    }
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return ViewIri.SearchDeliveryAddressList;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    d = getArguments().getString("current_address_id");
    b = new b(getActivity(), paramBundle, d);
    aj localaj = new aj();
    a(localaj);
    localaj.a(2131689985, b);
    a(localaj);
    paramBundle = getLayoutInflater(paramBundle).inflate(2130903356, m(), false);
    paramBundle.findViewById(2131690518).setOnClickListener(f);
    m().addFooterView(paramBundle, "FOOTER", true);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = ((a)paramActivity);
    paramActivity = (AddAddressDialogFragment)getFragmentManager().a("add_address");
    if (paramActivity != null) {
      paramActivity.a(e);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("address_list", a);
  }
  
  public void onResume()
  {
    super.onResume();
    a = ((ey)a("address_list", a, g));
    if (((a == null) || (a.u())) && (b.isEmpty()))
    {
      H_();
      if (a == null)
      {
        a = new ey(g);
        a.f(new Void[0]);
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    b.a(paramBundle);
  }
  
  public static abstract interface a
  {
    public abstract void a(PlatformDisambiguatedAddress paramPlatformDisambiguatedAddress);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.vertical.PlatformAddressListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */