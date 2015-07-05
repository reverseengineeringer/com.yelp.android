package com.yelp.android.ui.dialogs;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpApiWorkerFragment;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.Collections;
import java.util.Map;

public class YelpBaseDialogFragment
  extends DialogFragment
  implements com.yelp.android.analytics.a
{
  private YelpApiWorkerFragment a;
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request a(String paramString, Request paramRequest, m<Result> paramm)
  {
    paramString = a.a(paramString, paramm);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    a.a(paramString, paramRequest);
  }
  
  protected final YelpActivity c()
  {
    return (YelpActivity)getActivity();
  }
  
  public long getComponentId()
  {
    return 0L;
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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getParentFragment() == null) {}
    for (paramBundle = getFragmentManager();; paramBundle = getParentFragment().getFragmentManager())
    {
      a = ((YelpApiWorkerFragment)paramBundle.findFragmentByTag("API_WORKER_FRAGMENT"));
      if (a == null)
      {
        a = new YelpApiWorkerFragment();
        paramBundle.beginTransaction().add(a, "API_WORKER_FRAGMENT").commit();
      }
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    com.yelp.android.av.a.a(this, AppData.b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.YelpBaseDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */