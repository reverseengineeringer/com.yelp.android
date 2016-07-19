package com.yelp.android.ui.activities.reservations;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.af;
import com.yelp.android.appdata.webrequests.aj;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.database.b;
import com.yelp.android.database.g;
import com.yelp.android.serializable.AttributedLabelValuePair;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.ReservationChangeEvent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.ListOfDetails;
import com.yelp.android.util.ErrorType;
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
  private af d;
  private c e;
  private final c.a f = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      ReservationDetails.e(ReservationDetails.this);
      finish();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      as.a(paramAnonymousYelpException.getMessage(AppData.b()), 1);
      finish();
    }
  };
  private final ApiRequest.b<List<YelpBusiness>> g = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<YelpBusiness> paramAnonymousList)
    {
      if (paramAnonymousList.size() > 0)
      {
        ReservationDetails.a(ReservationDetails.this, (YelpBusiness)paramAnonymousList.get(0));
        if (ReservationDetails.b(ReservationDetails.this).aF() == null) {
          break label69;
        }
        startActivity(ReservationDetails.a(ReservationDetails.this, ReservationDetails.b(ReservationDetails.this)));
      }
      for (;;)
      {
        finish();
        return;
        label69:
        ReservationDetails.e(ReservationDetails.this);
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      as.a(getString(ErrorType.getTypeFromException(paramAnonymousYelpException).getTextId()), 1);
      finish();
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ReservationDetails.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void c()
  {
    Reservation localReservation = a.aF();
    setTitle(localReservation.i());
    Object localObject1 = localReservation.h();
    Object localObject2 = localReservation.l();
    if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (localObject2 != null) && (!((List)localObject2).isEmpty()))
    {
      b = ((ListOfDetails)findViewById(2131689933));
      b.a((String)localObject1);
      localObject1 = ((List)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (AttributedLabelValuePair)((Iterator)localObject1).next();
        b.a(((AttributedLabelValuePair)localObject2).c(), ((AttributedLabelValuePair)localObject2).b());
      }
      b.a();
    }
    c = ((Button)findViewById(2131689934));
    if (TextUtils.isEmpty(localReservation.g()))
    {
      c.setVisibility(8);
      return;
    }
    c.setText(localReservation.g());
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ReservationDetails.a(ReservationDetails.this);
      }
    });
  }
  
  private void d()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("business_id", a.aD());
    localTreeMap.put("provider", a.ae());
    AppData.b().k().a(ViewIri.ReservationCancel, localTreeMap);
    showDialog(300);
  }
  
  private void e()
  {
    a.a(null);
    AppData.b().i().d().a(a);
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
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = new TreeMap();
    parama.put("business_id", a.aD());
    parama.put("provider", a.ae());
    return parama;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903119);
    if (paramBundle != null) {}
    for (a = ((YelpBusiness)paramBundle.getParcelable("saved.business"));; a = ((YelpBusiness)getIntent().getParcelableExtra("extra.business")))
    {
      paramBundle = (SparseArray)super.getLastCustomNonConfigurationInstance();
      if (paramBundle != null)
      {
        d = ((af)paramBundle.get(1));
        e = ((c)paramBundle.get(2));
      }
      if (a.aF() != null) {
        break;
      }
      if ((d == null) || (!d.u()))
      {
        d = new af(a.aD(), g);
        enableLoading(d);
        d.f(new Void[0]);
      }
      return;
    }
    if (e != null)
    {
      if (e.v())
      {
        f.onSuccess(e, null);
        return;
      }
      enableLoading(e);
      e.a(f);
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
    new AlertDialog.Builder(this).setMessage(2131166303).setPositiveButton(2131166857, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = new TreeMap();
        paramAnonymousDialogInterface.put("business_id", ReservationDetails.b(ReservationDetails.this).aD());
        paramAnonymousDialogInterface.put("provider", ReservationDetails.b(ReservationDetails.this).ae());
        AppData.a(EventIri.ReservationCancelConfirm, paramAnonymousDialogInterface);
        ReservationDetails.a(ReservationDetails.this, new aj(ReservationDetails.b(ReservationDetails.this), ReservationDetails.c(ReservationDetails.this)));
        enableLoading(ReservationDetails.d(ReservationDetails.this));
        ReservationDetails.d(ReservationDetails.this).f(new Void[0]);
      }
    }).setNegativeButton(2131166235, null).create();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (d != null)
    {
      d.a(true);
      d.a(null);
    }
    if (e != null)
    {
      e.a(true);
      e.a(null);
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