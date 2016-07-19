package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.location.Address;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v7.app.ActionBar;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.BusinessAttributes;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.as;

public class EditExistingAddress
  extends YelpActivity
  implements AddAddressFragment.a, MoveBusinessPlacementFragment.a
{
  String a;
  String b;
  Address c;
  YelpBusinessAddresses d;
  BusinessAttributes e;
  
  public static Intent a(Context paramContext, String paramString1, Address paramAddress, YelpBusinessAddresses paramYelpBusinessAddresses, BusinessAttributes paramBusinessAttributes, String paramString2, boolean paramBoolean)
  {
    return a(paramContext, paramString1, paramAddress, paramYelpBusinessAddresses, paramBusinessAttributes, paramString2, paramBoolean, "Form");
  }
  
  private static Intent a(Context paramContext, String paramString1, Address paramAddress, YelpBusinessAddresses paramYelpBusinessAddresses, BusinessAttributes paramBusinessAttributes, String paramString2, boolean paramBoolean, String paramString3)
  {
    paramContext = new Intent(paramContext, EditExistingAddress.class);
    paramContext.putExtra("extra.address", paramAddress);
    paramContext.putExtra("extra.business_addresses", paramYelpBusinessAddresses);
    paramContext.putExtra("extra.business_name", paramString1);
    paramContext.putExtra("extra.business_attributes", paramBusinessAttributes);
    paramContext.putExtra("extra.business_country", paramString2);
    paramContext.putExtra("extra.is_address_edit", paramBoolean);
    paramContext.putExtra("FRAGMENT_TAB", paramString3);
    return paramContext;
  }
  
  public static Address a(Intent paramIntent)
  {
    return (Address)paramIntent.getParcelableExtra("extra.address");
  }
  
  public static Intent b(Context paramContext, String paramString1, Address paramAddress, YelpBusinessAddresses paramYelpBusinessAddresses, BusinessAttributes paramBusinessAttributes, String paramString2, boolean paramBoolean)
  {
    return a(paramContext, paramString1, paramAddress, paramYelpBusinessAddresses, paramBusinessAttributes, paramString2, paramBoolean, "Map");
  }
  
  public static YelpBusinessAddresses b(Intent paramIntent)
  {
    return (YelpBusinessAddresses)paramIntent.getParcelableExtra("extra.business_addresses");
  }
  
  private AddAddressFragment f()
  {
    return (AddAddressFragment)getSupportFragmentManager().a("Form");
  }
  
  void a()
  {
    Object localObject = ((MoveBusinessPlacementFragment)getSupportFragmentManager().a("Map")).b();
    if ((localObject != null) && (a.a((Address)localObject, c)))
    {
      c.setLatitude(((Address)localObject).getLatitude());
      c.setLongitude(((Address)localObject).getLongitude());
    }
    localObject = getIntent();
    ((Intent)localObject).putExtra("extra.address", c);
    ((Intent)localObject).putExtra("extra.business_addresses", d);
    setResult(-1, (Intent)localObject);
    finish();
  }
  
  public void a(String paramString)
  {
    c = f().c();
    d = f().e();
    e();
  }
  
  public void b()
  {
    a();
  }
  
  public Address c()
  {
    return c;
  }
  
  public void d()
  {
    boolean bool = getIntent().getBooleanExtra("extra.is_address_edit", false);
    AddAddressFragment localAddAddressFragment = AddAddressFragment.a(c, a, d, e, b, bool);
    getSupportFragmentManager().a().a(2131689997, localAddAddressFragment, "Form").a();
  }
  
  public void e()
  {
    Object localObject = getSupportFragmentManager().a();
    if (f() != null) {
      ((o)localObject).a(null);
    }
    ((o)localObject).b(2131689997, MoveBusinessPlacementFragment.a(c, a), "Map").a();
    localObject = getCurrentFocus();
    if (localObject != null) {
      as.b((View)localObject);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditAddress;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = ((Address)getIntent().getParcelableExtra("extra.address"));
    a = getIntent().getStringExtra("extra.business_name");
    d = ((YelpBusinessAddresses)getIntent().getParcelableExtra("extra.business_addresses"));
    e = ((BusinessAttributes)getIntent().getParcelableExtra("extra.business_attributes"));
    b = getIntent().getStringExtra("extra.business_country");
    paramBundle = getIntent().getStringExtra("FRAGMENT_TAB");
    getSupportActionBar().a(true);
    int i = -1;
    switch (paramBundle.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        d();
        return;
        if (paramBundle.equals("Map")) {
          i = 0;
        }
        break;
      }
    }
    e();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditExistingAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */