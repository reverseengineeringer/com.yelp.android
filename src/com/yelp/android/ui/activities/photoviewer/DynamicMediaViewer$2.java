package com.yelp.android.ui.activities.photoviewer;

import android.support.v4.view.ViewPager;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaPayload;
import java.util.ArrayList;
import java.util.List;

class DynamicMediaViewer$2
  implements ApiRequest.b<MediaPayload>
{
  DynamicMediaViewer$2(DynamicMediaViewer paramDynamicMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, MediaPayload paramMediaPayload)
  {
    int n = 0;
    paramApiRequest = DynamicMediaViewer.a(a, paramMediaPayload.c());
    if (paramApiRequest.size() == 0) {
      return;
    }
    int k = ((Media)paramApiRequest.get(0)).e();
    int m = a.d.getCurrentItem();
    if (k > a.c.g().size())
    {
      i = 0;
      while (i < k)
      {
        a.c.a(new LoadingItem());
        i += 1;
      }
      DynamicMediaViewer.a(a, k);
    }
    for (int i = k;; i = m)
    {
      int j = n;
      if (k < DynamicMediaViewer.b(a))
      {
        DynamicMediaViewer.a(a, k);
        j = n;
      }
      if (j < paramApiRequest.size())
      {
        Media localMedia = (Media)paramApiRequest.get(j);
        if (localMedia.e() < a.c.d()) {
          a.c.a(localMedia.e(), localMedia);
        }
        for (;;)
        {
          j += 1;
          break;
          if (localMedia.e() >= a.c.d()) {
            a.c.a(localMedia);
          }
        }
      }
      a.c.g(paramMediaPayload.a());
      if (a.a.a(a.c.g(), paramMediaPayload.a()))
      {
        if (DynamicMediaViewer.b(a) == 0) {
          a.a = null;
        }
        a.c.g(a.c.g().size());
      }
      DynamicMediaViewer.c(a);
      if (i != m) {
        a.d.setCurrentItem(i);
      }
      for (;;)
      {
        a.c.c();
        return;
        if ((k <= m) && (m <= ((Media)paramApiRequest.get(paramApiRequest.size() - 1)).e()))
        {
          a.e.a(a.c.e(m));
          a.a(m);
        }
      }
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.DynamicMediaViewer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */