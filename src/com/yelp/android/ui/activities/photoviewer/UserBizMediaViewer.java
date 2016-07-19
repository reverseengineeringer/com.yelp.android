package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserBizMediaViewer
  extends BusinessMediaViewer
{
  public static Intent a(Context paramContext, MediaRequest paramMediaRequest, List<? extends Media> paramList, int paramInt1, int paramInt2)
  {
    return a(new Intent(paramContext, UserBizMediaViewer.class), paramList, paramInt1, paramMediaRequest, paramInt2);
  }
  
  protected Set<PhotoChrome.DisplayFeature> a()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(PhotoChrome.DisplayFeature.DELETE);
    localHashSet.add(PhotoChrome.DisplayFeature.LIKE);
    localHashSet.add(PhotoChrome.DisplayFeature.FLAG);
    localHashSet.add(PhotoChrome.DisplayFeature.EDIT_CAPTION);
    localHashSet.add(PhotoChrome.DisplayFeature.COMPLIMENT);
    localHashSet.add(PhotoChrome.DisplayFeature.VIEW_BUSINESS);
    localHashSet.add(PhotoChrome.DisplayFeature.SHARE);
    localHashSet.add(PhotoChrome.DisplayFeature.UPLOADED_AGO);
    return localHashSet;
  }
  
  public void a(PhotoChrome.DisplayFeature paramDisplayFeature, Media paramMedia, View paramView)
  {
    switch (1.a[paramDisplayFeature.ordinal()])
    {
    default: 
      super.a(paramDisplayFeature, paramMedia, paramView);
      return;
    case 1: 
      AppData.a(EventIri.BusinessPhotoCompliment, "photo_id", paramMedia.a());
      c(paramMedia);
      return;
    case 2: 
      startActivity(ActivityBusinessPage.b(this, paramMedia.k()));
      return;
    }
    AppData.a(EventIri.BusinessPhotoCaptionEdit, Collections.singletonMap("photo_id", paramMedia.a()));
    startActivity(EditPhotoCaption.a(this, (Photo)paramMedia, null));
  }
  
  protected a b()
  {
    return new a(getSupportFragmentManager(), null);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileBizPhotosFullScreen;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return Collections.emptyMap();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.UserBizMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */