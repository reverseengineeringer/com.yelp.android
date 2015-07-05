package com.yelp.android.ui.activities.bugreport;

import android.support.v4.app.FragmentActivity;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.cr;

class a
  implements i
{
  a(ReportABugFragment paramReportABugFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    a.j();
    ReportABugFragment.b(a);
    paramApiRequest = AlertDialogFragment.a(null, a.getString(2131166448));
    paramApiRequest.a(ReportABugFragment.c(a));
    paramApiRequest.show(a.getActivity().getSupportFragmentManager(), "bug_reported_dialog");
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.j();
    ReportABugFragment.a(a);
    cr.a(paramYelpException.getMessage(AppData.b()), 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bugreport.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */