package com.yelp.android.ui.activities.reservations;

import android.app.Dialog;
import android.app.backup.BackupManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.telephony.PhoneNumberUtils;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.be;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.ReservationChangeEvent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.account.g;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.widgets.ReservationAttribution;
import com.yelp.android.util.ContactsFetcher;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import java.text.DateFormat;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;

public class ConfirmReservation
  extends YelpActivity
  implements m<Reservation>
{
  private EditText a;
  private EditText b;
  private EditText c;
  private EditText d;
  private EditText e;
  private h f;
  
  public static Intent a(Context paramContext, Reservation paramReservation, String paramString1, String paramString2, String paramString3, YelpBusiness paramYelpBusiness, String paramString4, String paramString5)
  {
    if (!paramReservation.isLocked()) {
      throw new IllegalArgumentException("You need to have a locked reservation");
    }
    paramContext = new Intent(paramContext, ConfirmReservation.class);
    paramContext.putExtra("extra.reservation", paramReservation);
    paramContext.putExtra("extra.lastName", paramString1);
    paramContext.putExtra("extra.phone", paramString2);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putExtra("extra.legal.disclaimer", paramString3);
    paramContext.putExtra("extra.biz_dimension", paramString4);
    paramContext.putExtra("extra.source", paramString5);
    return paramContext;
  }
  
  private static final void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.requestFocus();
      paramTextView.setError(new SpannableStringBuilder(paramCharSequence));
      return;
    }
    paramTextView.setError(null);
  }
  
  public static boolean a(TextView paramTextView, Context paramContext)
  {
    CharSequence localCharSequence = paramTextView.getText();
    if (TextUtils.isEmpty(localCharSequence))
    {
      a(paramTextView, paramContext.getText(2131166179));
      return false;
    }
    String str = PhoneNumberUtils.formatNumber(String.valueOf(localCharSequence));
    try
    {
      if (PhoneNumberUtils.isEmergencyNumber(str))
      {
        a(paramTextView, paramContext.getText(2131166179));
        return false;
      }
    }
    catch (SecurityException paramContext)
    {
      paramTextView.setText(localCharSequence);
      a(paramTextView, null);
    }
    return true;
  }
  
  private void b()
  {
    a = ((EditText)findViewById(2131493132));
    dc localdc = AppData.b().m();
    a.setText(localdc.q());
    c = ((EditText)findViewById(2131493135));
    c.setText(localdc.m());
    b = ((EditText)findViewById(2131493133));
    b.setText(d());
    d = ((EditText)findViewById(2131493134));
    d.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
    d.setText(e());
    e = ((EditText)findViewById(2131493136));
  }
  
  private void b(Reservation paramReservation)
  {
    paramReservation = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
    ((ReservationAttribution)findViewById(2131493091)).setProvider(paramReservation.getReservationProvider());
    paramReservation = getIntent().getStringExtra("extra.legal.disclaimer");
    TextView localTextView = (TextView)findViewById(2131493137);
    if (TextUtils.isEmpty(paramReservation))
    {
      localTextView.setVisibility(8);
      return;
    }
    localTextView.setText(Html.fromHtml(paramReservation));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  public static boolean b(TextView paramTextView, Context paramContext)
  {
    CharSequence localCharSequence = paramTextView.getText();
    if (TextUtils.isEmpty(localCharSequence))
    {
      a(paramTextView, paramContext.getText(2131166172));
      return false;
    }
    paramTextView.setText(localCharSequence);
    a(paramTextView, null);
    return true;
  }
  
  private void c()
  {
    if ((b(a, this)) && (b(b, this)) && (a(d, this)) && (c(c, this))) {
      a();
    }
  }
  
  public static boolean c(TextView paramTextView, Context paramContext)
  {
    if (!new com.yelp.android.ui.activities.account.h().a(paramTextView))
    {
      a(paramTextView, paramContext.getText(2131166178));
      return false;
    }
    paramTextView.setText(String.valueOf(paramTextView.getText()).trim());
    a(paramTextView, null);
    return true;
  }
  
  private String d()
  {
    String str2 = getIntent().getStringExtra("extra.lastName");
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = AppData.b().m().r();
    }
    return str1;
  }
  
  private String e()
  {
    String str = getIntent().getStringExtra("extra.phone");
    Object localObject = str;
    if (TextUtils.isEmpty(str))
    {
      localObject = AppData.b().m();
      localObject = ContactsFetcher.b().a(this, ((dc)localObject).m());
    }
    return (String)localObject;
  }
  
  private void f()
  {
    SharedPreferences.Editor localEditor = getSharedPreferences("ReservationSessionPrefs", 0).edit();
    localEditor.clear();
    localEditor.commit();
    new BackupManager(this).dataChanged();
  }
  
  public void a()
  {
    be localbe = new be((Reservation)getIntent().getParcelableExtra("extra.reservation"), String.valueOf(a.getText()), String.valueOf(b.getText()), String.valueOf(c.getText()), PhoneNumberUtils.stripSeparators(String.valueOf(d.getText())), String.valueOf(e.getText()), (YelpBusiness)getIntent().getParcelableExtra("extra.business"), this);
    localbe.execute(new Void[0]);
    AppData.a(EventIri.ReservationConfirm, getParametersForIri(EventIri.ReservationConfirm));
    j.a(KahunaEventIri.ReservationConfirm);
    showLoadingDialog(localbe);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Reservation paramReservation)
  {
    hideLoadingDialog();
    paramApiRequest = getIntent().getStringExtra("extra.biz_dimension");
    Object localObject = getIntent().getStringExtra("extra.source");
    if ((!StringUtils.e(paramApiRequest)) && (!StringUtils.e((String)localObject)))
    {
      if (!((String)localObject).equals("source_business_page")) {
        break label124;
      }
      AppData.a(EventIri.BusinessReservationConfirmed, Collections.singletonMap("biz_dimension", paramApiRequest));
    }
    for (;;)
    {
      f();
      paramApiRequest = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
      localObject = ActivityBusinessPage.a(this, paramApiRequest.getId());
      ((Intent)localObject).addFlags(67108864);
      startActivity((Intent)localObject);
      new ObjectDirtyEvent(new ReservationChangeEvent(paramReservation, paramApiRequest), "com.yelp.android.reservation.update").a(this);
      return;
      label124:
      if (((String)localObject).equals("source_search_page")) {
        AppData.a(EventIri.SearchReservationConfirmed, Collections.singletonMap("biz_dimension", paramApiRequest));
      }
    }
  }
  
  public void a(Reservation paramReservation)
  {
    ((TextView)findViewById(2131493089)).setText(getString(2131166267, new Object[] { Reservation.getDatestampForDisplay(getString(2131166278)).format(paramReservation.getDatestamp()) }));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReservationConfirmation;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("business_id", paramb.getId());
    localTreeMap.put("provider", paramb.getReservationProviderString());
    return localTreeMap;
  }
  
  public String getRequestIdForIri(b paramb)
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = new h(2131165464);
    setContentView(2130903076);
    paramBundle = (Reservation)getIntent().getParcelableExtra("extra.reservation");
    a(paramBundle);
    b();
    b(paramBundle);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return f.a(this);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755034, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    f.a(this, paramYelpException);
    hideLoadingDialog();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494157)
    {
      c();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default: 
      super.onPrepareDialog(paramInt, paramDialog);
      return;
    }
    f.a(this, paramDialog);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ConfirmReservation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */