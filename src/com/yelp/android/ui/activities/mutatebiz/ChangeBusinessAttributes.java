package com.yelp.android.ui.activities.mutatebiz;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.location.Address;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.av.a;
import com.yelp.android.serializable.AlternateBusinessNames;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.android.services.job.HoursPhotoUploadJob;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public abstract class ChangeBusinessAttributes
  extends YelpActivity
  implements com.yelp.android.appdata.webrequests.m<Pair<String, YelpBusiness>>, af<Category>
{
  protected boolean a;
  protected ah b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected ah g;
  protected ah h;
  protected ah i;
  protected ah j;
  protected ah k;
  protected ah l;
  protected ah m;
  protected YelpBusiness n;
  protected CharSequence o;
  protected YelpBusinessAddresses p;
  private String[] q;
  
  private int a(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131493021: 
    case 2131493022: 
    case 2131493023: 
    default: 
      return 1000;
    case 2131493026: 
      return 1020;
    case 2131493027: 
      return 1018;
    case 2131493024: 
      return 1019;
    case 2131493025: 
      return 1021;
    }
    return 1017;
  }
  
  public static Intent a(ArrayList<Category> paramArrayList)
  {
    Intent localIntent = new Intent();
    localIntent.putParcelableArrayListExtra("extra.categories", paramArrayList);
    return localIntent;
  }
  
  private Address a(Intent paramIntent)
  {
    return EditExistingAddress.a(paramIntent);
  }
  
  private static String a(Intent paramIntent, String paramString)
  {
    paramString = paramIntent.getStringExtra(paramString);
    paramIntent = paramString;
    if (TextUtils.isEmpty(paramString)) {
      paramIntent = "";
    }
    return paramIntent;
  }
  
  private void a(int paramInt, CharSequence paramCharSequence)
  {
    ((ah)findViewById(paramInt)).a(paramCharSequence, paramCharSequence);
  }
  
  private YelpBusinessAddresses b(Intent paramIntent)
  {
    return EditExistingAddress.c(paramIntent);
  }
  
  private Address c(Intent paramIntent)
  {
    return EditExistingAddress.b(paramIntent);
  }
  
  private void f()
  {
    m = ((ah)findViewById(2131493027));
    o localo = new o(this, 2131166218, EditField.InputType.MULTILINE_TEXT);
    localo.a(2131165324);
    m.setOnClickListener(localo);
  }
  
  private void g()
  {
    l = ((ah)findViewById(2131493026));
    l.setOnClickListener(new o(this, 2131165739, EditField.InputType.MENU_URI));
  }
  
  private void h()
  {
    k = ((ah)findViewById(2131493025));
    k.setOnClickListener(new o(this, 2131165742, EditField.InputType.URI));
  }
  
  private void i()
  {
    j = ((ah)findViewById(2131493024));
    j.setOnClickListener(new o(this, 2131165740, EditField.InputType.PHONE));
  }
  
  private void j()
  {
    i = ((ah)findViewById(2131493023));
    i.setOnClickListener(new g(this));
  }
  
  private void k()
  {
    h = ((ah)findViewById(2131493022));
    h.setOnClickListener(new h(this));
  }
  
  private void l()
  {
    g = ((ah)findViewById(2131493021));
    g.setOnClickListener(new i(this));
  }
  
  private void m()
  {
    b = ((ah)findViewById(2131493020));
    b.setOnClickListener(new j(this));
  }
  
  protected abstract int a();
  
  protected abstract Intent a(YelpBusiness paramYelpBusiness);
  
  protected abstract Intent a(CharSequence paramCharSequence, Uri paramUri);
  
  protected abstract b a(Map<String, Object> paramMap, YelpBusiness paramYelpBusiness);
  
  protected abstract com.yelp.android.appdata.webrequests.w a(com.yelp.android.appdata.webrequests.m<Pair<String, YelpBusiness>> paramm);
  
  protected CharSequence a(Address paramAddress, YelpBusinessAddresses paramYelpBusinessAddresses)
  {
    if ((n != null) && (!paramYelpBusinessAddresses.isAlternateAddressEmpty()))
    {
      paramAddress = new ArrayList();
      paramAddress.add(a(paramYelpBusinessAddresses.getLanguage(), paramYelpBusinessAddresses.getAddress()));
      paramYelpBusinessAddresses = paramYelpBusinessAddresses.getAlternateAddresses().entrySet().iterator();
      while (paramYelpBusinessAddresses.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramYelpBusinessAddresses.next();
        paramAddress.add(a((String)localEntry.getKey(), (YelpDetailedAddress)localEntry.getValue()));
      }
      paramAddress.removeAll(Collections.singleton(""));
      return TextUtils.join(getString(2131165723), paramAddress);
    }
    return f.a("\n", paramAddress);
  }
  
  protected String a(String paramString, YelpDetailedAddress paramYelpDetailedAddress)
  {
    if (paramString.equals(Locale.CHINESE.getLanguage())) {}
    for (String str = "";; str = ", ")
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramYelpDetailedAddress.getAddress1().trim());
      localArrayList.add(paramYelpDetailedAddress.getAddress2().trim());
      if (paramString.equals(Locale.ENGLISH.getLanguage())) {
        Collections.reverse(localArrayList);
      }
      localArrayList.removeAll(Collections.singleton(""));
      return TextUtils.join(str, localArrayList);
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Pair<String, YelpBusiness> paramPair)
  {
    hideLoadingDialog();
    if ((paramApiRequest instanceof com.yelp.android.appdata.webrequests.w))
    {
      Object localObject = ((com.yelp.android.appdata.webrequests.w)paramApiRequest).a();
      paramApiRequest = new TreeMap();
      paramApiRequest.put("changed", TextUtils.join(",", (Iterable)localObject));
      localObject = a(paramApiRequest, (YelpBusiness)second);
      getAppData().k().a((b)localObject, paramApiRequest);
      n = ((YelpBusiness)second);
      o = ((CharSequence)first);
      showDialog(2131166687);
    }
  }
  
  public void a(Category paramCategory)
  {
    View localView = (View)l;
    if (paramCategory != null) {}
    for (int i1 = 0;; i1 = 8)
    {
      localView.setVisibility(i1);
      return;
    }
  }
  
  protected void a(List<Category> paramList)
  {
    new ae(new n(getAppData().j(), q), this, null, new View[] { (View)l }).execute(paramList.toArray(new Category[paramList.size()]));
  }
  
  protected abstract boolean b();
  
  protected abstract b c();
  
  protected abstract b d();
  
  protected String e()
  {
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(c)) {
      localArrayList.add(c);
    }
    if (!TextUtils.isEmpty(d)) {
      localArrayList.add(d);
    }
    if (!TextUtils.isEmpty(e)) {
      localArrayList.add(e);
    }
    if (!TextUtils.isEmpty(f)) {
      localArrayList.add(f);
    }
    if ((localArrayList.isEmpty()) && (n != null))
    {
      String str = n.getName();
      Object localObject = n.getAlternateNames();
      if (!TextUtils.isEmpty(str)) {
        localArrayList.add(str);
      }
      if (localObject != null)
      {
        str = ((AlternateBusinessNames)localObject).getPrimary();
        if (!TextUtils.isEmpty(str)) {
          localArrayList.add(str);
        }
        str = ((AlternateBusinessNames)localObject).getSecondary();
        if (!TextUtils.isEmpty(str)) {
          localArrayList.add(str);
        }
        localObject = ((AlternateBusinessNames)localObject).getRomanized();
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          localArrayList.add(localObject);
        }
      }
    }
    return TextUtils.join(getString(2131165723), localArrayList);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i1 = 1;
    if (paramInt2 == -1) {
      a = true;
    }
    switch (paramInt1)
    {
    default: 
    case 1020: 
    case 1018: 
    case 1019: 
    case 1021: 
    case 1017: 
    case 1014: 
    case 1015: 
      for (;;)
      {
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        updateOptionsMenu();
        return;
        a(2131493026, EditField.b(paramIntent));
        continue;
        a(2131493027, EditField.b(paramIntent));
        continue;
        a(2131493024, EditField.b(paramIntent));
        continue;
        a(2131493025, EditField.b(paramIntent));
        continue;
        c = a(paramIntent, "name");
        d = a(paramIntent, "yomi_name");
        e = a(paramIntent, "english_name");
        f = a(paramIntent, "romaji_name");
        a(2131493020, e());
        if ((AppData.b().g().j()) && (!TextUtils.isEmpty(e))) {}
        while (((!TextUtils.isEmpty(c)) || (i1 != 0)) && (!b()))
        {
          g.performClick();
          break;
          i1 = 0;
        }
        localObject1 = a(paramIntent);
        localObject2 = c(paramIntent);
        p = b(paramIntent);
        CharSequence localCharSequence = a((Address)localObject1, p);
        g.a(localCharSequence, new Parcelable[] { localObject1, localObject2, p });
        continue;
        localObject1 = paramIntent.getParcelableArrayListExtra("extra.categories");
        localObject2 = StringUtils.a(", ", (Iterable)localObject1, new com.yelp.android.serializable.w());
        h.a((CharSequence)localObject2, (ArrayList)localObject1);
        a((List)localObject1);
      }
    }
    Object localObject2 = EditOpenHours.a(paramIntent);
    if ((paramIntent.getData() != null) && (TextUtils.isEmpty((CharSequence)localObject2))) {}
    for (Object localObject1 = getText(2131166325);; localObject1 = localObject2)
    {
      i.a((CharSequence)localObject1, (CharSequence)localObject2);
      i.a(paramIntent.getData());
      break;
    }
  }
  
  public void onBackPressed()
  {
    if (a)
    {
      showDialog(2131166789);
      return;
    }
    AppData.a(c());
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      n = ((YelpBusiness)paramBundle.getParcelable("business"));
      a = paramBundle.getBoolean("changed");
      o = paramBundle.getCharSequence("status message");
      p = ((YelpBusinessAddresses)paramBundle.getParcelable("business_addresses"));
    }
    setContentView(a());
    a = false;
    q = getResources().getStringArray(2131230725);
    m();
    l();
    k();
    i();
    j();
    h();
    g();
    f();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 2131166789: 
      return new AlertDialog.Builder(this).setIcon(17301543).setTitle(paramInt).setCancelable(false).setMessage(2131165325).setPositiveButton(2131166006, new l(this)).setNegativeButton(2131166612, new k(this)).create();
    }
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).setTitle(paramInt).setMessage(o).setPositiveButton(2131166235, null).setCancelable(false).create();
    localAlertDialog.setOnDismissListener(new m(this));
    return localAlertDialog;
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    hideLoadingDialog();
    showInfoDialog(paramYelpException.getMessage(this));
    AppData.a(d());
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      com.yelp.android.appdata.webrequests.w localw = a(this);
      int i1;
      Object localObject;
      if ((AppData.b().g().j()) || ((n != null) && (LocaleSettings.b(n.getCountry()))))
      {
        i1 = 1;
        if ((i1 != 0) && (TextUtils.isEmpty(c))) {
          c = e;
        }
        localw.d(c);
        if (!TextUtils.isEmpty(d)) {
          localw.c(d);
        }
        if (!TextUtils.isEmpty(e)) {
          localw.d(e);
        }
        if (!TextUtils.isEmpty(f)) {
          localw.e(f);
        }
        paramMenuItem = g.getParcelableArrayData();
        if (paramMenuItem != null)
        {
          localObject = (Address)paramMenuItem[0];
          if (paramMenuItem[1] == null) {
            break label360;
          }
        }
      }
      label360:
      for (boolean bool = true;; bool = false)
      {
        localw.a((Address)localObject, bool);
        if ((n != null) && (p != null)) {
          localw.a(p.getAlternateAddresses());
        }
        localObject = h.getParcelableArrayListData();
        paramMenuItem = (MenuItem)localObject;
        if (localObject == null) {
          paramMenuItem = Collections.emptySet();
        }
        localw.a(paramMenuItem);
        localw.c(l.getCharSequenceData());
        localw.b(k.getCharSequenceData());
        localw.f(m.getCharSequenceData());
        localw.e(i.getCharSequenceData());
        localw.a(j.getCharSequenceData());
        localw.a(getAppData().n().c());
        if (!(localw instanceof co)) {
          break label365;
        }
        HoursPhotoUploadJob.launchJob((co)localw);
        o = getString(2131166100);
        showDialog(2131166687);
        return true;
        i1 = 0;
        break;
      }
      label365:
      localw.execute(new Void[0]);
      showLoadingDialog(localw);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2131494141).setEnabled(b()).setTitle(2131166542);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("business", n);
    paramBundle.putParcelable("business_addresses", p);
    paramBundle.putBoolean("changed", a);
    paramBundle.putCharSequence("status message", o);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */