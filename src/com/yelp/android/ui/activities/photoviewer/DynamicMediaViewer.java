package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaPayload;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class DynamicMediaViewer
  extends MediaViewer
{
  protected MediaRequest a;
  private int f = -1;
  private boolean g;
  private int h;
  private final ApiRequest.b<MediaPayload> i = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, MediaPayload paramAnonymousMediaPayload)
    {
      int n = 0;
      paramAnonymousApiRequest = DynamicMediaViewer.a(DynamicMediaViewer.this, paramAnonymousMediaPayload.c());
      if (paramAnonymousApiRequest.size() == 0) {
        return;
      }
      int k = ((Media)paramAnonymousApiRequest.get(0)).e();
      int m = d.getCurrentItem();
      if (k > c.g().size())
      {
        i = 0;
        while (i < k)
        {
          c.a(new LoadingItem());
          i += 1;
        }
        DynamicMediaViewer.a(DynamicMediaViewer.this, k);
      }
      for (int i = k;; i = m)
      {
        int j = n;
        if (k < DynamicMediaViewer.b(DynamicMediaViewer.this))
        {
          DynamicMediaViewer.a(DynamicMediaViewer.this, k);
          j = n;
        }
        if (j < paramAnonymousApiRequest.size())
        {
          Media localMedia = (Media)paramAnonymousApiRequest.get(j);
          if (localMedia.e() < c.d()) {
            c.a(localMedia.e(), localMedia);
          }
          for (;;)
          {
            j += 1;
            break;
            if (localMedia.e() >= c.d()) {
              c.a(localMedia);
            }
          }
        }
        c.g(paramAnonymousMediaPayload.a());
        if (a.a(c.g(), paramAnonymousMediaPayload.a()))
        {
          if (DynamicMediaViewer.b(DynamicMediaViewer.this) == 0) {
            a = null;
          }
          c.g(c.g().size());
        }
        DynamicMediaViewer.c(DynamicMediaViewer.this);
        if (i != m) {
          d.setCurrentItem(i);
        }
        for (;;)
        {
          c.c();
          return;
          if ((k <= m) && (m <= ((Media)paramAnonymousApiRequest.get(paramAnonymousApiRequest.size() - 1)).e()))
          {
            e.a(c.e(m));
            a(m);
          }
        }
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
    }
  };
  
  public static int a(Intent paramIntent)
  {
    return paramIntent.getIntExtra("extra.media_index", 0);
  }
  
  protected static Intent a(Intent paramIntent, List<? extends Media> paramList, int paramInt1, MediaRequest paramMediaRequest, int paramInt2)
  {
    paramIntent = a(paramIntent, paramList, paramInt1);
    paramIntent.putExtra("extra.media_request", paramMediaRequest);
    paramIntent.putExtra("extra.total_media", paramInt2);
    return paramIntent;
  }
  
  private ArrayList<Media> a(ArrayList<Media> paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext()) {
      if (c.g().contains(localIterator.next())) {
        localIterator.remove();
      }
    }
    return paramArrayList;
  }
  
  public static MediaRequest b(Intent paramIntent)
  {
    return (MediaRequest)paramIntent.getParcelableExtra("extra.media_request");
  }
  
  private void c()
  {
    c.c();
    f = d();
    g = false;
    hideLoadingDialog();
  }
  
  private int d()
  {
    return (int)(0.75F * c.d());
  }
  
  protected void a(final int paramInt)
  {
    if ((paramInt < h) && (a != null) && (a.v()))
    {
      paramInt = Math.max(0, h - 42);
      a = new BusinessMediaRequest(((BusinessMediaRequest)a).d(), paramInt, h - paramInt, i);
      a.f(new Void[0]);
    }
    while ((c.d() >= c.b()) || (paramInt < f) || (g)) {
      return;
    }
    g = true;
    d.post(new Runnable()
    {
      public void run()
      {
        if ((c.d() < c.b()) && (paramInt >= DynamicMediaViewer.a(DynamicMediaViewer.this)) && (a != null) && (a.v()))
        {
          a = a.d(42);
          DynamicMediaViewer.a(DynamicMediaViewer.this, false);
        }
      }
    });
  }
  
  protected int g()
  {
    return getIntent().getIntExtra("extra.total_media", -1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      f = paramBundle.getInt("threshold", -1);
      g = paramBundle.getBoolean("is_threshold_exceeded");
    }
    if (f == -1) {
      f = d();
    }
    a = ((MediaRequest)getIntent().getParcelableExtra("extra.media_request"));
    if ((a != null) && (c.d() != g()))
    {
      a = a.c(c.d());
      a.a(i);
      a.f(new Void[0]);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("media_request", a);
  }
  
  protected void onResume()
  {
    super.onResume();
    a = ((MediaRequest)thawRequest("media_request", a, i));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("threshold", f);
    paramBundle.putBoolean("is_threshold_exceeded", g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.DynamicMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */