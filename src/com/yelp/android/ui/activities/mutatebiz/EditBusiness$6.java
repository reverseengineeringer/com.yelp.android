package com.yelp.android.ui.activities.mutatebiz;

import android.os.Parcelable;
import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessAddresses;

class EditBusiness$6
  implements ApiRequest.b<YelpBusinessAddresses>
{
  EditBusiness$6(EditBusiness paramEditBusiness) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBusinessAddresses paramYelpBusinessAddresses)
  {
    a.t = paramYelpBusinessAddresses;
    paramApiRequest = a.a(a.n.f(), a.t);
    a.g.a(paramApiRequest, new Parcelable[] { a.n.f(), a.t });
    a.disableLoading();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.findViewById(2131689680).setVisibility(8);
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditBusiness.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */