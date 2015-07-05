package com.yelp.android.ui.activities.support;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBarActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpApiWorkerFragment;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.h;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.k;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

public abstract class YelpFragment
  extends Fragment
  implements com.yelp.android.analytics.a
{
  private YelpApiWorkerFragment a;
  private final List<BroadcastReceiver> b = new ArrayList();
  private PanelLoading c;
  private PanelError d;
  private long e;
  protected ErrorType f;
  
  protected PanelLoading A()
  {
    PanelLoading localPanelLoading = new PanelLoading(getActivity(), null);
    localPanelLoading.a(getResources().getColor(17170443));
    a(localPanelLoading);
    localPanelLoading.setVisibility(8);
    return localPanelLoading;
  }
  
  protected PanelLoading B()
  {
    if (c == null) {
      c = A();
    }
    return c;
  }
  
  protected void C()
  {
    if (getActivity() != null) {
      ((YelpActivity)getActivity()).hideLoadingDialog();
    }
  }
  
  protected void D()
  {
    if (b != null)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        BroadcastReceiver localBroadcastReceiver = (BroadcastReceiver)localIterator.next();
        getActivity().unregisterReceiver(localBroadcastReceiver);
      }
      b.clear();
    }
  }
  
  protected void E()
  {
    com.yelp.android.av.a.a(this, AppData.b());
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request a(String paramString, Request paramRequest, m<Result> paramm)
  {
    paramString = a.a(paramString, paramm);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public <Request extends h<?, ?, Result>, Result> Request a(String paramString, Request paramRequest, j<Result> paramj)
  {
    paramString = a.a(paramString, paramj);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  protected PanelError a(aa paramaa)
  {
    PanelError localPanelError = new PanelError(getActivity());
    if (paramaa != null) {
      localPanelError.a(paramaa);
    }
    for (;;)
    {
      if (getView() != null) {
        a(localPanelError);
      }
      localPanelError.setVisibility(8);
      return localPanelError;
      localPanelError.a();
    }
  }
  
  public final void a(IntentFilter paramIntentFilter, BroadcastReceiver paramBroadcastReceiver)
  {
    getActivity().registerReceiver(paramBroadcastReceiver, paramIntentFilter);
    b.add(paramBroadcastReceiver);
  }
  
  protected void a(View paramView)
  {
    ((ViewGroup)getView().findViewById(2131493551)).addView(paramView);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    a(paramApiRequest, 2131166015);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, int paramInt)
  {
    x();
    paramApiRequest = B();
    paramApiRequest.b(paramInt);
    paramApiRequest.setVisibility(0);
  }
  
  protected void a(YelpException paramYelpException)
  {
    a(ErrorType.getTypeFromException(paramYelpException));
  }
  
  public void a(YelpException paramYelpException, aa paramaa)
  {
    a(ErrorType.getTypeFromException(paramYelpException), paramaa);
  }
  
  public void a(ErrorType paramErrorType)
  {
    a(paramErrorType, null);
  }
  
  public void a(ErrorType paramErrorType, aa paramaa)
  {
    j();
    x();
    if (getView() != null)
    {
      PanelError localPanelError = y();
      localPanelError.a(paramErrorType, paramaa);
      localPanelError.setVisibility(0);
    }
  }
  
  public final void a(String paramString, BroadcastReceiver paramBroadcastReceiver)
  {
    a(new IntentFilter(paramString), paramBroadcastReceiver);
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    a.a(paramString, paramRequest);
  }
  
  public <Request extends h<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    a(paramString, paramRequest, true);
  }
  
  public <Request extends h<?, ?, Result>, Result> void a(String paramString, Request paramRequest, boolean paramBoolean)
  {
    a.a(paramString, paramRequest, paramBoolean);
  }
  
  protected void b(View paramView)
  {
    ((ViewGroup)getView().findViewById(2131493551)).removeView(paramView);
  }
  
  protected void b(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if (paramApiRequest != null)
    {
      paramApiRequest.cancel(true);
      paramApiRequest.setCallback(null);
    }
  }
  
  public final void b(String paramString, BroadcastReceiver paramBroadcastReceiver)
  {
    a(ObjectDirtyEvent.a(paramString), paramBroadcastReceiver);
  }
  
  public long getComponentId()
  {
    return e;
  }
  
  public b getIri()
  {
    return null;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.emptyMap();
  }
  
  public String getRequestIdForIri(b paramb)
  {
    return null;
  }
  
  public void i_()
  {
    a(null);
  }
  
  public void j()
  {
    if (c != null)
    {
      c.c();
      b(c);
      c = null;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (f != null) {
      a(f);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpApiWorkerFragment)getFragmentManager().findFragmentByTag("API_WORKER_FRAGMENT"));
    if (a == null)
    {
      a = new YelpApiWorkerFragment();
      getFragmentManager().beginTransaction().add(a, "API_WORKER_FRAGMENT").commit();
    }
    if (paramBundle == null)
    {
      e = new Random(System.currentTimeMillis()).nextLong();
      return;
    }
    e = paramBundle.getLong("id");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903441, paramViewGroup, false);
  }
  
  public void onDetach()
  {
    super.onDetach();
    D();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool = k.a(getActivity(), paramMenuItem);
    if (bool) {
      return bool;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    k.a(this, paramMenu);
  }
  
  public void onResume()
  {
    super.onResume();
    if (n.b(11)) {
      w();
    }
    E();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("id", e);
  }
  
  protected void w()
  {
    ((ActionBarActivity)getActivity()).supportInvalidateOptionsMenu();
  }
  
  public void x()
  {
    f = null;
    if (d != null)
    {
      b(d);
      d = null;
    }
  }
  
  protected PanelError y()
  {
    if (d == null) {
      d = z();
    }
    return d;
  }
  
  protected PanelError z()
  {
    return a(null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */