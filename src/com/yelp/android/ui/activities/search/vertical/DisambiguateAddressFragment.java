package com.yelp.android.ui.activities.search.vertical;

import android.os.Bundle;
import android.support.v4.app.l;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.bf;
import com.yelp.android.appdata.webrequests.bf.a;
import com.yelp.android.serializable.PlatformDeliveryAddress;
import com.yelp.android.ui.activities.support.YelpFragment;

public class DisambiguateAddressFragment
  extends YelpFragment
{
  private bf a;
  private DisambiguateAddressFragment.a b;
  private PlatformDeliveryAddress c;
  private final ApiRequest.b<bf.a> d = new DisambiguateAddressFragment.1(this);
  private final DidYouMeanAddressDialogFragment.a e = new DisambiguateAddressFragment.2(this);
  
  protected static Bundle a(Bundle paramBundle, String paramString)
  {
    paramBundle.putString("SOURCE", paramString);
    return paramBundle;
  }
  
  public static DisambiguateAddressFragment a(String paramString)
  {
    DisambiguateAddressFragment localDisambiguateAddressFragment = new DisambiguateAddressFragment();
    localDisambiguateAddressFragment.setArguments(a(new Bundle(), paramString));
    return localDisambiguateAddressFragment;
  }
  
  public void a(PlatformDeliveryAddress paramPlatformDeliveryAddress)
  {
    c = paramPlatformDeliveryAddress;
  }
  
  public void a(DisambiguateAddressFragment.a parama)
  {
    b = parama;
  }
  
  public void b(PlatformDeliveryAddress paramPlatformDeliveryAddress)
  {
    a = new bf(d, paramPlatformDeliveryAddress);
    a.f(new Void[0]);
    D();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      c = ((PlatformDeliveryAddress)paramBundle.getParcelable("saved_last_reverse_geocoded_address"));
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("request_disambiguate", a);
  }
  
  public void onResume()
  {
    super.onResume();
    a = ((bf)a("request_disambiguate", a, d));
    if ((a != null) && (!a.v())) {
      b(a);
    }
    DidYouMeanAddressDialogFragment localDidYouMeanAddressDialogFragment = (DidYouMeanAddressDialogFragment)getFragmentManager().a("tag_did_you_mean");
    if (localDidYouMeanAddressDialogFragment != null) {
      localDidYouMeanAddressDialogFragment.a(e);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("saved_last_reverse_geocoded_address", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.vertical.DisambiguateAddressFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */