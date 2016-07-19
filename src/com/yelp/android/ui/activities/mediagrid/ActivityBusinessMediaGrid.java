package com.yelp.android.ui.activities.mediagrid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.Menu;
import android.view.MenuInflater;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.af;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaCategory;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class ActivityBusinessMediaGrid
  extends YelpActivity
  implements AbstractMediaGridFragment.a, TabbedMediaGridFragment.a
{
  private TabbedMediaGridFragment a;
  private MediaRequest b;
  private af c;
  private ArrayList<Media> d;
  private String e;
  private ApiRequest.b<List<YelpBusiness>> f = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<YelpBusiness> paramAnonymousList)
    {
      disableLoading();
      ActivityBusinessMediaGrid.a(ActivityBusinessMediaGrid.this, (YelpBusiness)paramAnonymousList.get(0), ActivityBusinessMediaGrid.a(ActivityBusinessMediaGrid.this), ActivityBusinessMediaGrid.b(ActivityBusinessMediaGrid.this));
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      disableLoading();
      populateError(paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, MediaRequest paramMediaRequest, int paramInt)
  {
    return a(paramContext, paramYelpBusiness, new ArrayList(), paramMediaRequest, paramInt);
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, int paramInt)
  {
    return a(paramContext, paramArrayList, paramMediaRequest, paramInt).putExtra("business", paramYelpBusiness);
  }
  
  public static Intent a(Context paramContext, String paramString, MediaRequest paramMediaRequest, int paramInt)
  {
    return a(paramContext, new ArrayList(), paramMediaRequest, paramInt).putExtra("business_id", paramString);
  }
  
  private static Intent a(Context paramContext, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, int paramInt)
  {
    paramArrayList = new ArrayList(paramArrayList);
    paramArrayList.subList(Math.min(paramArrayList.size(), 200), paramArrayList.size()).clear();
    paramContext = new Intent(paramContext, ActivityBusinessMediaGrid.class);
    paramContext.putExtra("media_request", paramMediaRequest);
    paramContext.putExtra("title", paramInt);
    paramContext.putExtra("media_list", paramArrayList);
    return paramContext;
  }
  
  private void a(YelpBusiness paramYelpBusiness, MediaRequest paramMediaRequest, ArrayList<Media> paramArrayList)
  {
    a = ((TabbedMediaGridFragment)getSupportFragmentManager().a(2131689997));
    if (a == null)
    {
      a = TabbedMediaGridFragment.a(paramYelpBusiness, paramMediaRequest, paramArrayList);
      getSupportFragmentManager().a().b(2131689997, a).a();
    }
  }
  
  public MediaRequest a(YelpBusiness paramYelpBusiness, MediaCategory paramMediaCategory, ApiRequest.b<MediaPayload> paramb)
  {
    return new BusinessMediaRequest(paramYelpBusiness.aD(), paramMediaCategory.e(), paramMediaCategory.b(), 20, paramb);
  }
  
  public void a(YelpBusiness paramYelpBusiness, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, int paramInt1, int paramInt2)
  {
    startActivityFromFragment(a, ActivityBusinessMediaViewer.a(this, paramYelpBusiness, paramArrayList, paramMediaRequest, paramInt1, paramInt2), 1070);
  }
  
  public void a(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    if (paramBoolean) {
      AppData.a(EventIri.BusinessMorePhotosAddPhoto);
    }
    for (;;)
    {
      startActivity(ActivityLogin.a(this, 2131165695, 2131166094, PhotoTeaser.a(this, paramYelpBusiness)));
      return;
      Map localMap = IriSource.PhotoGridCell.getMapWithParameter();
      localMap.put("business_id", paramYelpBusiness.aD());
      AppData.a(EventIri.BusinessAddPhoto, localMap);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessPhotosGrid;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.singletonMap("id", e);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    setTitle(paramBundle.getIntExtra("title", 2131166349));
    YelpBusiness localYelpBusiness = (YelpBusiness)paramBundle.getParcelableExtra("business");
    String str = paramBundle.getStringExtra("business_id");
    b = ((MediaRequest)paramBundle.getParcelableExtra("media_request"));
    d = paramBundle.getParcelableArrayListExtra("media_list");
    if (localYelpBusiness != null)
    {
      e = localYelpBusiness.aD();
      a(localYelpBusiness, b, d);
      return;
    }
    if (str != null)
    {
      e = str;
      enableLoading();
      c = new af(str, f);
      c.f(new Void[0]);
      return;
    }
    throw new IllegalStateException("We must be provided with a business or a bizId to create a media grid");
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755050, paramMenu);
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("business_info", c);
  }
  
  protected void onResume()
  {
    super.onResume();
    c = ((af)thawRequest("business_info", c, f));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.ActivityBusinessMediaGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */