package com.yelp.android.ui.activities.reservations;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.backup.BackupManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cf;
import com.yelp.android.appdata.webrequests.cg;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.CallNumberDialog;
import com.yelp.android.ui.util.IntervalTimePickerDialog;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.ReservationAttribution;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

public class FindReservation
  extends YelpActivity
  implements m<cg>
{
  private Button a;
  private Button b;
  private Button c;
  private Button d;
  private Spinner e;
  private Calendar f;
  private h g;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, FindReservation.class);
    paramContext.putExtra("extra.business.key", paramYelpBusiness);
    paramContext.putExtra("extra.biz_dimension", paramString1);
    paramContext.putExtra("extra.source", paramString2);
    return paramContext;
  }
  
  private Calendar a()
  {
    int i = 0;
    TimeZone localTimeZone = ((YelpBusiness)getIntent().getParcelableExtra("extra.business.key")).getTimeZone();
    Calendar localCalendar2 = Calendar.getInstance(localTimeZone);
    localCalendar2.clear(14);
    localCalendar2.clear(13);
    Calendar localCalendar1 = Calendar.getInstance(localTimeZone);
    SharedPreferences localSharedPreferences = j();
    int j = localSharedPreferences.getInt("date", 0);
    int k = localSharedPreferences.getInt("year", 0);
    int m = localSharedPreferences.getInt("hour", 0);
    int n = localSharedPreferences.getInt("minute", 0);
    if ((j != 0) || (k != 0) || (m != 0) || (n != 0)) {
      i = 1;
    }
    if (i != 0)
    {
      localCalendar1.set(11, m);
      localCalendar1.set(12, n);
      localCalendar1.set(6, j);
      localCalendar1.set(1, k);
    }
    if ((i == 0) || (localCalendar2.after(localCalendar1))) {
      localCalendar1 = a(localTimeZone);
    }
    for (;;)
    {
      localCalendar2.clear();
      localCalendar2.setTimeZone(TimeZone.getTimeZone("GMT"));
      localCalendar2.set(localCalendar1.get(1), localCalendar1.get(2), localCalendar1.get(5), localCalendar1.get(11), localCalendar1.get(12));
      return localCalendar2;
    }
  }
  
  private Calendar a(TimeZone paramTimeZone)
  {
    Calendar localCalendar1 = Calendar.getInstance(paramTimeZone);
    Calendar localCalendar2 = Calendar.getInstance(paramTimeZone);
    paramTimeZone = Calendar.getInstance(paramTimeZone);
    localCalendar2.clear(13);
    localCalendar2.clear(14);
    localCalendar2.set(11, 19);
    localCalendar2.set(12, 0);
    paramTimeZone.clear(13);
    paramTimeZone.clear(14);
    paramTimeZone.set(11, 23);
    if (localCalendar1.after(paramTimeZone))
    {
      localCalendar2.set(6, localCalendar2.get(6) + 1);
      localCalendar2.set(11, 19);
      localCalendar2.set(12, 0);
    }
    for (;;)
    {
      return localCalendar2;
      while (localCalendar1.after(localCalendar2)) {
        localCalendar2.add(12, 30);
      }
    }
  }
  
  private void a(Calendar paramCalendar, int paramInt)
  {
    SharedPreferences.Editor localEditor = getSharedPreferences("ReservationSessionPrefs", 0).edit();
    localEditor.putLong("time", System.currentTimeMillis());
    localEditor.putInt("hour", paramCalendar.get(11));
    localEditor.putInt("minute", paramCalendar.get(12));
    localEditor.putInt("date", paramCalendar.get(6));
    localEditor.putInt("year", paramCalendar.get(1));
    localEditor.putInt("party", paramInt);
    localEditor.commit();
    new BackupManager(this).dataChanged();
  }
  
  private static boolean a(ArrayList<Reservation> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      return false;
    }
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      if (!((Reservation)paramArrayList.next()).hasCreditCardHold()) {
        return false;
      }
    }
    return true;
  }
  
  private void b()
  {
    d = ((Button)findViewById(2131493034));
    d.setOnClickListener(new c(this));
  }
  
  private void c()
  {
    Object localObject = (f)a.getTag();
    int i = e.getSelectedItemPosition();
    YelpBusiness localYelpBusiness = (YelpBusiness)getIntent().getParcelableExtra("extra.business.key");
    a(b, e.getSelectedItemPosition());
    localObject = new cf(this, localYelpBusiness, b, i + 1);
    ((cf)localObject).execute(new Void[0]);
    getHelper().a((ApiRequest)localObject);
  }
  
  private void d()
  {
    YelpBusiness localYelpBusiness = (YelpBusiness)getIntent().getParcelableExtra("extra.business.key");
    ((ReservationAttribution)findViewById(2131493091)).setProvider(localYelpBusiness.getReservationProvider());
  }
  
  private void e()
  {
    String str1 = getIntent().getStringExtra("extra.biz_dimension");
    String str2 = getIntent().getStringExtra("extra.source");
    if ((!StringUtils.e(str1)) && (!StringUtils.e(str2)))
    {
      if (!str2.equals("source_business_page")) {
        break label58;
      }
      AppData.a(EventIri.BusinessReservationCancel, Collections.singletonMap("biz_dimension", str1));
    }
    label58:
    while (!str2.equals("source_search_page")) {
      return;
    }
    AppData.a(EventIri.SearchReservationCancel, Collections.singletonMap("biz_dimension", str1));
  }
  
  private void f()
  {
    a = ((Button)findViewById(2131493191));
    Button localButton = a;
    f localf = new f(this, f);
    localButton.setTag(localf);
    localf.a();
    localButton.setOnClickListener(localf);
  }
  
  private void g()
  {
    b = ((Button)findViewById(2131493190));
    Button localButton = b;
    g localg = new g(this, f);
    localButton.setTag(localg);
    localButton.setOnClickListener(localg);
    localg.a();
  }
  
  private void h()
  {
    c = ((Button)findViewById(2131493192));
    e = ((Spinner)findViewById(2131493193));
    Object localObject = new String[20];
    int i = 0;
    while (i < 20)
    {
      localObject[i] = getResources().getQuantityString(2131623963, i + 1, new Object[] { Integer.valueOf(i + 1) });
      i += 1;
    }
    localObject = new ArrayAdapter(this, 2130903361, (Object[])localObject);
    ((ArrayAdapter)localObject).setDropDownViewResource(17367049);
    e.setAdapter((SpinnerAdapter)localObject);
    i = j().getInt("party", 1);
    e.setSelection(i);
    e.setOnItemSelectedListener(new d(this));
    c.setOnClickListener(new e(this));
  }
  
  private Dialog i()
  {
    f localf = (f)a.getTag();
    return new DatePickerDialog(this, localf, b.get(1), b.get(2), b.get(5));
  }
  
  private SharedPreferences j()
  {
    SharedPreferences localSharedPreferences2 = getSharedPreferences("ReservationSessionPrefs", 0);
    SharedPreferences localSharedPreferences1 = localSharedPreferences2;
    if (localSharedPreferences2.getLong("time", 0L) + 3600000L < System.currentTimeMillis())
    {
      localSharedPreferences2.edit().clear().commit();
      localSharedPreferences1 = getSharedPreferences("ReservationSessionPrefs", 0);
    }
    return localSharedPreferences1;
  }
  
  private Dialog k()
  {
    g localg = (g)b.getTag();
    Calendar localCalendar = a;
    return new IntervalTimePickerDialog(this, localg, localCalendar.get(11), localCalendar.get(12), false, 30);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cg paramcg)
  {
    getHelper().h();
    paramApiRequest = (YelpBusiness)getIntent().getParcelableExtra("extra.business.key");
    if (a(paramcg.b()))
    {
      CallNumberDialog.a(paramApiRequest.getDialablePhone()).show(getSupportFragmentManager(), null);
      return;
    }
    String str1 = getIntent().getStringExtra("extra.biz_dimension");
    String str2 = getIntent().getStringExtra("extra.source");
    startActivity(ChooseReservation.a(this, paramcg.a(), paramcg.b(), paramApiRequest, str1, str2));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReservationFind;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = (YelpBusiness)getIntent().getParcelableExtra("extra.business.key");
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("business_id", paramb.getId());
    localTreeMap.put("provider", paramb.getReservationProviderString());
    return localTreeMap;
  }
  
  public void onBackPressed()
  {
    e();
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903089);
    g = new h(4);
    f = a();
    f();
    g();
    h();
    b();
    d();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    case 3: 
    default: 
      return super.onCreateDialog(paramInt);
    case 1: 
      return i();
    case 2: 
      return k();
    }
    return g.a(this);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755035, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    getHelper().h();
    if (!(paramYelpException instanceof ApiException)) {
      cr.a(paramYelpException.getMessage(this), 0);
    }
    do
    {
      return;
      paramApiRequest = (ApiException)paramYelpException;
    } while (g.a(this, paramApiRequest));
    cr.a(paramYelpException.getMessage(this), 0);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494158)
    {
      c();
      return true;
    }
    if (paramMenuItem.getItemId() == 16908332) {
      e();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    a(f, e.getSelectedItemPosition());
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default: 
      super.onPrepareDialog(paramInt, paramDialog);
      return;
    }
    g.a(this, paramDialog);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.FindReservation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */