package com.yelp.android.ui.activities.reservations;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.CallNumberDialog;
import com.yelp.android.ui.widgets.ReservationAttribution;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

public class ChooseReservationFragment
  extends YelpFragment
  implements AdapterView.OnItemClickListener
{
  private GridView a;
  private YelpBusiness b;
  private b c;
  
  private int a(ArrayList<Reservation> paramArrayList, Calendar paramCalendar)
  {
    Date localDate = ((Reservation)paramArrayList.get(0)).m();
    paramArrayList = ((Reservation)paramArrayList.get(paramArrayList.size() - 1)).m();
    return (int)Math.max(2.0D, Math.max(Math.ceil(Math.abs(localDate.getTime() - paramCalendar.getTimeInMillis()) / 3600000.0D), Math.ceil(Math.abs(paramArrayList.getTime() - paramCalendar.getTimeInMillis()) / 3600000.0D)));
  }
  
  public static ChooseReservationFragment a(Date paramDate, ArrayList<Reservation> paramArrayList, YelpBusiness paramYelpBusiness)
  {
    ChooseReservationFragment localChooseReservationFragment = new ChooseReservationFragment();
    Bundle localBundle = new Bundle();
    localChooseReservationFragment.setArguments(localBundle);
    localBundle.putParcelableArrayList("reservations", paramArrayList);
    localBundle.putLong("desired_time", paramDate.getTime());
    localBundle.putParcelable("business", paramYelpBusiness);
    return localChooseReservationFragment;
  }
  
  private void a(Long paramLong, ArrayList<Reservation> paramArrayList)
  {
    TextView localTextView = (TextView)getView().findViewById(2131689773);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(getString(2131166312), Locale.getDefault());
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong.longValue());
    localTextView.setText(getString(2131166302, new Object[] { Integer.valueOf(a(paramArrayList, localCalendar)), localSimpleDateFormat.format(localCalendar.getTime()) }));
  }
  
  private void a(ArrayList<Reservation> paramArrayList)
  {
    a = ((GridView)getView().findViewById(2131689774));
    a.setSelector(new ColorDrawable(0));
    ChooseReservationFragment.a locala = new ChooseReservationFragment.a();
    locala.a(paramArrayList);
    a.setAdapter(locala);
    a.setOnItemClickListener(this);
  }
  
  public ViewIri a()
  {
    return ViewIri.ReservationMatches;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    if (getArguments().getParcelableArrayList("reservations").isEmpty()) {
      return Collections.emptyMap();
    }
    parama = new com.yelp.android.g.a();
    parama.put("business_id", b.aD());
    parama.put("provider", b.ae());
    return parama;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = ((b)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903081, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (Reservation)paramAdapterView.getItemAtPosition(paramInt);
    if (paramAdapterView.b())
    {
      CallNumberDialog.a(b.ao()).show(getActivity().getSupportFragmentManager(), null);
      return;
    }
    c.a(paramAdapterView);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramBundle = getArguments().getParcelableArrayList("reservations");
    long l = getArguments().getLong("desired_time", 0L);
    b = ((YelpBusiness)getArguments().getParcelable("business"));
    a(Long.valueOf(l), paramBundle);
    a(paramBundle);
    ((ReservationAttribution)paramView.findViewById(2131689775)).setProvider(b.x());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ChooseReservationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */