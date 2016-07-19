package com.yelp.android.ui.activities.mutatebiz;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
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
import android.view.View.OnClickListener;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition.a;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ce;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.u;
import com.yelp.android.appdata.webrequests.v;
import com.yelp.android.appdata.webrequests.w;
import com.yelp.android.appdata.webrequests.y;
import com.yelp.android.serializable.AlternateBusinessNames;
import com.yelp.android.serializable.BusinessAttribute;
import com.yelp.android.serializable.BusinessAttributes;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Category.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.android.services.job.HoursPhotoUploadJob;
import com.yelp.android.ui.activities.categorypicker.ActivityCategoryPicker;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.map.MapSpannableLinearLayout;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.b;
import com.yelp.android.ui.map.m;
import com.yelp.android.ui.widgets.SpannableWidget;
import com.yelp.android.ui.widgets.SpannedTextView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.TreeMap;

public abstract class ChangeBusinessAttributes
  extends YelpActivity
  implements ApiRequest.b<Pair<String, YelpBusiness>>, c.a<Category>
{
  private String[] A;
  private final ApiRequest.b<BusinessAttributes> B = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, BusinessAttributes paramAnonymousBusinessAttributes)
    {
      if (q != null)
      {
        d = "";
        e = "";
        f = "";
        paramAnonymousApiRequest = h();
        a(2131689684, paramAnonymousApiRequest);
      }
      q = paramAnonymousBusinessAttributes;
      f();
      disableLoading();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      findViewById(2131689680).setVisibility(8);
      populateError(paramAnonymousYelpException);
    }
  };
  protected boolean a;
  protected d b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected d g;
  protected d h;
  protected d i;
  protected d j;
  protected d k;
  protected d l;
  protected d m;
  protected YelpBusiness n;
  protected YelpBusiness o;
  protected String p;
  protected BusinessAttributes q;
  protected w r;
  protected CharSequence s;
  protected YelpBusinessAddresses t;
  protected YelpMap<YelpBusiness> u;
  protected MapSpannableLinearLayout<YelpBusiness> v;
  protected View w;
  protected boolean x;
  protected View y;
  protected boolean z;
  
  private int a(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131689685: 
    case 2131689686: 
    default: 
      return 1000;
    case 2131689689: 
      return 1024;
    case 2131689690: 
      return 1022;
    case 2131689687: 
      return 1023;
    case 2131689688: 
      return 1025;
    }
    return 1021;
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
  
  private YelpBusinessAddresses b(Intent paramIntent)
  {
    return EditExistingAddress.b(paramIntent);
  }
  
  private void i()
  {
    boolean bool = o.C();
    if ((z) && (bool))
    {
      u.g();
      u.a(Collections.singletonList(o), new m(o.B()));
      CameraPosition localCameraPosition = new CameraPosition.a().a(o.b()).a(16.0F).a();
      u.a(localCameraPosition, null);
      v.setVisibility(0);
      ((SpannableWidget)g).setLeft(true);
      if (!x)
      {
        ((SpannableWidget)b).setRight(true);
        y.setVisibility(8);
      }
    }
    do
    {
      return;
      v.setVisibility(8);
      ((SpannableWidget)g).setLeft(false);
    } while (x);
    ((SpannableWidget)b).setRight(false);
    y.setVisibility(0);
  }
  
  private void j()
  {
    b localb = new b(2131166273, EditField.InputType.MULTILINE_TEXT, "");
    localb.a(2131165448);
    m.setOnClickListener(localb);
  }
  
  private void k()
  {
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = h.getParcelableArrayListData();
        if (com.yelp.android.ui.activities.categorypicker.e.a(getApplicationContext())) {}
        for (paramAnonymousView = ActivityCategoryPicker.a(ChangeBusinessAttributes.this, paramAnonymousView, n.aw());; paramAnonymousView = EditBusinessCategories.a(ChangeBusinessAttributes.this, n, paramAnonymousView))
        {
          startActivityForResult(paramAnonymousView, 1019);
          return;
        }
      }
    });
  }
  
  private void l()
  {
    if (!x) {
      ((SpannedTextView)g).setHint(getResources().getString(2131165472));
    }
    g.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        YelpBusinessAddresses localYelpBusinessAddresses = null;
        Parcelable[] arrayOfParcelable = g.getParcelableArrayData();
        if (arrayOfParcelable != null)
        {
          paramAnonymousView = (Address)arrayOfParcelable[0];
          localYelpBusinessAddresses = (YelpBusinessAddresses)arrayOfParcelable[1];
        }
        for (;;)
        {
          startActivityForResult(EditExistingAddress.a(ChangeBusinessAttributes.this, c, paramAnonymousView, localYelpBusinessAddresses, q, p, x), 1018);
          return;
          paramAnonymousView = null;
        }
      }
    });
  }
  
  protected abstract int a();
  
  protected abstract Intent a(YelpBusiness paramYelpBusiness);
  
  protected abstract Intent a(CharSequence paramCharSequence, Uri paramUri);
  
  protected abstract com.yelp.android.analytics.iris.a a(Map<String, Object> paramMap, YelpBusiness paramYelpBusiness);
  
  protected abstract y a(ApiRequest.b<Pair<String, YelpBusiness>> paramb);
  
  protected CharSequence a(Address paramAddress, YelpBusinessAddresses paramYelpBusinessAddresses)
  {
    if ((n != null) && (!paramYelpBusinessAddresses.b()))
    {
      paramAddress = new ArrayList();
      paramAddress.add(a(paramYelpBusinessAddresses.d(), paramYelpBusinessAddresses.c()));
      paramYelpBusinessAddresses = paramYelpBusinessAddresses.a().entrySet().iterator();
      while (paramYelpBusinessAddresses.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramYelpBusinessAddresses.next();
        paramAddress.add(a((String)localEntry.getKey(), (YelpDetailedAddress)localEntry.getValue()));
      }
      paramAddress.removeAll(Collections.singleton(""));
      return TextUtils.join(getString(2131166943), paramAddress);
    }
    return a.a("\n", paramAddress);
  }
  
  protected String a(String paramString, YelpDetailedAddress paramYelpDetailedAddress)
  {
    int i1 = 0;
    if (paramString.equals(Locale.CHINESE.getLanguage())) {}
    ArrayList localArrayList;
    for (String str = "";; str = ", ")
    {
      localArrayList = new ArrayList();
      String[] arrayOfString = new String[2];
      arrayOfString[0] = paramYelpDetailedAddress.c();
      arrayOfString[1] = paramYelpDetailedAddress.b();
      int i2 = arrayOfString.length;
      while (i1 < i2)
      {
        paramYelpDetailedAddress = arrayOfString[i1];
        if (!StringUtils.d(paramYelpDetailedAddress)) {
          localArrayList.add(paramYelpDetailedAddress.trim());
        }
        i1 += 1;
      }
    }
    if (paramString.equals(Locale.ENGLISH.getLanguage())) {
      Collections.reverse(localArrayList);
    }
    return TextUtils.join(str, localArrayList);
  }
  
  protected void a(int paramInt, CharSequence paramCharSequence)
  {
    ((d)findViewById(paramInt)).a(paramCharSequence, paramCharSequence);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Pair<String, YelpBusiness> paramPair)
  {
    hideLoadingDialog();
    if ((paramApiRequest instanceof y))
    {
      Object localObject = ((y)paramApiRequest).b();
      paramApiRequest = new TreeMap();
      paramApiRequest.put("changed", TextUtils.join(",", (Iterable)localObject));
      localObject = a(paramApiRequest, (YelpBusiness)second);
      getAppData().k().a((com.yelp.android.analytics.iris.a)localObject, paramApiRequest);
      n = ((YelpBusiness)second);
      s = ((CharSequence)first);
      showDialog(2131166663);
    }
  }
  
  public void a(Category paramCategory)
  {
    int i2 = 0;
    View localView = (View)l;
    if (paramCategory != null)
    {
      i1 = 0;
      localView.setVisibility(i1);
      if (x)
      {
        localView = w;
        if (paramCategory == null) {
          break label55;
        }
      }
    }
    label55:
    for (int i1 = i2;; i1 = 8)
    {
      localView.setVisibility(i1);
      return;
      i1 = 8;
      break;
    }
  }
  
  protected void a(String paramString)
  {
    enableLoading();
    if (x) {}
    for (paramString = new v(paramString, B);; paramString = new u(paramString, B))
    {
      r = paramString;
      r.f(new Void[0]);
      return;
    }
  }
  
  protected void a(List<Category> paramList)
  {
    new c(new a(getAppData().j(), A), this, null, new View[] { (View)l }).execute(paramList.toArray(new Category[paramList.size()]));
  }
  
  protected abstract boolean b();
  
  protected abstract com.yelp.android.analytics.iris.a c();
  
  protected abstract com.yelp.android.analytics.iris.a d();
  
  protected void e()
  {
    d = "";
    e = "";
    f = "";
    a(2131689684, h());
  }
  
  protected void f()
  {
    b.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivityForResult(EditName.a(ChangeBusinessAttributes.this, n, c, d, e, f, q), 1021);
      }
    });
    j.setOnClickListener(new b(2131165821, EditField.InputType.PHONE, q.e().b()));
    i.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivityForResult(a(i.getCharSequenceData(), i.getAttachment()), 1020);
      }
    });
    k.setOnClickListener(new b(2131165823, EditField.InputType.URI, q.d().b()));
    l.setOnClickListener(new b(2131165819, EditField.InputType.MENU_URI, q.g().b()));
    l();
    k();
    j();
  }
  
  protected void g()
  {
    o = new YelpBusiness();
    o.a(new LatLng(n.R(), n.Q()));
    o.a(n.O());
    v = ((MapSpannableLinearLayout)findViewById(2131690016));
    v.setFullBleed(true);
    y = findViewById(2131690015);
    u = v.getYelpMap();
    z = v.a(o, new b(this), o.B(), null, f.a());
    if (z) {
      v.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          YelpBusinessAddresses localYelpBusinessAddresses = null;
          Parcelable[] arrayOfParcelable = g.getParcelableArrayData();
          if (arrayOfParcelable != null)
          {
            paramAnonymousView = (Address)arrayOfParcelable[0];
            localYelpBusinessAddresses = (YelpBusinessAddresses)arrayOfParcelable[1];
          }
          for (;;)
          {
            startActivityForResult(EditExistingAddress.b(ChangeBusinessAttributes.this, c, paramAnonymousView, localYelpBusinessAddresses, q, p, x), 1018);
            return;
            paramAnonymousView = null;
          }
        }
      });
    }
    if ((!z) || (!o.C()))
    {
      y.setVisibility(8);
      v.setVisibility(8);
    }
  }
  
  protected String h()
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
      String str = n.aq();
      Object localObject = n.be();
      if (!TextUtils.isEmpty(str)) {
        localArrayList.add(str);
      }
      if (localObject != null)
      {
        str = ((AlternateBusinessNames)localObject).d();
        if (!TextUtils.isEmpty(str)) {
          localArrayList.add(str);
        }
        str = ((AlternateBusinessNames)localObject).c();
        if (!TextUtils.isEmpty(str)) {
          localArrayList.add(str);
        }
        localObject = ((AlternateBusinessNames)localObject).b();
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          localArrayList.add(localObject);
        }
      }
    }
    return TextUtils.join(getString(2131166943), localArrayList);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      a = true;
    }
    switch (paramInt1)
    {
    default: 
    case 1024: 
    case 1022: 
    case 1023: 
    case 1025: 
    case 1021: 
    case 1018: 
    case 1019: 
      for (;;)
      {
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        updateOptionsMenu();
        return;
        a(2131689689, EditField.b(paramIntent));
        continue;
        a(2131689690, EditField.b(paramIntent));
        continue;
        a(2131689687, EditField.b(paramIntent));
        continue;
        a(2131689688, EditField.b(paramIntent));
        continue;
        c = a(paramIntent, "extra.name");
        d = a(paramIntent, "extra.yomi_name");
        e = a(paramIntent, "extra.english_name");
        f = a(paramIntent, "extra.romaji_name");
        a(2131689684, h());
        continue;
        localObject1 = a(paramIntent);
        if (!((Address)localObject1).getCountryCode().equals(p))
        {
          p = ((Address)localObject1).getCountryCode();
          e();
        }
        t = b(paramIntent);
        localObject2 = a((Address)localObject1, t);
        g.a((CharSequence)localObject2, new Parcelable[] { localObject1, t });
        o.a(new LatLng(((Address)localObject1).getLatitude(), ((Address)localObject1).getLongitude()));
        i();
        continue;
        localObject1 = paramIntent.getParcelableArrayListExtra("extra.category");
        localObject2 = StringUtils.a(", ", (Iterable)localObject1, new Category.b());
        h.a((CharSequence)localObject2, (ArrayList)localObject1);
        a((List)localObject1);
      }
    }
    Object localObject2 = EditOpenHours.a(paramIntent);
    if ((paramIntent.getData() != null) && (TextUtils.isEmpty((CharSequence)localObject2))) {}
    for (Object localObject1 = getText(2131166345);; localObject1 = localObject2)
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
      showDialog(2131166753);
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
      s = paramBundle.getCharSequence("status message");
      t = ((YelpBusinessAddresses)paramBundle.getParcelable("business_addresses"));
    }
    setContentView(a());
    a = false;
    A = getResources().getStringArray(2131558405);
    m = ((d)findViewById(2131689690));
    l = ((d)findViewById(2131689689));
    if (x) {
      w = findViewById(2131689842);
    }
    k = ((d)findViewById(2131689688));
    j = ((d)findViewById(2131689687));
    i = ((d)findViewById(2131689686));
    h = ((d)findViewById(2131689685));
    g = ((d)findViewById(2131690017));
    b = ((d)findViewById(2131689684));
    g();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 2131166753: 
      new AlertDialog.Builder(this).setIcon(17301543).setTitle(paramInt).setCancelable(false).setMessage(2131165450).setPositiveButton(2131166061, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          AppData.a(c());
          finish();
        }
      }).setNegativeButton(2131166628, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      }).create();
    }
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).setTitle(paramInt).setMessage(s).setPositiveButton(2131166990, null).setCancelable(false).create();
    localAlertDialog.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        paramAnonymousDialogInterface = a(n);
        startActivity(paramAnonymousDialogInterface);
        finish();
      }
    });
    return localAlertDialog;
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755021, paramMenu);
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
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131691015: 
      y localy = a(this);
      int i1;
      Object localObject;
      if ((AppData.b().g().j()) || ((n != null) && (LocaleSettings.b(n.aw()))))
      {
        i1 = 1;
        if ((i1 != 0) && (TextUtils.isEmpty(c))) {
          c = e;
        }
        localy.d(c);
        if (!TextUtils.isEmpty(d)) {
          localy.e(d);
        }
        if (!TextUtils.isEmpty(e)) {
          localy.f(e);
        }
        if (!TextUtils.isEmpty(f)) {
          localy.g(f);
        }
        paramMenuItem = g.getParcelableArrayData();
        if (paramMenuItem != null)
        {
          localObject = (Address)paramMenuItem[0];
          if (paramMenuItem[1] == null) {
            break label386;
          }
        }
      }
      label386:
      for (boolean bool = true;; bool = false)
      {
        localy.a((Address)localObject, bool);
        if ((n != null) && (t != null)) {
          localy.a(t.a());
        }
        localObject = h.getParcelableArrayListData();
        paramMenuItem = (MenuItem)localObject;
        if (localObject == null) {
          paramMenuItem = Collections.emptySet();
        }
        localy.a(paramMenuItem);
        localy.c(l.getCharSequenceData());
        localy.b(k.getCharSequenceData());
        localy.f(m.getCharSequenceData());
        localy.e(i.getCharSequenceData());
        localy.a(j.getCharSequenceData());
        localy.a(getAppData().r().c());
        if (!(localy instanceof ce)) {
          break label391;
        }
        HoursPhotoUploadJob.launchJob((ce)localy);
        s = getString(2131166162);
        showDialog(2131166663);
        return true;
        i1 = 0;
        break;
      }
      label391:
      localy.f(new Void[0]);
      showLoadingDialog(localy);
      return true;
    }
    if (a)
    {
      showDialog(2131166753);
      return true;
    }
    AppData.a(c());
    finish();
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2131691015).setEnabled(b()).setTitle(2131166542);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("business", n);
    paramBundle.putParcelable("business_addresses", t);
    paramBundle.putBoolean("changed", a);
    paramBundle.putCharSequence("status message", s);
  }
  
  private static final class a
    implements c.b<Category, Category>
  {
    private final com.yelp.android.database.e a;
    private final Set<Category> b;
    
    public a(com.yelp.android.database.e parame, String[] paramArrayOfString)
    {
      a = parame;
      b = new HashSet();
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfString[i];
        b.add(parame.a(str));
        i += 1;
      }
    }
    
    public Category a(Category... paramVarArgs)
    {
      paramVarArgs = new LinkedList(Arrays.asList(paramVarArgs));
      while ((!paramVarArgs.isEmpty()) && (0 == 0))
      {
        Category localCategory = (Category)paramVarArgs.poll();
        if (b.contains(localCategory)) {
          return localCategory;
        }
        paramVarArgs.addAll(a.a(localCategory));
      }
      return null;
    }
  }
  
  private class b
    implements View.OnClickListener
  {
    private final EditField.InputType b;
    private final int c;
    private final int d;
    private int e;
    private boolean f;
    private final String g;
    
    public b(int paramInt1, int paramInt2, EditField.InputType paramInputType, String paramString)
    {
      b = paramInputType;
      d = paramInt1;
      c = paramInt2;
      f = true;
      g = paramString;
    }
    
    public b(int paramInt, EditField.InputType paramInputType, String paramString)
    {
      this(paramInt, paramInt, paramInputType, paramString);
    }
    
    public void a(int paramInt)
    {
      e = paramInt;
    }
    
    public void onClick(View paramView)
    {
      Object localObject = ((d)paramView).getCharSequenceData();
      if (TextUtils.isEmpty((CharSequence)localObject)) {}
      for (int i = d;; i = c)
      {
        localObject = EditField.a(EditField.a(paramView.getContext(), i, (CharSequence)localObject, e, b, g), f);
        if (localObject != null) {
          startActivityForResult((Intent)localObject, ChangeBusinessAttributes.a(ChangeBusinessAttributes.this, paramView));
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */