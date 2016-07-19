package com.yelp.android.ui.activities.reservations;

import android.app.Activity;
import android.os.Bundle;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.telephony.PhoneNumberUtils;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.au;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.account.a.a;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.widgets.ReservationAttribution;
import com.yelp.android.util.ContactsFetcher;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class ConfirmReservationFragment
  extends YelpFragment
{
  private EditText a;
  private EditText b;
  private EditText c;
  private EditText d;
  private EditText e;
  private au f;
  private b g;
  private YelpBusiness i;
  private final ApiRequest.b<Reservation> j = new ConfirmReservationFragment.1(this);
  
  public static ConfirmReservationFragment a(Reservation paramReservation, String paramString1, String paramString2, String paramString3, YelpBusiness paramYelpBusiness)
  {
    if (!paramReservation.a()) {
      throw new IllegalArgumentException("You need to have a locked reservation");
    }
    ConfirmReservationFragment localConfirmReservationFragment = new ConfirmReservationFragment();
    Bundle localBundle = new Bundle();
    localConfirmReservationFragment.setArguments(localBundle);
    localBundle.putParcelable("reservation", paramReservation);
    localBundle.putString("lastName", paramString1);
    localBundle.putString("phone", paramString2);
    localBundle.putParcelable("business", paramYelpBusiness);
    localBundle.putString("legal.disclaimer", paramString3);
    return localConfirmReservationFragment;
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
  
  private void a(Reservation paramReservation)
  {
    ((TextView)getView().findViewById(2131689773)).setText(getString(2131166304, new Object[] { new SimpleDateFormat(getString(2131166313), Locale.getDefault()).format(paramReservation.m()) }));
  }
  
  private boolean a(TextView paramTextView)
  {
    CharSequence localCharSequence = paramTextView.getText();
    if (TextUtils.isEmpty(localCharSequence))
    {
      a(paramTextView, getText(2131166227));
      return false;
    }
    String str = PhoneNumberUtils.formatNumber(String.valueOf(localCharSequence));
    try
    {
      if (PhoneNumberUtils.isEmergencyNumber(str))
      {
        a(paramTextView, getText(2131166227));
        return false;
      }
    }
    catch (SecurityException localSecurityException)
    {
      paramTextView.setText(localCharSequence);
      a(paramTextView, null);
    }
    return true;
  }
  
  private void b()
  {
    View localView = getView();
    a = ((EditText)localView.findViewById(2131689780));
    co localco = AppData.b().q();
    a.setText(localco.l());
    c = ((EditText)localView.findViewById(2131689786));
    c.setText(localco.i());
    b = ((EditText)localView.findViewById(2131689781));
    b.setText(h());
    d = ((EditText)localView.findViewById(2131689800));
    d.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
    d.setText(i());
    e = ((EditText)localView.findViewById(2131689801));
  }
  
  private boolean b(TextView paramTextView)
  {
    CharSequence localCharSequence = paramTextView.getText();
    if (TextUtils.isEmpty(localCharSequence))
    {
      a(paramTextView, getText(2131166222));
      return false;
    }
    paramTextView.setText(localCharSequence);
    a(paramTextView, null);
    return true;
  }
  
  private void c()
  {
    ((ReservationAttribution)getView().findViewById(2131689775)).setProvider(i.x());
    String str = getArguments().getString("legal.disclaimer");
    TextView localTextView = (TextView)getView().findViewById(2131689802);
    if (TextUtils.isEmpty(str))
    {
      localTextView.setVisibility(8);
      return;
    }
    localTextView.setText(Html.fromHtml(str));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  private boolean c(TextView paramTextView)
  {
    if (!new a.a().a(paramTextView))
    {
      a(paramTextView, getText(2131166226));
      return false;
    }
    paramTextView.setText(String.valueOf(paramTextView.getText()).trim());
    a(paramTextView, null);
    return true;
  }
  
  private void f()
  {
    if ((b(a)) && (b(b)) && (a(d)) && (c(c))) {
      g();
    }
  }
  
  private void g()
  {
    f = new au((Reservation)getArguments().getParcelable("reservation"), String.valueOf(a.getText()), String.valueOf(b.getText()), String.valueOf(c.getText()), PhoneNumberUtils.stripSeparators(String.valueOf(d.getText())), String.valueOf(e.getText()), i, j);
    f.f(new Void[0]);
    AppData.a(EventIri.ReservationConfirm, getParametersForIri(EventIri.ReservationConfirm));
    AppData.b().m().a(KahunaEventIri.ReservationConfirm);
    b(f);
  }
  
  private String h()
  {
    String str2 = getArguments().getString("lastName");
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = AppData.b().q().m();
    }
    return str1;
  }
  
  private String i()
  {
    String str = getArguments().getString("phone");
    Object localObject = str;
    if (TextUtils.isEmpty(str))
    {
      localObject = str;
      if (k.a(getContext(), PermissionGroup.CONTACTS))
      {
        localObject = AppData.b().q();
        localObject = ContactsFetcher.b().a(AppData.b(), ((co)localObject).i());
      }
    }
    return (String)localObject;
  }
  
  public ViewIri a()
  {
    return ViewIri.ReservationConfirmation;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new TreeMap();
    parama.put("business_id", i.aD());
    parama.put("provider", i.ae());
    return parama;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    g = ((b)paramActivity);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755038, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903085, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    setHasOptionsMenu(true);
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691030)
    {
      f();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    a("confirm_reservation", f);
  }
  
  public void onResume()
  {
    super.onResume();
    f = ((au)a("confirm_reservation", f, j));
    if ((f != null) && (f.u())) {
      b(f);
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView = (Reservation)getArguments().getParcelable("reservation");
    i = ((YelpBusiness)getArguments().getParcelable("business"));
    a(paramView);
    b();
    c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ConfirmReservationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */