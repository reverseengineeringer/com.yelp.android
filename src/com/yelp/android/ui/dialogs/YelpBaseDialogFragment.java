package com.yelp.android.ui.dialogs;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v7.app.d.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpApiWorkerFragment;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.Collections;
import java.util.Map;

public class YelpBaseDialogFragment
  extends DialogFragment
  implements com.yelp.android.analytics.a
{
  private YelpApiWorkerFragment a;
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request a(String paramString, Request paramRequest, ApiRequest.b<Result> paramb)
  {
    paramString = a.a(paramString, paramb);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    a.a(paramString, paramRequest);
  }
  
  protected final YelpActivity d()
  {
    return (YelpActivity)getActivity();
  }
  
  protected d.a e()
  {
    return new d.a(getActivity());
  }
  
  public long getComponentId()
  {
    return 0L;
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
  
  @SuppressLint({"CommitTransaction"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getParentFragment() == null) {}
    for (paramBundle = getFragmentManager();; paramBundle = getParentFragment().getFragmentManager())
    {
      a = ((YelpApiWorkerFragment)paramBundle.a("API_WORKER_FRAGMENT"));
      if (a == null)
      {
        a = new YelpApiWorkerFragment();
        paramBundle.a().a(a, "API_WORKER_FRAGMENT").a();
      }
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    MetricsManager.a(this, AppData.b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.YelpBaseDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */