package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.PhotoAdsExperiment;
import com.yelp.android.appdata.experiment.PhotoAdsExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.aa;
import com.yelp.android.appdata.webrequests.ei;
import com.yelp.android.serializable.BusinessLocalAd;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PhotoAdsConfig;
import com.yelp.android.serializable.PhotoAdsResponse;
import com.yelp.android.serializable.PhotoAdsResponseClone;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ActivityBusinessMediaViewer
  extends BusinessMediaViewer
{
  private YelpBusiness f;
  private String g;
  private int h;
  private int i;
  private int j;
  private int k;
  private PhotoAdsConfig l;
  private PhotoAdsResponse m;
  private aa n;
  private boolean o = true;
  private final ApiRequest.b<PhotoAdsResponse> p = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, PhotoAdsResponse paramAnonymousPhotoAdsResponse)
    {
      ActivityBusinessMediaViewer.a(ActivityBusinessMediaViewer.this, paramAnonymousPhotoAdsResponse);
      if (paramAnonymousPhotoAdsResponse.c() != null) {
        t.a(ActivityBusinessMediaViewer.this).a(paramAnonymousPhotoAdsResponse.c().n().s()).a();
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException) {}
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, List<? extends Media> paramList, MediaRequest paramMediaRequest, int paramInt1, int paramInt2)
  {
    paramContext = a(paramContext, paramYelpBusiness.aD(), paramMediaRequest, paramList, paramInt1, paramInt2);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putExtra("extra.show_photo_ads", true);
    return paramContext;
  }
  
  private static Intent a(Context paramContext, String paramString, MediaRequest paramMediaRequest, List<? extends Media> paramList, int paramInt1, int paramInt2)
  {
    paramContext = a(new Intent(paramContext, ActivityBusinessMediaViewer.class), paramList, paramInt1, paramMediaRequest, paramInt2);
    paramContext.putExtra("business_id", paramString);
    paramContext.putExtra("extra.show_photo_ads", false);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, Media paramMedia)
  {
    paramString = a(paramContext, paramString, Collections.singletonList(paramMedia), 0);
    if ((paramMedia instanceof Photo)) {}
    for (paramContext = Media.MediaType.PHOTO;; paramContext = Media.MediaType.VIDEO)
    {
      paramString.putExtra("extra.media_type_likes_view", paramContext);
      return paramString;
    }
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, paramString1, BusinessMediaRequest.d(paramString1, paramString2), new ArrayList(), 0, 1);
  }
  
  public static Intent a(Context paramContext, String paramString, List<? extends Media> paramList, int paramInt)
  {
    paramContext = a(new Intent(paramContext, ActivityBusinessMediaViewer.class), paramList, paramInt, null, paramList.size());
    paramContext.putExtra("business_id", paramString);
    paramContext.putExtra("extra.show_photo_ads", false);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, paramString1, BusinessMediaRequest.c(paramString1, paramString2), new ArrayList(), 0, 1);
  }
  
  private void b(int paramInt)
  {
    if (c.h(paramInt)) {}
    do
    {
      do
      {
        return;
        if (o)
        {
          d(paramInt);
          i += 1;
        }
        while ((c(paramInt + 2) | c(paramInt - 2)))
        {
          o = false;
          c.c();
          return;
          o = true;
        }
      } while (i != h);
      i = -1;
    } while ((m == null) || (m.m() == null));
    c.b(paramInt, m);
    c.b(paramInt + 2, new PhotoAdsResponseClone(m));
    if (h == l.b()) {
      h = l.a();
    }
    o = false;
    c.c();
    m = null;
    n = new aa(g, p);
    n.f(new Void[0]);
  }
  
  public static Intent c(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, paramString1, BusinessMediaRequest.a(paramString1, paramString2, 42), new ArrayList(), 0, -1);
  }
  
  private boolean c(int paramInt)
  {
    if ((paramInt > -1) && (c.e(paramInt).a(Media.MediaType.AD)))
    {
      c.f(paramInt);
      return true;
    }
    return false;
  }
  
  private void d(int paramInt)
  {
    if (c.e(paramInt).a(Media.MediaType.LOADING)) {}
    Media localMedia;
    HashMap localHashMap;
    do
    {
      return;
      localMedia = c.e(paramInt);
      localHashMap = new HashMap();
      if (getResourcesgetConfigurationorientation == 1) {}
      for (localObject = "portrait";; localObject = "landscape")
      {
        localHashMap.put("orientation", localObject);
        if (!localMedia.a(Media.MediaType.PHOTO)) {
          break;
        }
        localHashMap.put("id", g);
        localHashMap.put("photo_id", localMedia.a());
        localHashMap.put("user_id", localMedia.b());
        AppData.a(ViewIri.BusinessPhoto, localHashMap);
        AppData.b().m().a(KahunaEventIri.BusinessPhoto);
        j += 1;
        return;
      }
      if (localMedia.a(Media.MediaType.VIDEO))
      {
        localHashMap.put("id", g);
        localHashMap.put("video_id", localMedia.a());
        localHashMap.put("video_source", ((Video)localMedia).p());
        localHashMap.put("user_id", localMedia.b());
        AppData.a(ViewIri.BusinessVideo, localHashMap);
        return;
      }
    } while (!localMedia.a(Media.MediaType.AD));
    k += 1;
    Object localObject = ((PhotoAdsResponse)localMedia).c();
    localHashMap.put("business_id", g);
    localHashMap.put("ad_request_id", ((LocalAd)localObject).l());
    localHashMap.put("ad_business_id", ((LocalAd)localObject).m());
    localHashMap.put("placement", ((LocalAd)localObject).h());
    localHashMap.put("slot", Integer.valueOf(((LocalAd)localObject).d()));
    localHashMap.put("photo_ads_seen", Integer.valueOf(k));
    localHashMap.put("photos_seen", Integer.valueOf(j));
    AppData.a(ViewIri.AdsBusinessPhoto, localHashMap);
    TrackOfflineAttributionRequest.a(((LocalAd)localObject).a(), TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_IMPRESSION);
  }
  
  private void d(Media paramMedia)
  {
    as.a(getText(2131166664), 1);
    new ei(paramMedia).f(new Void[0]);
    if ((paramMedia instanceof Photo))
    {
      ((Photo)paramMedia).q();
      e.a(paramMedia);
    }
  }
  
  private boolean h()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (e.b.a(PhotoAdsExperiment.Cohort.variant_01))
    {
      bool1 = bool2;
      if (!AppData.b().h().c())
      {
        bool1 = bool2;
        if (getIntent().getBooleanExtra("extra.show_photo_ads", false)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  protected Set<PhotoChrome.DisplayFeature> a()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(PhotoChrome.DisplayFeature.COMPLIMENT);
    localHashSet.add(PhotoChrome.DisplayFeature.FLAG);
    localHashSet.add(PhotoChrome.DisplayFeature.NOT_HELPFUL);
    localHashSet.add(PhotoChrome.DisplayFeature.DELETE);
    localHashSet.add(PhotoChrome.DisplayFeature.EDIT_CAPTION);
    localHashSet.add(PhotoChrome.DisplayFeature.LIKE);
    localHashSet.add(PhotoChrome.DisplayFeature.SHARE);
    localHashSet.add(PhotoChrome.DisplayFeature.UPLOADED_AGO);
    localHashSet.add(PhotoChrome.DisplayFeature.VIEW_BUSINESS);
    return localHashSet;
  }
  
  protected void a(int paramInt)
  {
    super.a(paramInt);
    if (h())
    {
      b(paramInt);
      return;
    }
    d(paramInt);
  }
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    f = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    g = getIntent().getStringExtra("business_id");
    if (h())
    {
      l = AppData.b().E();
      h = l.b();
      n = new aa(g, p);
      n.f(new Void[0]);
    }
  }
  
  public void a(PhotoChrome.DisplayFeature paramDisplayFeature, Media paramMedia, View paramView)
  {
    switch (2.a[paramDisplayFeature.ordinal()])
    {
    default: 
      super.a(paramDisplayFeature, paramMedia, paramView);
      return;
    case 1: 
      AppData.a(EventIri.BusinessPhotoCompliment, "photo_id", paramMedia.a());
      c(paramMedia);
      return;
    case 2: 
      AppData.a(EventIri.BusinessPhotoNotHelpful, "photo_id", paramMedia.a());
      d(paramMedia);
      return;
    case 3: 
      AppData.a(EventIri.BusinessPhotoCaptionEdit, Collections.singletonMap("photo_id", paramMedia.a()));
      startActivity(EditPhotoCaption.a(this, (Photo)paramMedia, f));
      return;
    }
    startActivity(ActivityBusinessPage.b(this, paramMedia.k()));
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    paramString = c.a(paramString);
    if (Media.MediaType.VIDEO.equals(getIntent().getSerializableExtra("extra.media_type_likes_view")))
    {
      getIntent().removeExtra("extra.media_type_likes_view");
      e.c();
      paramString.w();
    }
    while ((!paramBoolean) || (c.a(paramString) != d.getCurrentItem())) {
      return;
    }
    paramString.p();
  }
  
  protected a b()
  {
    return new a(getSupportFragmentManager(), f);
  }
  
  public String c()
  {
    return g;
  }
  
  public int d()
  {
    return k;
  }
  
  public int e()
  {
    return j;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessPhotosFullscreen;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    c.f();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    if (Media.MediaType.PHOTO.equals(paramBundle.getSerializableExtra("extra.media_type_likes_view")))
    {
      e.a(c.e(0));
      e.c();
      paramBundle.removeExtra("extra.media_type_likes_view");
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("photo_ads_request", n);
  }
  
  protected void onResume()
  {
    super.onResume();
    n = ((aa)thawRequest("photo_ads_request", n, p));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */