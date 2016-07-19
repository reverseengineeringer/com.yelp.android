package com.yelp.android.ui.activities.reservations;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.text.TextUtils;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.by;
import com.yelp.android.appdata.webrequests.by.a;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.dp;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.serializable.ReservationLeaseResponse;
import com.yelp.android.serializable.ReservationSearchAction;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b.b;
import com.yelp.android.ui.dialogs.CallNumberDialog;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

public class ActivityReservationFlow
  extends YelpActivity
  implements b
{
  private a a;
  private DialogInterface.OnClickListener b;
  private YelpBusiness c;
  private String d;
  private String e;
  private by f;
  private dp g;
  private ViewIri h;
  private ApiRequest.b<by.a> i = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, by.a paramAnonymousa)
    {
      paramAnonymousApiRequest = (by)paramAnonymousApiRequest;
      if (ActivityReservationFlow.a(paramAnonymousa.b()))
      {
        hideLoadingDialog();
        paramAnonymousApiRequest = CallNumberDialog.a(ActivityReservationFlow.a(ActivityReservationFlow.this).ao());
        paramAnonymousApiRequest.a(ActivityReservationFlow.b(ActivityReservationFlow.this));
        paramAnonymousApiRequest.show(getSupportFragmentManager(), "call_number_dialog");
      }
      do
      {
        return;
        paramAnonymousApiRequest = paramAnonymousApiRequest.b();
      } while (a(paramAnonymousApiRequest, paramAnonymousa));
      hideLoadingDialog();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      if (!(paramAnonymousYelpException instanceof ApiException))
      {
        as.a(paramAnonymousYelpException.getMessage(), 0);
        finish();
      }
      do
      {
        return;
        paramAnonymousApiRequest = (ApiException)paramAnonymousYelpException;
        a(ActivityReservationFlow.c(ActivityReservationFlow.this));
      } while (a(paramAnonymousApiRequest));
      as.a(paramAnonymousYelpException.getMessage(), 0);
      finish();
    }
  };
  private ApiRequest.b<ReservationLeaseResponse> j = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ReservationLeaseResponse paramAnonymousReservationLeaseResponse)
    {
      hideLoadingDialog();
      paramAnonymousApiRequest = ConfirmReservationFragment.a(paramAnonymousReservationLeaseResponse.d(), paramAnonymousReservationLeaseResponse.c(), paramAnonymousReservationLeaseResponse.b(), paramAnonymousReservationLeaseResponse.a(), ActivityReservationFlow.a(ActivityReservationFlow.this));
      getSupportFragmentManager().a().b(2131689997, paramAnonymousApiRequest, "confirm_reservation").a(null).a();
      ActivityReservationFlow.a(ActivityReservationFlow.this, ViewIri.ReservationConfirmation);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      a(new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          if (ActivityReservationFlow.d(ActivityReservationFlow.this) == null)
          {
            finish();
            return;
          }
          paramAnonymous2DialogInterface.dismiss();
        }
      });
      a(paramAnonymousYelpException);
    }
  };
  private final DialogInterface.OnClickListener k = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      paramAnonymousDialogInterface.dismiss();
      finish();
    }
  };
  private DialogInterface.OnDismissListener l = new DialogInterface.OnDismissListener()
  {
    public void onDismiss(DialogInterface paramAnonymousDialogInterface)
    {
      if (ActivityReservationFlow.d(ActivityReservationFlow.this) == null) {
        finish();
      }
    }
  };
  private b.b m = new b.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest)
    {
      if (ActivityReservationFlow.d(ActivityReservationFlow.this) == null) {
        finish();
      }
    }
  };
  
  public static Intent a(Context paramContext, BusinessSearchResult paramBusinessSearchResult, String paramString, ReservationSearchAction paramReservationSearchAction)
  {
    return a(paramContext, paramBusinessSearchResult.a(), paramBusinessSearchResult.g(), paramString).putExtra("extra.search_action", paramReservationSearchAction);
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2)
  {
    return new Intent(paramContext, ActivityReservationFlow.class).putExtra("extra.business.key", paramYelpBusiness).putExtra("extra.biz_dimension", paramString1).putExtra("extra.source", paramString2);
  }
  
  private Fragment a()
  {
    return getSupportFragmentManager().a(2131689997);
  }
  
  private void b()
  {
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    locala.put("source", h.getIriName());
    if (!StringUtils.d(d))
    {
      locala.put("biz_dimension", d);
      if ((!TextUtils.equals(e, "source_business_page")) && (!TextUtils.equals(e, "source_vertical_business_page"))) {
        break label93;
      }
      AppData.a(EventIri.BusinessReservationCancel, locala);
    }
    label93:
    do
    {
      return;
      locala.put("biz_dimension", "none");
      break;
      if ((TextUtils.equals(e, "source_search_page")) || (TextUtils.equals(e, "source_vertical_search_page")))
      {
        AppData.a(EventIri.SearchReservationCancel, locala);
        return;
      }
      if (TextUtils.equals(e, "source_feed"))
      {
        AppData.a(EventIri.FeedNearbyReservationCancel, locala);
        return;
      }
    } while (!TextUtils.equals(e, "source_more_info_page"));
    AppData.a(EventIri.MoreInfoPageReservationCancel, locala);
  }
  
  private static boolean b(ArrayList<Reservation> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      return false;
    }
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      if (!((Reservation)paramArrayList.next()).b()) {
        return false;
      }
    }
    return true;
  }
  
  private void c()
  {
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    if (!StringUtils.d(d))
    {
      locala.put("biz_dimension", d);
      if ((!TextUtils.equals(e, "source_business_page")) && (!TextUtils.equals(e, "source_vertical_business_page"))) {
        break label77;
      }
      AppData.a(EventIri.BusinessReservationConfirmed, locala);
    }
    label77:
    do
    {
      return;
      locala.put("biz_dimension", "none");
      break;
      if ((TextUtils.equals(e, "source_search_page")) || (TextUtils.equals(e, "source_vertical_search_page")))
      {
        AppData.a(EventIri.SearchReservationConfirmed, locala);
        return;
      }
      if (TextUtils.equals(e, "source_feed"))
      {
        AppData.a(EventIri.FeedNearbyReservationConfirmed, locala);
        return;
      }
    } while (!TextUtils.equals(e, "source_more_info_page"));
    AppData.a(EventIri.MoreInfoPageReservationConfirmed, locala);
  }
  
  @SuppressLint({"WrongConstant"})
  public void a(int paramInt, Date paramDate)
  {
    f = new by(i, c, paramDate, paramInt, e);
    f.f(new Void[0]);
    showLoadingDialog(f, m);
  }
  
  public void a(DialogInterface.OnClickListener paramOnClickListener)
  {
    b = paramOnClickListener;
  }
  
  public void a(Reservation paramReservation)
  {
    g = new dp(paramReservation, c, j);
    g.f(new Void[0]);
    showLoadingDialog(g, m);
  }
  
  public boolean a(YelpException paramYelpException)
  {
    return a.a(this, paramYelpException);
  }
  
  public boolean a(Date paramDate, by.a parama)
  {
    Iterator localIterator = parama.b().iterator();
    while (localIterator.hasNext())
    {
      Reservation localReservation = (Reservation)localIterator.next();
      if (localReservation.m().getTime() == paramDate.getTime())
      {
        if (localReservation.b())
        {
          paramDate = CallNumberDialog.a(c.ao());
          paramDate.a(l);
          paramDate.show(getSupportFragmentManager(), "call_number_dialog");
          hideLoadingDialog();
        }
        for (;;)
        {
          return true;
          a(localReservation);
        }
      }
    }
    paramDate = ChooseReservationFragment.a(parama.a(), parama.b(), c);
    getSupportFragmentManager().a().b(2131689997, paramDate, "choose_reservation_fragment").a(null).a();
    h = ViewIri.ReservationMatches;
    return false;
  }
  
  public void b(Reservation paramReservation)
  {
    c();
    if (AppData.b().q().b()) {}
    for (paramReservation = ActivityBusinessPage.b(this, c.aD());; paramReservation = ActivityBusinessPage.a(this, c.aD()))
    {
      if ((e.equals("source_business_page")) || (e.equals("source_vertical_business_page"))) {
        paramReservation.addFlags(67108864);
      }
      startActivity(paramReservation);
      finish();
      return;
    }
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    if ((getSupportFragmentManager().e() == 1) || (a() == null))
    {
      getSupportFragmentManager().c();
      b();
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    d = localIntent.getStringExtra("extra.biz_dimension");
    c = ((YelpBusiness)localIntent.getParcelableExtra("extra.business.key"));
    e = localIntent.getStringExtra("extra.source");
    a = new a(1);
    h = ViewIri.ReservationFind;
    if ((getSupportFragmentManager().a(2131689997) == null) && (paramBundle == null))
    {
      paramBundle = AppData.b().f().Q();
      if ((!getIntent().hasExtra("extra.search_action")) || ((!"source_vertical_search_page".equals(e)) && (!"source_vertical_business_page".equals(e)) && (!"source_feed".equals(e)))) {
        break label185;
      }
      paramBundle = (ReservationSearchAction)localIntent.getParcelableExtra("extra.search_action");
      a(paramBundle.k(), paramBundle.o());
    }
    for (;;)
    {
      paramBundle = (CallNumberDialog)getSupportFragmentManager().a("call_number_dialog");
      if (paramBundle != null) {
        paramBundle.a(l);
      }
      return;
      label185:
      if (("source_vertical_business_page".equals(e)) && (paramBundle != null))
      {
        a(paramBundle.d(), paramBundle.e());
      }
      else
      {
        paramBundle = FindReservationFragment.a(c, e);
        getSupportFragmentManager().a().a(2131689997, paramBundle).a(null).a();
      }
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 1) {
      return a.a(this);
    }
    return super.onCreateDialog(paramInt);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("find_reservation", f);
    freezeRequest("lease_reservation", g);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default: 
      super.onPrepareDialog(paramInt, paramDialog);
      return;
    }
    a.a(this, paramDialog, b);
  }
  
  public void onResume()
  {
    super.onResume();
    f = ((by)thawRequest("find_reservation", f, i));
    g = ((dp)thawRequest("lease_reservation", g, j));
    if ((f != null) && (!f.v())) {
      showLoadingDialog(f, m);
    }
    while ((g == null) || (g.v())) {
      return;
    }
    showLoadingDialog(g, m);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ActivityReservationFlow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */