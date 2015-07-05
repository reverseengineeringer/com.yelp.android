package com.yelp.android.ui.activities.addphoto;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.ActivityYelpHopScotchMediaList;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class PhotoTeaser
  extends ActivityYelpHopScotchMediaList
  implements com.yelp.android.appdata.webrequests.m<dm>
{
  private View d;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, PhotoTeaser.class);
    paramContext.putExtra("biz", paramYelpBusiness);
    return paramContext;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dm paramdm)
  {
    super.a(paramApiRequest, paramdm);
    paramApiRequest = d;
    if (paramdm.c().isEmpty()) {}
    for (int i = 0;; i = 8)
    {
      paramApiRequest.setVisibility(i);
      if (r() - paramdm.c().size() == 0) {
        h();
      }
      return;
    }
  }
  
  public void c()
  {
    AppData.a(EventIri.BusinessPhotoFinish, "id", a.getId());
    finish();
  }
  
  public void finish()
  {
    super.finish();
    overridePendingTransition(2130968585, 2130968606);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessPhotoTeaser;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      return;
      if (-1 == paramInt2)
      {
        if (paramIntent.getBooleanExtra("is_video_extra", false))
        {
          setResult(-1, paramIntent);
          finish();
          return;
        }
        a(paramIntent.getExtras());
        return;
      }
    } while (c.getCount() != 0);
    c();
  }
  
  public void onBackPressed()
  {
    c();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpBusiness)getIntent().getParcelableExtra("biz"));
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", a.getId());
    m localm = new m(this, EventIri.BusinessPhotoAddMore, localHashMap);
    d = a(2130903389);
    WebImageView localWebImageView = (WebImageView)b(2130903437);
    setTitle(a.getDisplayName());
    localWebImageView.setImageUrl(a.getPhotoUrl());
    cp.b(localWebImageView, getResources().getInteger(2131558403));
    a(localm, EventIri.BusinessPhotos, localHashMap, paramBundle);
    startActivityForResult(AddBusinessPhoto.a(this, a), 1037);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755019, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    super.onError(paramApiRequest, paramYelpException);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      c();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.PhotoTeaser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */