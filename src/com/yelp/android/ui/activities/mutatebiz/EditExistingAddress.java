package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.location.Address;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTabHost;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.ui.activities.support.YelpTabActivity;

public class EditExistingAddress
  extends YelpTabActivity
  implements TabHost.OnTabChangeListener, ad, e
{
  String a;
  Address b;
  YelpBusinessAddresses c;
  
  public static Intent a(Context paramContext, String paramString, Address paramAddress, YelpBusinessAddresses paramYelpBusinessAddresses, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, EditExistingAddress.class);
    paramContext.putExtra("ADDRESS", paramAddress);
    paramContext.putExtra("BUSINESS_ADDRESSES", paramYelpBusinessAddresses);
    paramContext.putExtra("BUSINESS_NAME", paramString);
    paramContext.putExtra("IS_ADDRESS_EDIT", paramBoolean);
    return paramContext;
  }
  
  public static Address a(Intent paramIntent)
  {
    return (Address)paramIntent.getParcelableExtra("ADDRESS");
  }
  
  public static Address b(Intent paramIntent)
  {
    return (Address)paramIntent.getParcelableExtra("GEOCODED");
  }
  
  public static YelpBusinessAddresses c(Intent paramIntent)
  {
    return (YelpBusinessAddresses)paramIntent.getParcelableExtra("BUSINESS_ADDRESSES");
  }
  
  private AddAddressFragment d()
  {
    return (AddAddressFragment)getSupportFragmentManager().findFragmentByTag("Form");
  }
  
  private MoveBusinessPlacementFragment e()
  {
    return (MoveBusinessPlacementFragment)getSupportFragmentManager().findFragmentByTag("Map");
  }
  
  void a()
  {
    AddAddressFragment localAddAddressFragment = d();
    Address localAddress = localAddAddressFragment.a();
    YelpBusinessAddresses localYelpBusinessAddresses = localAddAddressFragment.c();
    Object localObject = e();
    if ((localObject != null) && (((MoveBusinessPlacementFragment)localObject).c()))
    {
      localObject = ((MoveBusinessPlacementFragment)localObject).b();
      if (f.a((Address)localObject, localAddress))
      {
        localAddress.setLatitude(((Address)localObject).getLatitude());
        localAddress.setLongitude(((Address)localObject).getLongitude());
      }
    }
    localObject = getIntent();
    ((Intent)localObject).putExtra("ADDRESS", localAddress);
    ((Intent)localObject).putExtra("GEOCODED", localAddAddressFragment.d());
    ((Intent)localObject).putExtra("BUSINESS_ADDRESSES", localYelpBusinessAddresses);
    setResult(-1, (Intent)localObject);
    finish();
  }
  
  public void a(Address paramAddress)
  {
    a();
  }
  
  public void a(String paramString)
  {
    c().setCurrentTab(1);
  }
  
  public Address b()
  {
    return b;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditAddress;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((Address)getIntent().getParcelableExtra("ADDRESS"));
    a = getIntent().getStringExtra("BUSINESS_NAME");
    c = ((YelpBusinessAddresses)getIntent().getParcelableExtra("BUSINESS_ADDRESSES"));
    boolean bool = getIntent().getBooleanExtra("IS_ADDRESS_EDIT", false);
    paramBundle = c();
    Button localButton = (Button)getLayoutInflater().inflate(2130903443, paramBundle.getTabWidget(), false);
    localButton.setText(2131165730);
    paramBundle.addTab(paramBundle.newTabSpec("Form").setIndicator(localButton), AddAddressFragment.class, AddAddressFragment.a(b, a, c, bool));
    localButton = (Button)getLayoutInflater().inflate(2130903443, paramBundle.getTabWidget(), false);
    localButton.setText(2131165354);
    paramBundle.addTab(paramBundle.newTabSpec("Map").setIndicator(localButton), MoveBusinessPlacementFragment.class, MoveBusinessPlacementFragment.a(b, a));
    paramBundle.setOnTabChangedListener(this);
  }
  
  public void onTabChanged(String paramString)
  {
    if ("Map".equals(paramString)) {
      b = d().a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditExistingAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */