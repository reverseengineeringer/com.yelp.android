package com.yelp.android.ui.activities.reservations;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.appdata.webrequests.en;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.l;
import com.yelp.android.ui.dialogs.CallNumberDialog;
import com.yelp.android.ui.widgets.ReservationAttribution;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class ChooseReservation
  extends YelpActivity
  implements AdapterView.OnItemClickListener, m<en>, l
{
  private GridView a;
  private h b;
  private boolean c;
  
  private int a(ArrayList<Reservation> paramArrayList, Calendar paramCalendar)
  {
    Date localDate = ((Reservation)paramArrayList.get(0)).getDatestamp();
    paramArrayList = ((Reservation)paramArrayList.get(paramArrayList.size() - 1)).getDatestamp();
    return (int)Math.max(2.0D, Math.max(Math.ceil(Math.abs(localDate.getTime() - paramCalendar.getTimeInMillis()) / 3600000.0D), Math.ceil(Math.abs(paramArrayList.getTime() - paramCalendar.getTimeInMillis()) / 3600000.0D)));
  }
  
  public static Intent a(Context paramContext, Date paramDate, ArrayList<Reservation> paramArrayList, YelpBusiness paramYelpBusiness, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, ChooseReservation.class);
    paramContext.putParcelableArrayListExtra("extra.reservations", paramArrayList);
    paramContext.putExtra("extra.desired_time", paramDate.getTime());
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putExtra("extra.biz_dimension", paramString1);
    paramContext.putExtra("extra.source", paramString2);
    return paramContext;
  }
  
  private void a(Reservation paramReservation)
  {
    ((ReservationAttribution)findViewById(2131493091)).setProvider(((YelpBusiness)getIntent().getParcelableExtra("extra.business")).getReservationProvider());
  }
  
  private void a(Long paramLong, ArrayList<Reservation> paramArrayList)
  {
    TextView localTextView = (TextView)findViewById(2131493089);
    DateFormat localDateFormat = Reservation.getDatestampForDisplay(getString(2131166277));
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong.longValue());
    localTextView.setText(getString(2131166265, new Object[] { Integer.valueOf(a(paramArrayList, localCalendar)), localDateFormat.format(localCalendar.getTime()) }));
  }
  
  private void a(ArrayList<Reservation> paramArrayList)
  {
    a = ((GridView)findViewById(2131493090));
    a.setSelector(new ColorDrawable(0));
    b localb = new b(this);
    localb.a(paramArrayList);
    a.setAdapter(localb);
    a.setOnItemClickListener(this);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if ((a == null) || (a.getCount() == 0)) {
      finish();
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, en paramen)
  {
    hideLoadingDialog();
    paramApiRequest = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
    String str1 = getIntent().getStringExtra("extra.biz_dimension");
    String str2 = getIntent().getStringExtra("extra.source");
    startActivity(ActivityLogin.a(this, 2131166047, ConfirmReservation.a(this, paramen.a(), paramen.b(), paramen.c(), paramen.d(), paramApiRequest, str1, str2)));
    if (c) {
      finish();
    }
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    if (getIntent().getParcelableArrayListExtra("extra.reservations").isEmpty()) {
      return Collections.emptyMap();
    }
    paramb = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("business_id", paramb.getId());
    localTreeMap.put("provider", paramb.getReservationProviderString());
    return localTreeMap;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new h(1, new a(this));
    paramBundle = getIntent().getParcelableArrayListExtra("extra.reservations");
    long l = getIntent().getLongExtra("extra.desired_time", 0L);
    YelpBusiness localYelpBusiness = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
    Iterator localIterator = paramBundle.iterator();
    Reservation localReservation;
    while (localIterator.hasNext())
    {
      localReservation = (Reservation)localIterator.next();
      if (localReservation.getDatestamp().getTime() == l)
      {
        if (!localReservation.hasCreditCardHold()) {
          break label177;
        }
        CallNumberDialog.a(localYelpBusiness.getDialablePhone()).show(getSupportFragmentManager(), null);
      }
    }
    c = false;
    setContentView(2130903073);
    AppData.a(ViewIri.ReservationMatches, getParametersForIri(ViewIri.ReservationMatches));
    a(Long.valueOf(l), paramBundle);
    a(paramBundle);
    a((Reservation)paramBundle.get(0));
    return;
    label177:
    paramBundle = new em(localReservation, localYelpBusiness, this);
    showLoadingDialog(paramBundle, this);
    paramBundle.execute(new Void[0]);
    c = true;
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 1) {
      return b.a(this);
    }
    return super.onCreateDialog(paramInt);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    b.a(this, paramYelpException);
    hideLoadingDialog();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (Reservation)paramAdapterView.getItemAtPosition(paramInt);
    paramView = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
    if (paramAdapterView.hasCreditCardHold())
    {
      CallNumberDialog.a(paramView.getDialablePhone()).show(getSupportFragmentManager(), null);
      return;
    }
    paramAdapterView = new em(paramAdapterView, paramView, this);
    paramAdapterView.execute(new Void[0]);
    showLoadingDialog(paramAdapterView, this);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default: 
      super.onPrepareDialog(paramInt, paramDialog);
      return;
    }
    b.a(this, paramDialog);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ChooseReservation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */