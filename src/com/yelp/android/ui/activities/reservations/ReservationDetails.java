package com.yelp.android.ui.activities.reservations;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.Button;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ac;
import com.yelp.android.av.a;
import com.yelp.android.av.h;
import com.yelp.android.av.i;
import com.yelp.android.database.d;
import com.yelp.android.database.q;
import com.yelp.android.serializable.AttributedLabelValuePair;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.ReservationChangeEvent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.widgets.ListOfDetails;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ReservationDetails
  extends YelpActivity
{
  private YelpBusiness a;
  private ListOfDetails b;
  private Button c;
  private ac d;
  private h e;
  private final i f = new l(this);
  private final com.yelp.android.appdata.webrequests.m<List<YelpBusiness>> g = new m(this);
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ReservationDetails.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void c()
  {
    Reservation localReservation = a.getReservation();
    setTitle(localReservation.getViewTitle());
    Object localObject1 = localReservation.getHeaderTitle();
    Object localObject2 = localReservation.getAttributes();
    if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (localObject2 != null) && (!((List)localObject2).isEmpty()))
    {
      b = ((ListOfDetails)findViewById(2131493276));
      b.a((String)localObject1);
      localObject1 = ((List)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (AttributedLabelValuePair)((Iterator)localObject1).next();
        b.a(((AttributedLabelValuePair)localObject2).getLabel(), ((AttributedLabelValuePair)localObject2).getValue());
      }
      b.a();
    }
    c = ((Button)findViewById(2131493277));
    if (TextUtils.isEmpty(localReservation.getCancelString()))
    {
      c.setVisibility(8);
      return;
    }
    c.setText(localReservation.getCancelString());
    c.setOnClickListener(new j(this));
  }
  
  private void d()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("business_id", a.getId());
    localTreeMap.put("provider", a.getReservationProviderString());
    AppData.b().k().a(ViewIri.ReservationCancel, localTreeMap);
    showDialog(300);
  }
  
  private void e()
  {
    a.setReservation(null);
    AppData.b().i().f().a(a);
    new ObjectDirtyEvent(new ReservationChangeEvent(null, a), "com.yelp.android.reservation.update").a(this);
  }
  
  public SparseArray<ApiRequest<?, ?, ?>> a()
  {
    return (SparseArray)super.getLastCustomNonConfigurationInstance();
  }
  
  public SparseArray<ApiRequest<?, ?, ?>> b()
  {
    SparseArray localSparseArray = new SparseArray();
    localSparseArray.append(1, d);
    localSparseArray.append(2, e);
    return localSparseArray;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReservationDetails;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new TreeMap();
    paramb.put("business_id", a.getId());
    paramb.put("provider", a.getReservationProviderString());
    return paramb;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903108);
    if (paramBundle != null) {}
    for (a = ((YelpBusiness)paramBundle.getParcelable("saved.business"));; a = ((YelpBusiness)getIntent().getParcelableExtra("extra.business")))
    {
      paramBundle = (SparseArray)super.getLastCustomNonConfigurationInstance();
      if (paramBundle != null)
      {
        d = ((ac)paramBundle.get(1));
        e = ((h)paramBundle.get(2));
      }
      if (a.getReservation() != null) {
        break;
      }
      if ((d == null) || (!d.isFetching()))
      {
        d = new ac(a.getId(), g);
        enableLoading(d);
        d.execute(new Void[0]);
      }
      return;
    }
    if (e != null)
    {
      if (e.isCompleted())
      {
        f.onSuccess(e, null);
        return;
      }
      enableLoading(e);
      e.setCallback(f);
      return;
    }
    c();
  }
  
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return new AlertDialog.Builder(this).setMessage(2131166266).setPositiveButton(2131166904, new k(this)).setNegativeButton(2131166185, null).create();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (d != null)
    {
      d.cancel(true);
      d.setCallback(null);
    }
    if (e != null)
    {
      e.cancel(true);
      e.setCallback(null);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("saved.business", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ReservationDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */