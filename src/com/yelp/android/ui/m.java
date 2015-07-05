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
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.database.q;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.ac;
import com.yelp.android.util.StringUtils.Format;
import java.nio.ByteBuffer;
import java.util.List;

class m
  extends j<SearchRequest.SearchResponse>
{
  public static BusinessSearchRequest a;
  private final ActivityMonocle b;
  private final MonocleEngine c;
  private final l d;
  private final SurfaceView e;
  private Category f = null;
  
  public m(ActivityMonocle paramActivityMonocle, MonocleEngine paramMonocleEngine, l paraml, SurfaceView paramSurfaceView1, SurfaceView paramSurfaceView2)
  {
    b = paramActivityMonocle;
    c = paramMonocleEngine;
    d = paraml;
    e = paramSurfaceView1;
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
    paramSearchResponse = BusinessSearchResult.getBusinessesFromBusinessSearchResult(paramSearchResponse.getBusinessSearchResults());
    Log.i("SEARCH", "done");
    e.setVisibility(0);
    u.b(e, 1004);
    c.SetLocation((float)paramApiRequest.getLocation().getLatitude(), (float)paramApiRequest.getLocation().getLongitude());
    ac localac = new ac(b);
    localac.a(null);
    c.ClearObjects();
    paramApiRequest = null;
    g localg = new g(b);
    int i = 0;
    YelpBusiness localYelpBusiness;
    Bitmap localBitmap;
    if (i < paramSearchResponse.size())
    {
      localYelpBusiness = (YelpBusiness)paramSearchResponse.get(i);
      localac.a(localYelpBusiness);
      localac.setDistance(localYelpBusiness.getDistanceFormatted(b, StringUtils.Format.ABBREVIATED));
      localac.setVisibility(0);
      localBitmap = localg.a(localac);
      int j = localBitmap.getHeight() * localBitmap.getRowBytes();
      if ((paramApiRequest != null) && (paramApiRequest.array().length >= j)) {
        break label325;
      }
      paramApiRequest = ByteBuffer.allocate(j);
    }
    label325:
    for (;;)
    {
      paramApiRequest.rewind();
      localBitmap.copyPixelsToBuffer(paramApiRequest);
      c.AddObject(paramApiRequest.array(), localBitmap.getWidth(), localBitmap.getHeight(), (float)localYelpBusiness.getLatitude(), (float)localYelpBusiness.getLongitude(), new n(b, localYelpBusiness));
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
    a = new BusinessSearchRequest(AppData.b().i().g(), this);
    a.setSearchMode(BusinessSearchRequest.SearchMode.MONOCLE);
    if (f != null) {
      a.setCategory(f);
    }
    a.search();
    if (ActivityMonocle.a != null) {
      ActivityMonocle.a.show();
    }
  }
  
  public void c()
  {
    if (a != null)
    {
      a.setCallback(null);
      a.cancel(true);
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
 * Qualified Name:     com.yelp.android.ui.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */