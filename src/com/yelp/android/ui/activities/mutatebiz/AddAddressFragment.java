package com.yelp.android.ui.activities.mutatebiz;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.location.Address;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.u;
import com.yelp.android.appdata.webrequests.v;
import com.yelp.android.appdata.webrequests.w;
import com.yelp.android.serializable.AddressAttribute;
import com.yelp.android.serializable.AddressExample;
import com.yelp.android.serializable.BusinessAttribute;
import com.yelp.android.serializable.BusinessAttributes;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.util.BackgroundTaskFragment;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.d.a;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class AddAddressFragment
  extends YelpFragment
  implements b.e, d.a<List<Address>>
{
  protected boolean a;
  protected boolean b;
  private YelpBusiness c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private TextView i;
  private TextView j;
  private TextView k;
  private View l;
  private Address m;
  private String n;
  private View o;
  private boolean p;
  private YelpBusinessAddresses q;
  private BusinessAttributes r;
  private w s;
  private a t;
  private BackgroundTaskFragment<Void, List<Address>> u;
  private final ApiRequest.b<BusinessAttributes> v = new AddAddressFragment.3(this);
  private final TextWatcher w = new AddAddressFragment.4(this);
  
  public static AddAddressFragment a(Address paramAddress, CharSequence paramCharSequence, YelpBusinessAddresses paramYelpBusinessAddresses, BusinessAttributes paramBusinessAttributes, String paramString, boolean paramBoolean)
  {
    AddAddressFragment localAddAddressFragment = new AddAddressFragment();
    localAddAddressFragment.setArguments(b(paramAddress, paramCharSequence, paramYelpBusinessAddresses, paramBusinessAttributes, paramString, paramBoolean));
    return localAddAddressFragment;
  }
  
  public static Bundle b(Address paramAddress, CharSequence paramCharSequence, YelpBusinessAddresses paramYelpBusinessAddresses, BusinessAttributes paramBusinessAttributes, String paramString, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("address", paramAddress);
    if (paramCharSequence == null) {}
    for (paramAddress = null;; paramAddress = paramCharSequence.toString())
    {
      localBundle.putString("business_name", paramAddress);
      localBundle.putParcelable("business_addresses", paramYelpBusinessAddresses);
      localBundle.putParcelable("business_attributes", paramBusinessAttributes);
      localBundle.putString("business_country", paramString);
      localBundle.putBoolean("is_address_edit", paramBoolean);
      return localBundle;
    }
  }
  
  private void c(View paramView)
  {
    Object localObject1;
    Object localObject2;
    if ((d != null) && (e != null) && (k != null))
    {
      localObject1 = d.getText();
      localObject2 = e.getText();
    }
    for (Object localObject3 = k.getText();; localObject3 = "")
    {
      if (LocaleSettings.e(n))
      {
        k = ((TextView)paramView.findViewById(2131690931));
        d = ((TextView)paramView.findViewById(2131690932));
        e = ((TextView)paramView.findViewById(2131690933));
        if (!p) {
          break label315;
        }
        k.setVisibility(8);
        k = ((TextView)paramView.findViewById(2131690939));
        paramView.findViewById(2131690938).setVisibility(0);
        label134:
        d.setText((CharSequence)localObject1);
        e.setText((CharSequence)localObject2);
        k.setText((CharSequence)localObject3);
        d.setHint(r.i().b().b());
        e.setHint(r.i().b().a());
        if (!LocaleSettings.b(n)) {
          break label337;
        }
        k.setText(2131166916);
        k.setHint(2131165641);
        label227:
        if (TextUtils.isEmpty(r.i().a())) {
          break label390;
        }
        i.setVisibility(0);
        i.setText(r.i().a());
      }
      for (;;)
      {
        g();
        return;
        d = ((TextView)paramView.findViewById(2131690931));
        e = ((TextView)paramView.findViewById(2131690932));
        k = ((TextView)paramView.findViewById(2131690933));
        break;
        label315:
        k.setVisibility(0);
        paramView.findViewById(2131690938).setVisibility(8);
        break label134;
        label337:
        if (k.getText().toString().equals(getString(2131166916))) {
          k.setText("");
        }
        k.setHint(r.h().b());
        break label227;
        label390:
        i.setVisibility(4);
      }
      localObject1 = "";
      localObject2 = "";
    }
  }
  
  private void g()
  {
    if (p)
    {
      Object localObject = (AddressAttribute)r.b().values().iterator().next();
      f.setHint(((AddressAttribute)localObject).b().b());
      g.setHint(((AddressAttribute)localObject).b().a());
      o.setVisibility(0);
      f.setVisibility(0);
      g.setVisibility(0);
      j.setText(((AddressAttribute)localObject).a());
      j.setVisibility(0);
      if ((q != null) && (q.a().size() > 0))
      {
        localObject = (YelpDetailedAddress)q.a().values().iterator().next();
        f.setText(((YelpDetailedAddress)localObject).c());
        g.setText(((YelpDetailedAddress)localObject).b());
      }
      return;
    }
    o.setVisibility(8);
    f.setVisibility(8);
    g.setVisibility(8);
    j.setVisibility(8);
  }
  
  @SuppressLint({"CommitTransaction"})
  private void h()
  {
    u = ((BackgroundTaskFragment)getFragmentManager().a("tag_request_fragment"));
    if (u == null)
    {
      u = new AddAddressFragment.2(this);
      getFragmentManager().a().a(u, "tag_request_fragment").a();
    }
    u.a(this);
  }
  
  public ViewIri a()
  {
    return ViewIri.BusinessEditAddress;
  }
  
  public void a(List<Address> paramList)
  {
    l();
    if ((paramList == null) || (paramList.get(0) == null))
    {
      as.a(getText(2131166742), 0);
      return;
    }
    Object localObject3 = (Address)paramList.get(0);
    if (!((Address)localObject3).getCountryCode().equals(n))
    {
      n = ((Address)localObject3).getCountryCode();
      f();
    }
    Object localObject1 = "";
    String str = ((Address)localObject3).getLocality();
    if (((Address)localObject3).getMaxAddressLineIndex() >= 0)
    {
      localObject2 = ((Address)localObject3).getAddressLine(0);
      localObject1 = localObject2;
      if (TextUtils.equals((CharSequence)localObject2, str)) {
        localObject1 = "";
      }
    }
    if (((Address)localObject3).getMaxAddressLineIndex() >= 1)
    {
      localObject3 = ((Address)localObject3).getAddressLine(1);
      localObject2 = localObject3;
      if (!TextUtils.equals((CharSequence)localObject3, str)) {}
    }
    for (Object localObject2 = "";; localObject2 = "")
    {
      d.setText((CharSequence)localObject1);
      e.setText((CharSequence)localObject2);
      if (LocaleSettings.b(n)) {
        k.setText(2131166916);
      }
      for (;;)
      {
        if (paramList.size() > 1)
        {
          paramList = (Address)paramList.get(1);
          localObject1 = new YelpDetailedAddress(String.valueOf(paramList.getAddressLine(0)), String.valueOf(paramList.getAddressLine(1)), "");
          f.setText(paramList.getAddressLine(0));
          g.setText(paramList.getAddressLine(1));
          q.a().put(Locale.ENGLISH.getLanguage(), localObject1);
          if ((TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(paramList.getLocality()))) {
            k.setText(paramList.getLocality());
          }
        }
        m = c();
        return;
        k.setText(str);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      d.requestFocus();
    }
  }
  
  public void b()
  {
    l.performClick();
  }
  
  protected Address c()
  {
    if ((!b) && (getArguments().getParcelable("address") != null)) {
      return (Address)getArguments().getParcelable("address");
    }
    Locale localLocale = new Locale(AppData.b().g().h().getLanguage(), n);
    Address localAddress = new Address(localLocale);
    localAddress.setAddressLine(0, String.valueOf(d.getText()));
    localAddress.setAddressLine(1, String.valueOf(e.getText()));
    localAddress.setAddressLine(2, String.valueOf(k.getText()));
    localAddress.setLocality(String.valueOf(k.getText()));
    localAddress.setCountryCode(n);
    localAddress.setCountryName(localLocale.getDisplayCountry(localLocale));
    return localAddress;
  }
  
  protected YelpBusinessAddresses e()
  {
    if (p)
    {
      YelpDetailedAddress localYelpDetailedAddress1 = new YelpDetailedAddress(String.valueOf(d.getText()), String.valueOf(e.getText()), "");
      HashMap localHashMap = new HashMap();
      YelpDetailedAddress localYelpDetailedAddress2 = new YelpDetailedAddress(String.valueOf(f.getText()), String.valueOf(g.getText()), "");
      localHashMap.put(Locale.ENGLISH.getLanguage(), localYelpDetailedAddress2);
      return new YelpBusinessAddresses(q.d(), String.valueOf(k.getText()), localYelpDetailedAddress1, localHashMap);
    }
    return new YelpBusinessAddresses();
  }
  
  protected void f()
  {
    H_();
    if (a) {}
    for (Object localObject = new v(n, v);; localObject = new u(n, v))
    {
      s = ((w)localObject);
      s.f(new Void[0]);
      return;
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      t = ((a)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("AddAddress Fragments must be attached to an AddressFragmentListener");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = false;
    if (paramBundle != null) {
      b = paramBundle.getBoolean("dirty");
    }
    for (c = ((YelpBusiness)paramBundle.getParcelable("business"));; c = ((YelpBusiness)getArguments().getParcelable("business")))
    {
      m = ((Address)getArguments().getParcelable("address"));
      q = ((YelpBusinessAddresses)getArguments().getParcelable("business_addresses"));
      r = ((BusinessAttributes)getArguments().getParcelable("business_attributes"));
      n = getArguments().getString("business_country");
      a = getArguments().getBoolean("is_address_edit");
      p = r.a();
      setHasOptionsMenu(true);
      h();
      return;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755036, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903547, paramViewGroup);
    f = ((TextView)paramViewGroup.findViewById(2131690936));
    g = ((TextView)paramViewGroup.findViewById(2131690937));
    i = ((TextView)paramViewGroup.findViewById(2131690930));
    j = ((TextView)paramViewGroup.findViewById(2131690934));
    l = paramViewGroup.findViewById(2131690929);
    o = paramViewGroup.findViewById(2131690935);
    c(paramViewGroup);
    if (m != null) {
      a(Collections.singletonList(m));
    }
    l.setOnClickListener(new AddAddressFragment.1(this));
    if (m != null) {
      getActivity().setTitle(2131165809);
    }
    if (!p) {
      d.requestFocus();
    }
    return paramViewGroup;
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691015)
    {
      a locala = t;
      if (c == null) {}
      for (paramMenuItem = getArguments().getString("business_name");; paramMenuItem = c.aq())
      {
        locala.a(paramMenuItem);
        return true;
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    a("business_attributes", s);
  }
  
  public void onResume()
  {
    super.onResume();
    d.addTextChangedListener(w);
    e.addTextChangedListener(w);
    k.addTextChangedListener(w);
    s = ((w)a("business_attributes", s, v));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("dirty", b);
    paramBundle.putParcelable("business", c);
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.AddAddressFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */