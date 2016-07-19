package com.yelp.android.ui.activities.search.vertical;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

public class DeliveryPickupViewController
  extends DisambiguateAddressFragment
{
  private int a;
  private boolean b;
  private boolean c;
  private DeliveryPickupView d;
  private PlatformDisambiguatedAddress e;
  private a f;
  private ReverseGeoLocateUserAddressFragment g;
  private final DeliveryPickupView.a i = new DeliveryPickupViewController.1(this);
  private final UserEnterAddressView.a j = new DeliveryPickupViewController.2(this);
  private final DisambiguateAddressFragment.a k = new DeliveryPickupViewController.3(this);
  
  public static DeliveryPickupViewController a(String paramString, PlatformDisambiguatedAddress paramPlatformDisambiguatedAddress, boolean paramBoolean)
  {
    DeliveryPickupViewController localDeliveryPickupViewController = new DeliveryPickupViewController();
    paramString = DisambiguateAddressFragment.a(new Bundle(), paramString);
    paramString.putParcelable("ADDRESS", paramPlatformDisambiguatedAddress);
    paramString.putBoolean("ENABLE_SEARCH_ACTION", paramBoolean);
    localDeliveryPickupViewController.setArguments(paramString);
    return localDeliveryPickupViewController;
  }
  
  public static DeliveryPickupViewController a(String paramString, PlatformDisambiguatedAddress paramPlatformDisambiguatedAddress, boolean paramBoolean, Integer paramInteger)
  {
    paramString = a(paramString, paramPlatformDisambiguatedAddress, paramBoolean);
    if (paramInteger != null) {
      paramString.getArguments().putInt("TOGGLE_POSITION", paramInteger.intValue());
    }
    return paramString;
  }
  
  private void b()
  {
    if ((d == null) || (!b)) {
      return;
    }
    if (c) {
      d.d();
    }
    while (a == 0)
    {
      d.a();
      return;
      if (e != null) {
        d.a(e.d());
      } else {
        c();
      }
    }
    d.b();
  }
  
  private void c()
  {
    UserEnterAddressView localUserEnterAddressView = d.c();
    g = ((ReverseGeoLocateUserAddressFragment)getFragmentManager().a("tag_reverse_geolocate_address_fragment"));
    if (g == null)
    {
      g = new ReverseGeoLocateUserAddressFragment();
      getFragmentManager().a().a(g, "tag_reverse_geolocate_address_fragment").a();
    }
    g.a(localUserEnterAddressView);
    g.a(this);
    if (getArguments().getBoolean("ENABLE_SEARCH_ACTION")) {
      d.a(j);
    }
  }
  
  public void a()
  {
    if (a == 1) {
      if (f != null) {
        f.a(new PlatformFilter("pickup", null), null);
      }
    }
    do
    {
      do
      {
        return;
        if (!c) {
          break;
        }
      } while (f == null);
      f.a(new PlatformFilter("delivery_current_location", null), null);
      return;
      if (e == null) {
        break;
      }
    } while (f == null);
    f.a(new PlatformFilter("delivery", e.c()), e.b());
    return;
    try
    {
      b(d.getEnteredAddress());
      return;
    }
    catch (UserEnterAddressView.ValidationException localValidationException)
    {
      AlertDialogFragment.a(getString(2131165847), localValidationException.getMessage()).show(getFragmentManager(), null);
    }
  }
  
  public void a(PlatformDisambiguatedAddress paramPlatformDisambiguatedAddress)
  {
    e = paramPlatformDisambiguatedAddress;
  }
  
  public void a(DeliveryPickupView paramDeliveryPickupView)
  {
    d = paramDeliveryPickupView;
    paramDeliveryPickupView.setController(i);
    b();
  }
  
  public void a(a parama)
  {
    f = parama;
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    paramIntent = (PlatformDisambiguatedAddress)paramIntent.getParcelableExtra("extra.disambiguated_address");
    if (paramIntent == null)
    {
      d.d();
      return;
    }
    e = paramIntent;
    d.a(e.d());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = true;
    if (paramBundle != null)
    {
      a = paramBundle.getInt("TOGGLE_POSITION");
      e = ((PlatformDisambiguatedAddress)paramBundle.getParcelable("ADDRESS"));
      c = paramBundle.getBoolean("SHOW_CURRENT_LOCATION_VIEW");
    }
    for (;;)
    {
      a(k);
      b();
      return;
      a = getArguments().getInt("TOGGLE_POSITION", 0);
      e = ((PlatformDisambiguatedAddress)getArguments().getParcelable("ADDRESS"));
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("TOGGLE_POSITION", a);
    paramBundle.putParcelable("ADDRESS", e);
    paramBundle.putBoolean("SHOW_CURRENT_LOCATION_VIEW", c);
  }
  
  public static abstract interface a
  {
    public abstract void a(PlatformFilter paramPlatformFilter, String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.vertical.DeliveryPickupViewController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */