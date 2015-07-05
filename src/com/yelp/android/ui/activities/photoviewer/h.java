package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Media;
import java.util.ArrayList;
import java.util.List;

class h
  implements m<dm>
{
  h(ActivityMediaViewer paramActivityMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dm paramdm)
  {
    int m = 0;
    ArrayList localArrayList = paramdm.c();
    if ((paramApiRequest instanceof BusinessMediaRequest))
    {
      if (!((BusinessMediaRequest)paramApiRequest).isSingleMediaRequest()) {
        break label166;
      }
      ActivityMediaViewer.a(a).addAll(localArrayList);
      ActivityMediaViewer.b(a).a(1);
      ActivityMediaViewer.c(a).a((Media)ActivityMediaViewer.a(a).get(0));
      ActivityMediaViewer.h(a);
    }
    label166:
    while (localArrayList.size() == 0)
    {
      return;
      ActivityMediaViewer.a(a).addAll(paramdm.c());
      if (ActivityMediaViewer.g(a).isAllMediaFetched(ActivityMediaViewer.a(a), paramdm.d()))
      {
        ActivityMediaViewer.a(a, null);
        ActivityMediaViewer.b(a).a(ActivityMediaViewer.a(a).size());
      }
      ActivityMediaViewer.h(a);
      return;
    }
    int k = ((Media)localArrayList.get(0)).getIndex();
    int i = ActivityMediaViewer.i(a);
    if (k > ActivityMediaViewer.a(a).size())
    {
      i = 0;
      while (i < k)
      {
        ActivityMediaViewer.a(a).add(null);
        i += 1;
      }
      ActivityMediaViewer.b(a, k);
      i = k;
    }
    for (;;)
    {
      int j = m;
      if (k < ActivityMediaViewer.j(a))
      {
        ActivityMediaViewer.b(a, k);
        j = m;
      }
      if (j < localArrayList.size())
      {
        m = ((Media)localArrayList.get(j)).getIndex();
        if (m < ActivityMediaViewer.a(a).size()) {
          ActivityMediaViewer.a(a).set(m, localArrayList.get(j));
        }
        for (;;)
        {
          j += 1;
          break;
          ActivityMediaViewer.a(a).add(m, localArrayList.get(j));
        }
      }
      ActivityMediaViewer.b(a).a(paramdm.d());
      if (ActivityMediaViewer.g(a).isAllMediaFetched(ActivityMediaViewer.a(a), paramdm.d()))
      {
        if (ActivityMediaViewer.j(a) == 0) {
          ActivityMediaViewer.a(a, null);
        }
        ActivityMediaViewer.b(a).a(ActivityMediaViewer.a(a).size());
      }
      ActivityMediaViewer.h(a);
      if (i != ActivityMediaViewer.i(a)) {
        ActivityMediaViewer.a(a, i);
      }
      for (;;)
      {
        ActivityMediaViewer.b(a).notifyDataSetChanged();
        return;
        if ((k <= ActivityMediaViewer.i(a)) && (ActivityMediaViewer.i(a) <= ((Media)localArrayList.get(localArrayList.size() - 1)).getIndex())) {
          ActivityMediaViewer.c(a).a((Media)ActivityMediaViewer.a(a).get(ActivityMediaViewer.i(a)));
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
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */