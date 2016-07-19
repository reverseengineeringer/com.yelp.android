package com.yelp.android.ui.activities.search.vertical;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivitySelectPlatformAddress
  extends YelpActivity
  implements PlatformAddressListFragment.a
{
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivitySelectPlatformAddress.class);
    paramContext.putExtra("extra.address_id", paramString);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, String paramString)
  {
    paramContext = a(paramContext, paramString);
    paramContext.putExtra("extra.show_and_select_current_location", true);
    return paramContext;
  }
  
  public PlatformAddressListFragment a()
  {
    return (PlatformAddressListFragment)getSupportFragmentManager().a(2131689997);
  }
  
  public void a(PlatformDisambiguatedAddress paramPlatformDisambiguatedAddress)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra.disambiguated_address", paramPlatformDisambiguatedAddress);
    setResult(-1, localIntent);
    finish();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    AppData.a(EventIri.SearchDeliveryAddressAddCancel);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (a() == null)
    {
      paramBundle = PlatformAddressListFragment.a(getIntent().getStringExtra("extra.address_id"), getIntent().getBooleanExtra("extra.show_and_select_current_location", false));
      getSupportFragmentManager().a().a(2131689997, paramBundle).a();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      AppData.a(EventIri.SearchDeliveryAddressAddCancel);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.vertical.ActivitySelectPlatformAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */