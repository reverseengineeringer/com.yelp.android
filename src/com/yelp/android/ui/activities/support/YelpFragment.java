package com.yelp.android.ui.activities.support;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v7.app.ActionBarActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpApiWorkerFragment;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.k;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.f;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
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
  private com.yelp.android.bx.a e;
  private long f;
  protected ErrorType h;
  
  protected PanelError A()
  {
    if (d == null) {
      d = B();
    }
    return d;
  }
  
  protected PanelError B()
  {
    return a(null);
  }
  
  protected PanelLoading C()
  {
    if (c == null) {
      c = y_();
    }
    return c;
  }
  
  protected void D()
  {
    if (getActivity() != null) {
      ((YelpActivity)getActivity()).showLoadingDialog();
    }
  }
  
  protected void E()
  {
    if (getActivity() != null) {
      ((YelpActivity)getActivity()).hideLoadingDialog();
    }
  }
  
  protected void F()
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
  
  protected void G()
  {
    MetricsManager.a(this, AppData.b());
  }
  
  public void H_()
  {
    a(null);
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request a(String paramString, Request paramRequest, ApiRequest.b<Result> paramb)
  {
    paramString = a.a(paramString, paramb);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public <Request extends k<?, ?, Result>, Result> Request a(String paramString, Request paramRequest, k.b<Result> paramb)
  {
    paramString = a.a(paramString, paramb);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  protected PanelError a(PanelError.a parama)
  {
    PanelError localPanelError = new PanelError(getActivity());
    if (parama != null) {
      localPanelError.a(parama);
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
    ((ViewGroup)getView().findViewById(2131690241)).addView(paramView);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    a(paramApiRequest, 2131166073);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, int paramInt)
  {
    z();
    paramApiRequest = C();
    paramApiRequest.a(paramInt);
    paramApiRequest.setVisibility(0);
  }
  
  protected void a(YelpException paramYelpException)
  {
    a(ErrorType.getTypeFromException(paramYelpException));
  }
  
  public void a(YelpException paramYelpException, PanelError.a parama)
  {
    a(ErrorType.getTypeFromException(paramYelpException), parama);
  }
  
  public void a(ErrorType paramErrorType)
  {
    a(paramErrorType, null);
  }
  
  public void a(ErrorType paramErrorType, PanelError.a parama)
  {
    l();
    z();
    if (getView() != null)
    {
      PanelError localPanelError = A();
      localPanelError.a(paramErrorType, parama);
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
  
  public <Request extends k<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    a.a(paramString, paramRequest);
  }
  
  protected void b(View paramView)
  {
    View localView = getView();
    if (localView != null)
    {
      ((ViewGroup)localView.findViewById(2131690241)).removeView(paramView);
      return;
    }
    YelpLog.remoteError(this, "Trying to remove a view while the rootView is null.");
  }
  
  protected void b(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if (getActivity() != null) {
      ((YelpActivity)getActivity()).showLoadingDialog(paramApiRequest);
    }
  }
  
  protected void b(ApiRequest<?, ?, ?> paramApiRequest, int paramInt)
  {
    if (getActivity() != null) {
      ((YelpActivity)getActivity()).showLoadingDialog(paramApiRequest, paramInt);
    }
  }
  
  public final void b(String paramString, BroadcastReceiver paramBroadcastReceiver)
  {
    a(ObjectDirtyEvent.a(paramString), paramBroadcastReceiver);
  }
  
  protected void c(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if (paramApiRequest != null)
    {
      paramApiRequest.a(true);
      paramApiRequest.a(null);
    }
  }
  
  public long getComponentId()
  {
    return f;
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return null;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return Collections.emptyMap();
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.a parama)
  {
    return null;
  }
  
  public void l()
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
    if (h != null) {
      a(h);
    }
  }
  
  @SuppressLint({"CommitTransaction"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpApiWorkerFragment)getFragmentManager().a("API_WORKER_FRAGMENT"));
    if (a == null)
    {
      a = new YelpApiWorkerFragment();
      getFragmentManager().a().a(a, "API_WORKER_FRAGMENT").a();
    }
    if (paramBundle == null)
    {
      f = new Random(System.currentTimeMillis()).nextLong();
      return;
    }
    f = paramBundle.getLong("id");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903566, paramViewGroup, false);
  }
  
  public void onDetach()
  {
    super.onDetach();
    F();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool = f.a(getActivity(), paramMenuItem);
    if (bool) {
      return bool;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    if (e != null) {
      e.c();
    }
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    f.a(this, paramMenu);
  }
  
  public void onResume()
  {
    super.onResume();
    G();
    if (e != null) {
      e.b();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("id", f);
    if (e != null) {
      e.a(paramBundle);
    }
  }
  
  protected void y()
  {
    ((ActionBarActivity)getActivity()).supportInvalidateOptionsMenu();
  }
  
  protected PanelLoading y_()
  {
    PanelLoading localPanelLoading = new PanelLoading(getActivity(), null);
    localPanelLoading.setBackgroundColor(getResources().getColor(17170443));
    a(localPanelLoading);
    localPanelLoading.setVisibility(8);
    return localPanelLoading;
  }
  
  public void z()
  {
    h = null;
    if (d != null)
    {
      b(d);
      d = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */