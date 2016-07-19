package com.yelp.android.ui.activities.addphoto;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.util.ActivityYelpHopScotchMediaList;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class PhotoTeaser
  extends ActivityYelpHopScotchMediaList
  implements ApiRequest.b<MediaPayload>
{
  private View d;
  private int e;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, PhotoTeaser.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, BusinessContributionType paramBusinessContributionType, Uri paramUri)
  {
    paramContext = a(paramContext, paramYelpBusiness);
    paramContext.putExtra("extra.contribution", paramUri);
    paramContext.putExtra("extra.contribution_type", paramBusinessContributionType);
    return paramContext;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, MediaPayload paramMediaPayload)
  {
    super.a(paramApiRequest, paramMediaPayload);
    paramApiRequest = d;
    if (paramMediaPayload.c().isEmpty()) {}
    for (int i = 0;; i = 8)
    {
      paramApiRequest.setVisibility(i);
      if (s() - paramMediaPayload.c().size() == 0) {
        i();
      }
      return;
    }
  }
  
  public void b()
  {
    AppData.a(EventIri.BusinessPhotoFinish, "id", a.aD());
    startActivity(ActivityBusinessPage.a(this, a, e));
    finish();
  }
  
  public void finish()
  {
    super.finish();
    overridePendingTransition(2130968587, 2130968612);
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
        e = paramIntent.getIntExtra("extra.posted_media", 0);
        if (paramIntent.hasExtra("extra.images")) {
          a(paramIntent.getExtras());
        }
      }
    } while (c.getCount() != 0);
    b();
  }
  
  public void onBackPressed()
  {
    b();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    Object localObject1 = new HashMap();
    ((Map)localObject1).put("id", a.aD());
    Object localObject2 = new d(EventIri.BusinessPhotoAddMore, (Map)localObject1)
    {
      public void a(View paramAnonymousView)
      {
        startActivityForResult(AddBusinessPhoto.a(PhotoTeaser.this, PhotoTeaser.a(PhotoTeaser.this), false), 1041);
      }
    };
    d = a(2130903495);
    getSupportActionBar().a(false);
    WebImageView localWebImageView = (WebImageView)b(2130903561);
    setTitle(a.z());
    localWebImageView.setImageUrl(a.au());
    ar.b(localWebImageView, getResources().getInteger(2131492874));
    a((View.OnClickListener)localObject2, EventIri.BusinessPhotos, (Map)localObject1, paramBundle);
    paramBundle = (Uri)getIntent().getParcelableExtra("extra.contribution");
    localObject1 = (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution_type");
    localObject2 = a;
    if (localObject1 == BusinessContributionType.BUSINESS_VIDEO) {}
    for (boolean bool = true;; bool = false)
    {
      startActivityForResult(AddBusinessPhoto.a(this, (YelpBusiness)localObject2, paramBundle, bool), 1041);
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755021, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    super.onError(paramApiRequest, paramYelpException);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691015)
    {
      b();
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