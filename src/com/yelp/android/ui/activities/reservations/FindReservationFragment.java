package com.yelp.android.ui.activities.reservations;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.l;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.DatePickerDialogFragment;
import com.yelp.android.ui.dialogs.DatePickerDialogFragment.a;
import com.yelp.android.ui.dialogs.TimePickerDialogFragment;
import com.yelp.android.ui.dialogs.TimePickerDialogFragment.a;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.ReservationAttribution;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

public class FindReservationFragment
  extends YelpFragment
{
  private Button a;
  private Button b;
  private Button c;
  private Button d;
  private Spinner e;
  private Calendar f;
  private int g;
  private YelpBusiness i;
  private b j;
  private final DatePickerDialogFragment.a k = new FindReservationFragment.6(this);
  private final TimePickerDialogFragment.a l = new FindReservationFragment.7(this);
  
  public static FindReservationFragment a(YelpBusiness paramYelpBusiness, String paramString)
  {
    FindReservationFragment localFindReservationFragment = new FindReservationFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("business", paramYelpBusiness);
    localBundle.putString("source", paramString);
    localFindReservationFragment.setArguments(localBundle);
    return localFindReservationFragment;
  }
  
  private void f()
  {
    ReservationFilter localReservationFilter = new ReservationFilter(g, f.getTime());
    AppData.b().f().a(localReservationFilter);
    j.a(g, f.getTime());
  }
  
  private void g()
  {
    a = ((Button)getView().findViewById(2131689863));
    a.setOnClickListener(new FindReservationFragment.2(this));
    b();
  }
  
  private void h()
  {
    b = ((Button)getView().findViewById(2131689862));
    b.setOnClickListener(new FindReservationFragment.3(this));
    a();
  }
  
  private void i()
  {
    c = ((Button)getView().findViewById(2131689864));
    e = ((Spinner)getView().findViewById(2131689865));
    Object localObject = new String[20];
    int m = 0;
    while (m < 20)
    {
      localObject[m] = getResources().getQuantityString(2131230749, m + 1, new Object[] { Integer.valueOf(m + 1) });
      m += 1;
    }
    localObject = new ArrayAdapter(getActivity(), 2130903460, (Object[])localObject);
    ((ArrayAdapter)localObject).setDropDownViewResource(17367049);
    e.setAdapter((SpinnerAdapter)localObject);
    e.setSelection(g - 1);
    e.setOnItemSelectedListener(new FindReservationFragment.4(this));
    c.setOnClickListener(new FindReservationFragment.5(this));
  }
  
  private DateFormat j()
  {
    return DateFormat.getTimeInstance(3);
  }
  
  private DateFormat k()
  {
    return new SimpleDateFormat(as.a(getString(2131165750), Locale.getDefault()), AppData.b().g().h());
  }
  
  public void a()
  {
    b.setText(j().format(f.getTime()));
  }
  
  public void b()
  {
    a.setText(k().format(f.getTime()));
  }
  
  public ViewIri c()
  {
    return ViewIri.ReservationFind;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new com.yelp.android.g.a();
    parama.put("business_id", i.aD());
    parama.put("provider", i.ae());
    return parama;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    setHasOptionsMenu(true);
    j = ((b)paramActivity);
    paramActivity = (DatePickerDialogFragment)getFragmentManager().a("datePicker");
    if (paramActivity != null) {
      paramActivity.a(k);
    }
    paramActivity = (TimePickerDialogFragment)getFragmentManager().a("timePicker");
    if (paramActivity != null) {
      paramActivity.a(l);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = Calendar.getInstance();
    if (paramBundle != null)
    {
      f.setTimeInMillis(paramBundle.getLong("saved_time"));
      g = paramBundle.getInt("saved_party_size");
      return;
    }
    paramBundle = c.a();
    g = paramBundle.d();
    f.setTimeInMillis(paramBundle.e().getTime());
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755039, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903101, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691031)
    {
      f();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("saved_time", f.getTimeInMillis());
    paramBundle.putInt("saved_party_size", g);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    i = ((YelpBusiness)getArguments().getParcelable("business"));
    g();
    h();
    i();
    d = ((Button)paramView.findViewById(2131689697));
    d.setOnClickListener(new FindReservationFragment.1(this));
    ((ReservationAttribution)paramView.findViewById(2131689775)).setProvider(i.x());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.FindReservationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */