package com.yelp.android.ui.activities.mutatebiz;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.location.Address;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition.a;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.cd;
import com.yelp.android.serializable.Location;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.util.YelpMapFragment;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;

public class MoveBusinessPlacementFragment
  extends YelpMapFragment<com.yelp.android.serializable.f>
{
  private Address b;
  private a c;
  private cd d;
  private final ApiRequest.b<Location> e = new MoveBusinessPlacementFragment.2(this);
  
  public static MoveBusinessPlacementFragment a(Address paramAddress, String paramString)
  {
    MoveBusinessPlacementFragment localMoveBusinessPlacementFragment = new MoveBusinessPlacementFragment();
    localMoveBusinessPlacementFragment.setArguments(b(paramAddress, paramString));
    return localMoveBusinessPlacementFragment;
  }
  
  private void a(LatLng paramLatLng)
  {
    paramLatLng = CameraPosition.b().a(paramLatLng).a(19.0F).a();
    a.a(paramLatLng, null);
  }
  
  public static Bundle b(Address paramAddress, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("address", paramAddress);
    localBundle.putString("business_name", paramString);
    return localBundle;
  }
  
  public void a()
  {
    ((CompoundButton)getView().findViewById(2131690868)).setOnCheckedChangeListener(new MoveBusinessPlacementFragment.1(this));
    a(b);
  }
  
  public void a(Address paramAddress)
  {
    getArguments().putParcelable("address", paramAddress);
    if ((paramAddress.hasLatitude()) && (paramAddress.hasLongitude()))
    {
      l();
      a(new LatLng(paramAddress.getLatitude(), paramAddress.getLongitude()));
      return;
    }
    paramAddress = a.b(", ", paramAddress).toString();
    if ((d != null) && (d.u())) {
      d.a(true);
    }
    d = new cd(paramAddress, e);
    d.f(new Void[0]);
    a(d);
  }
  
  Address b()
  {
    if (a.getCurrentCamera() == null) {
      return null;
    }
    LatLng localLatLng = a.getCurrentCamera().a;
    b.setLatitude(a);
    b.setLongitude(b);
    return b;
  }
  
  public ViewIri c()
  {
    return ViewIri.BusinessEditAddressPosition;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(null);
    as.b(getView());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      c = ((a)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new IllegalStateException("Attach your MoveBusinessPlacement to an MoveBusinessPlacementFragmentListener");
    }
  }
  
  @SuppressLint({"CommitTransaction"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755034, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903548, localViewGroup);
    c(localViewGroup);
    paramLayoutInflater = (TextView)localViewGroup.findViewById(2131690940);
    paramViewGroup = getArguments().getString("business_name");
    b = ((Address)getArguments().getParcelable("address"));
    Address localAddress = c.c();
    if (localAddress != null) {
      b = localAddress;
    }
    if (TextUtils.isEmpty(paramViewGroup)) {}
    for (int i = 2131166373;; i = 2131166372)
    {
      paramLayoutInflater.setText(StringUtils.a(getActivity(), i, new Object[] { paramViewGroup, a.a(", ", b) }));
      paramViewGroup = YelpMap.a(AppData.b().r().c());
      paramLayoutInflater = paramViewGroup;
      if (b.hasLatitude())
      {
        paramLayoutInflater = paramViewGroup;
        if (b.hasLongitude()) {
          paramLayoutInflater = YelpMap.b(CameraPosition.b().a(new LatLng(b.getLatitude(), b.getLongitude())).a());
        }
      }
      CameraPosition.b();
      if (paramLayoutInflater.n() != null) {
        paramLayoutInflater.a(CameraPosition.a(paramLayoutInflater.n()).a(19.0F).a());
      }
      a.setOptions(paramLayoutInflater);
      a.a(paramBundle, null);
      g();
      paramLayoutInflater = (ImageView)a.findViewById(2131689600);
      paramViewGroup = getResources().getDrawable(2130838392);
      paramLayoutInflater.setImageDrawable(paramViewGroup);
      paramLayoutInflater.setPadding(0, 0, 0, paramViewGroup.getIntrinsicHeight());
      return localViewGroup;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    a("request_geocode_request", d);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    c.b();
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((cd)a("request_geocode_request", null, e));
    if (f().e()) {
      a(b);
    }
  }
  
  public static abstract interface a
  {
    public abstract void b();
    
    public abstract Address c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.MoveBusinessPlacementFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */