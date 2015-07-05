package com.yelp.android.ui.activities.mutatebiz;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Address;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.dialogs.FlagsDialog;
import com.yelp.android.ui.dialogs.ao;
import com.yelp.android.ui.dialogs.ap;
import com.yelp.android.ui.dialogs.ar;
import com.yelp.android.ui.util.BackgroundTaskFragment;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class AddAddressFragment
  extends YelpFragment
  implements TextWatcher, o, g<List<Address>>
{
  boolean a;
  protected boolean b;
  private YelpBusiness c;
  private TextView d;
  private TextView e;
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private View l;
  private Address m;
  private Address n;
  private ImageButton o;
  private Locale p;
  private YelpBusinessAddresses q;
  private FlagsDialog r;
  private ArrayList<ap> s;
  private e t;
  private BackgroundTaskFragment<Void, List<Address>> u;
  private final ar v = new d(this);
  
  public static Address a(Bundle paramBundle)
  {
    return (Address)paramBundle.getParcelable("address");
  }
  
  public static Bundle a(Address paramAddress, CharSequence paramCharSequence, YelpBusinessAddresses paramYelpBusinessAddresses, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("address", paramAddress);
    localBundle.putString("business_name", paramCharSequence.toString());
    localBundle.putParcelable("business_addresses", paramYelpBusinessAddresses);
    localBundle.putBoolean("is_address_edit", paramBoolean);
    return localBundle;
  }
  
  private void a(String paramString)
  {
    Iterator localIterator = s.iterator();
    while (localIterator.hasNext())
    {
      ap localap = (ap)localIterator.next();
      if (TextUtils.equals(localap.b().getCountry(), paramString)) {
        a(localap.b(), localap.a());
      }
    }
  }
  
  private void a(Locale paramLocale)
  {
    if (LocaleSettings.d(paramLocale.getCountry()))
    {
      paramLocale = AddressHint.getFromCountry(paramLocale.getCountry());
      if (b)
      {
        d.setHint(address1Primary);
        e.setHint(address2Primary);
        g.setHint(address1Alt);
        h.setHint(address2Alt);
        g.setVisibility(0);
        h.setVisibility(0);
        i.setVisibility(0);
        j.setVisibility(0);
        return;
      }
      g.setVisibility(8);
      h.setVisibility(8);
      i.setVisibility(8);
      j.setVisibility(8);
      d.setHint(address1);
      e.setHint(address2);
      return;
    }
    g.setVisibility(8);
    h.setVisibility(8);
    i.setVisibility(8);
    j.setVisibility(8);
    d.setHint(2131165349);
    e.setHint(2131165350);
  }
  
  private void a(Locale paramLocale, int paramInt)
  {
    o.setImageResource(paramInt);
    Object localObject = new Configuration(getResources().getConfiguration());
    locale = paramLocale;
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getActivity().getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    localObject = new Resources(getActivity().getAssets(), localDisplayMetrics, (Configuration)localObject).getText(2131166020);
    if (LocaleSettings.b(paramLocale.getCountry()))
    {
      k.setText(2131165920);
      k.setHint(2131165516);
    }
    for (;;)
    {
      a(paramLocale);
      p = paramLocale;
      return;
      if (k.getText().toString().equals(getString(2131165920))) {
        k.setText("");
      }
      k.setHint((CharSequence)localObject);
    }
  }
  
  public static YelpBusinessAddresses b(Bundle paramBundle)
  {
    return (YelpBusinessAddresses)paramBundle.getParcelable("business_addresses");
  }
  
  public static Address c(Bundle paramBundle)
  {
    return (Address)paramBundle.getParcelable("geocoded");
  }
  
  public static boolean d(Bundle paramBundle)
  {
    return paramBundle.getBoolean("is_address_edit");
  }
  
  private void g()
  {
    u = ((BackgroundTaskFragment)getFragmentManager().findFragmentByTag("tag_request_fragment"));
    if (u == null)
    {
      u = new c(this);
      getFragmentManager().beginTransaction().add(u, "tag_request_fragment").commit();
    }
    u.a(this);
  }
  
  protected Address a()
  {
    if ((!a) && (a(getArguments()) != null)) {
      return a(getArguments());
    }
    Address localAddress = new Address(p);
    localAddress.setAddressLine(0, String.valueOf(d.getText()));
    localAddress.setAddressLine(1, String.valueOf(e.getText()));
    localAddress.setAddressLine(2, String.valueOf(k.getText()));
    localAddress.setLocality(String.valueOf(k.getText()));
    localAddress.setCountryCode(p.getCountry());
    localAddress.setCountryName(p.getDisplayCountry(p));
    return localAddress;
  }
  
  public void a(List<Address> paramList)
  {
    j();
    if ((paramList == null) || (paramList.get(0) == null))
    {
      m = null;
      cr.a(getText(2131166762), 0);
      return;
    }
    Address localAddress = (Address)paramList.get(0);
    Object localObject1 = "";
    Object localObject2 = "";
    String str2 = localAddress.getLocality();
    String str1;
    if (localAddress.getMaxAddressLineIndex() >= 0)
    {
      str1 = localAddress.getAddressLine(0);
      localObject1 = str1;
      if (TextUtils.equals(str1, str2)) {
        localObject1 = "";
      }
    }
    if (localAddress.getMaxAddressLineIndex() >= 1)
    {
      str1 = localAddress.getAddressLine(1);
      localObject2 = str1;
      if (TextUtils.equals(str1, str2)) {
        localObject2 = "";
      }
    }
    d.setText((CharSequence)localObject1);
    e.setText((CharSequence)localObject2);
    if (paramList.size() > 1)
    {
      paramList = (Address)paramList.get(1);
      g.setText(paramList.getAddressLine(0));
      h.setText(paramList.getAddressLine(1));
    }
    k.setText(str2);
    if (!TextUtils.isEmpty(localAddress.getCountryCode())) {
      a(localAddress.getCountryCode());
    }
    m = localAddress;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      d.requestFocus();
    }
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    a = true;
  }
  
  public void b(YelpException paramYelpException) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  protected YelpBusinessAddresses c()
  {
    if (b)
    {
      YelpDetailedAddress localYelpDetailedAddress1 = new YelpDetailedAddress(String.valueOf(d.getText()), String.valueOf(e.getText()), "");
      HashMap localHashMap = new HashMap();
      if (LocaleSettings.d(n.getCountryCode()))
      {
        YelpDetailedAddress localYelpDetailedAddress2 = new YelpDetailedAddress(String.valueOf(g.getText()), String.valueOf(h.getText()), "");
        localHashMap.put(Locale.ENGLISH.getLanguage(), localYelpDetailedAddress2);
      }
      return new YelpBusinessAddresses(q.getLanguage(), String.valueOf(k.getText()), localYelpDetailedAddress1, localHashMap);
    }
    return new YelpBusinessAddresses();
  }
  
  protected Address d()
  {
    return m;
  }
  
  public void e()
  {
    if (r == null)
    {
      r = FlagsDialog.a(p);
      r.a(v);
    }
    r.show(getChildFragmentManager(), null);
  }
  
  public ViewIri f()
  {
    return ViewIri.BusinessEditAddress;
  }
  
  public void k_()
  {
    l.performClick();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      t = ((e)paramActivity);
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
    a = false;
    p = AppData.b().g().h();
    if (paramBundle != null)
    {
      a = paramBundle.getBoolean("dirty");
      p = ((Locale)paramBundle.getSerializable("locale"));
    }
    for (c = ((YelpBusiness)paramBundle.getParcelable("business"));; c = ((YelpBusiness)getArguments().getParcelable("business")))
    {
      n = a(getArguments());
      b = d(getArguments());
      q = b(getArguments());
      s = ao.b();
      setHasOptionsMenu(true);
      g();
      return;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755032, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903424, paramViewGroup);
    if (c == null)
    {
      paramLayoutInflater = AppData.b().g().h().getCountry();
      if (!LocaleSettings.f(paramLayoutInflater)) {
        break label408;
      }
      k = ((TextView)paramViewGroup.findViewById(2131494059));
      d = ((TextView)paramViewGroup.findViewById(2131494060));
      e = ((TextView)paramViewGroup.findViewById(2131494064));
      label89:
      g = ((TextView)paramViewGroup.findViewById(2131494062));
      h = ((TextView)paramViewGroup.findViewById(2131494063));
      i = ((TextView)paramViewGroup.findViewById(2131494058));
      j = ((TextView)paramViewGroup.findViewById(2131494061));
      d.setHint(2131165349);
      e.setHint(2131165350);
      k.setHint(2131166020);
      l = paramViewGroup.findViewById(2131494057);
      o = ((ImageButton)paramViewGroup.findViewById(2131494044));
      o.setOnClickListener(new a(this));
      if (n == null) {
        break label453;
      }
      a(Collections.singletonList(n));
      if ((q != null) && (q.getAlternateAddresses().size() > 0))
      {
        paramLayoutInflater = (YelpDetailedAddress)q.getAlternateAddresses().values().iterator().next();
        g.setText(paramLayoutInflater.getAddress1());
        h.setText(paramLayoutInflater.getAddress2());
      }
      m = c(getArguments());
    }
    for (;;)
    {
      d.addTextChangedListener(this);
      e.addTextChangedListener(this);
      k.addTextChangedListener(this);
      l.setOnClickListener(new b(this));
      if (n != null) {
        getActivity().setTitle(2131165730);
      }
      if ((!b) || (!LocaleSettings.d(n.getCountryCode()))) {
        d.requestFocus();
      }
      return paramViewGroup;
      paramLayoutInflater = c.getCountry();
      break;
      label408:
      d = ((TextView)paramViewGroup.findViewById(2131494059));
      e = ((TextView)paramViewGroup.findViewById(2131494060));
      k = ((TextView)paramViewGroup.findViewById(2131494064));
      break label89;
      label453:
      a(p.getCountry());
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      e locale = t;
      if (c == null) {}
      for (paramMenuItem = getArguments().getString("business_name");; paramMenuItem = c.getName())
      {
        locale.a(paramMenuItem);
        return true;
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("dirty", a);
    paramBundle.putSerializable("locale", p);
    paramBundle.putParcelable("business", c);
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.AddAddressFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */