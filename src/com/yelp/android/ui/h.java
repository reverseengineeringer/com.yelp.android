package com.yelp.android.ui;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.location.Location;
import android.util.Log;
import android.view.SurfaceView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.d;
import com.yelp.android.util.StringUtils.Format;
import java.nio.ByteBuffer;
import java.util.List;

class h
  extends k.b<SearchRequest.SearchResponse>
{
  public static BusinessSearchRequest a;
  private final ActivityMonocle b;
  private final MonocleEngine c;
  private final g d;
  private final SurfaceView e;
  private Category f = null;
  
  public h(ActivityMonocle paramActivityMonocle, MonocleEngine paramMonocleEngine, g paramg, SurfaceView paramSurfaceView)
  {
    b = paramActivityMonocle;
    c = paramMonocleEngine;
    d = paramg;
    e = paramSurfaceView;
  }
  
  public void a(Location paramLocation)
  {
    Log.i("SEARCH", "Starting HTTP Request");
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, SearchRequest.SearchResponse paramSearchResponse)
  {
    if (!(paramApiRequest instanceof BusinessSearchRequest)) {
      throw new IllegalStateException("Cannot use this request object");
    }
    paramApiRequest = (BusinessSearchRequest)paramApiRequest;
    paramSearchResponse = BusinessSearchResult.b(paramSearchResponse.b());
    Log.i("SEARCH", "done");
    e.setVisibility(0);
    m.b(e, 1004);
    c.SetLocation((float)paramApiRequest.f().getLatitude(), (float)paramApiRequest.f().getLongitude());
    d locald = new d(b);
    locald.a();
    c.ClearObjects();
    paramApiRequest = null;
    c localc = new c(b);
    int i = 0;
    YelpBusiness localYelpBusiness;
    Bitmap localBitmap;
    if (i < paramSearchResponse.size())
    {
      localYelpBusiness = (YelpBusiness)paramSearchResponse.get(i);
      locald.a(localYelpBusiness);
      locald.setDistance(localYelpBusiness.a(b, StringUtils.Format.ABBREVIATED));
      locald.setVisibility(0);
      localBitmap = localc.a(locald);
      int j = localBitmap.getHeight() * localBitmap.getRowBytes();
      if ((paramApiRequest != null) && (paramApiRequest.array().length >= j)) {
        break label324;
      }
      paramApiRequest = ByteBuffer.allocate(j);
    }
    label324:
    for (;;)
    {
      paramApiRequest.rewind();
      localBitmap.copyPixelsToBuffer(paramApiRequest);
      c.AddObject(paramApiRequest.array(), localBitmap.getWidth(), localBitmap.getHeight(), (float)localYelpBusiness.R(), (float)localYelpBusiness.Q(), new i(b, localYelpBusiness));
      i += 1;
      break;
      d.a = true;
      if (ActivityMonocle.a != null) {
        ActivityMonocle.a.hide();
      }
      b.d = b.b.a();
      a = null;
      return;
    }
  }
  
  public void a(Category paramCategory)
  {
    f = paramCategory;
  }
  
  public boolean a()
  {
    b.a();
    Log.i("SEARCH", "No location provider for search");
    return false;
  }
  
  public void b()
  {
    a = new BusinessSearchRequest(AppData.b().i().e(), this);
    a.a(BusinessSearchRequest.SearchMode.MONOCLE);
    if (f != null) {
      a.a(f);
    }
    a.y();
    if (ActivityMonocle.a != null) {
      ActivityMonocle.a.show();
    }
  }
  
  public void c()
  {
    if (a != null)
    {
      a.a(null);
      a.a(true);
    }
    b.b.a(b.d);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    Log.i("SEARCH", "Error" + paramYelpException.getMessage());
    a = null;
    if (ActivityMonocle.a != null) {
      ActivityMonocle.a.hide();
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */