package com.yelp.android.ui.activities.mutatebiz;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.location.Address;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
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
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cn;
import com.yelp.android.serializable.Location;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.util.YelpMapFragment;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;

public class MoveBusinessPlacementFragment
  extends YelpMapFragment<by>
  implements com.yelp.android.ui.util.g<Location>
{
  private boolean b;
  private Address c;
  private ad d;
  private MoveBusinessPlacementFragment.GeocodeRequestFragment e;
  
  public static Bundle a(Address paramAddress, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("address", paramAddress);
    localBundle.putString("business_name", paramString);
    return localBundle;
  }
  
  private void a(LatLng paramLatLng)
  {
    paramLatLng = CameraPosition.builder().target(paramLatLng).zoom(19.0F).build();
    a.a(paramLatLng, new aa(this));
  }
  
  private void g()
  {
    b = false;
    a.setOnCameraUpdate(new ab(this));
  }
  
  public void a()
  {
    ((CompoundButton)getView().findViewById(2131493997)).setOnCheckedChangeListener(new z(this));
    a(c);
  }
  
  public void a(Address paramAddress)
  {
    getArguments().putParcelable("address", paramAddress);
    if ((paramAddress.hasLatitude()) && (paramAddress.hasLongitude()))
    {
      j();
      a(new LatLng(paramAddress.getLatitude(), paramAddress.getLongitude()));
      return;
    }
    paramAddress = f.b(", ", paramAddress).toString();
    if (MoveBusinessPlacementFragment.GeocodeRequestFragment.a(e)) {
      MoveBusinessPlacementFragment.GeocodeRequestFragment.b(e).cancel(true);
    }
    MoveBusinessPlacementFragment.GeocodeRequestFragment.a(e, paramAddress);
    a(MoveBusinessPlacementFragment.GeocodeRequestFragment.b(e));
  }
  
  public void a(Location paramLocation)
  {
    j();
    if (paramLocation != null)
    {
      a(paramLocation.getLatLng());
      c.setLatitude(paramLocation.getLatitude());
      c.setLongitude(paramLocation.getLongitude());
      getArguments().putParcelable("address", c);
      return;
    }
    g();
  }
  
  Address b()
  {
    LatLng localLatLng = a.getCurrentCamera().target;
    c.setLatitude(latitude);
    c.setLongitude(longitude);
    return c;
  }
  
  public void b(YelpException paramYelpException)
  {
    j();
    cr.a(ErrorType.getTypeFromException(paramYelpException).getTextId(), 1);
  }
  
  public boolean c()
  {
    return b;
  }
  
  public ViewIri d()
  {
    return ViewIri.BusinessEditAddressPosition;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(null);
    cr.b(getView());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      d = ((ad)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new IllegalStateException("Attach your MoveBusinessPlacement to an MoveBusinessPlacementFragmentListener");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = ((MoveBusinessPlacementFragment.GeocodeRequestFragment)getFragmentManager().findFragmentByTag("tag_geocode_request_fragment"));
    if (e == null)
    {
      e = new MoveBusinessPlacementFragment.GeocodeRequestFragment();
      getFragmentManager().beginTransaction().add(e, "tag_geocode_request_fragment").commit();
    }
    e.setTargetFragment(this, 0);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755030, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903425, localViewGroup);
    c(localViewGroup);
    paramLayoutInflater = (TextView)localViewGroup.findViewById(2131494065);
    paramViewGroup = getArguments().getString("business_name");
    c = ((Address)getArguments().getParcelable("address"));
    Address localAddress = d.b();
    if (localAddress != null) {
      c = localAddress;
    }
    if (TextUtils.isEmpty(paramViewGroup)) {}
    for (int i = 2131166349;; i = 2131166350)
    {
      paramLayoutInflater.setText(StringUtils.a(getActivity(), i, new Object[] { paramViewGroup, f.a(", ", c) }));
      paramViewGroup = YelpMap.a(getActivity(), AppData.b().n().c());
      paramLayoutInflater = paramViewGroup;
      if (c.hasLatitude())
      {
        paramLayoutInflater = paramViewGroup;
        if (c.hasLongitude())
        {
          paramLayoutInflater = CameraPosition.builder().target(new LatLng(c.getLatitude(), c.getLongitude())).build();
          paramLayoutInflater = YelpMap.a(getActivity(), paramLayoutInflater);
        }
      }
      CameraPosition.builder();
      if (paramLayoutInflater.getCamera() != null) {
        paramLayoutInflater.camera(CameraPosition.builder(paramLayoutInflater.getCamera()).zoom(19.0F).build());
      }
      a.setOptions(paramLayoutInflater);
      a.a(paramBundle, null);
      f();
      paramLayoutInflater = (ImageView)a.findViewById(2131492957);
      paramViewGroup = getResources().getDrawable(2130838155);
      paramLayoutInflater.setImageDrawable(paramViewGroup);
      paramLayoutInflater.setPadding(0, 0, 0, paramViewGroup.getIntrinsicHeight());
      return localViewGroup;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131494156: 
      if (b)
      {
        d.a(b());
        return true;
      }
      break;
    }
    d.a(null);
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    if (e().e()) {
      a(c);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.MoveBusinessPlacementFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */