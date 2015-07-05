package com.yelp.android.ui.activities.mutatebiz;

import android.os.Parcelable;
import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;

class r
  implements m<YelpBusinessAddresses>
{
  r(EditBusiness paramEditBusiness) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBusinessAddresses paramYelpBusinessAddresses)
  {
    a.p = paramYelpBusinessAddresses;
    paramApiRequest = a.a(a.n.getAddress(), a.p);
    a.g.a(paramApiRequest, new Parcelable[] { a.n.getAddress(), null, a.p });
    a.disableLoading();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.findViewById(2131493164).setVisibility(8);
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */