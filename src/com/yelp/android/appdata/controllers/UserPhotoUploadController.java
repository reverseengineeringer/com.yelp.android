package com.yelp.android.appdata.controllers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gv;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;

public class UserPhotoUploadController
  implements m<gw>
{
  private gv a;
  private b b;
  private UserPhotoUploadController.CallbackStatus c = UserPhotoUploadController.CallbackStatus.DO_NOTHING;
  
  public void a(b paramb)
  {
    b = paramb;
    if (b != null) {}
    switch (a.a[c.ordinal()])
    {
    default: 
      return;
    case 1: 
      onError(null, null);
      return;
    }
    a(null, new gw(null, false));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gw paramgw)
  {
    a = null;
    if (b != null)
    {
      b.a(true);
      c = UserPhotoUploadController.CallbackStatus.DO_NOTHING;
      return;
    }
    c = UserPhotoUploadController.CallbackStatus.SHOW_SUCCESS;
  }
  
  public void a(String paramString)
  {
    c = UserPhotoUploadController.CallbackStatus.SHOW_IN_PROGRESS;
    a = new gv(paramString, null, true, this);
    a.execute(new Void[0]);
  }
  
  public boolean a()
  {
    return c == UserPhotoUploadController.CallbackStatus.SHOW_IN_PROGRESS;
  }
  
  public void b()
  {
    c = UserPhotoUploadController.CallbackStatus.DO_NOTHING;
    if (a != null)
    {
      a.cancel(true);
      a = null;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a = null;
    if (b != null)
    {
      b.a(false);
      c = UserPhotoUploadController.CallbackStatus.DO_NOTHING;
      return;
    }
    c = UserPhotoUploadController.CallbackStatus.SHOW_ERROR;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.controllers.UserPhotoUploadController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */