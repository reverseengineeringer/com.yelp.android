package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ImageInputHelper;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

class i
  implements ad
{
  i(ActivityMediaViewer paramActivityMediaViewer) {}
  
  public void a()
  {
    ImageInputHelper localImageInputHelper = new ImageInputHelper(AppData.b().h(), 1037);
    AppData.a(ViewIri.UserImageUpload);
    localImageInputHelper.a(a);
  }
  
  public void a(int paramInt)
  {
    a.startActivityForResult(ActivityLogin.a(a, paramInt), 1043);
  }
  
  public void a(View paramView)
  {
    int i = ActivityMediaViewer.k(a).getCurrentItem();
    if (i >= ActivityMediaViewer.a(a).size()) {}
    do
    {
      return;
      paramView = (Media)ActivityMediaViewer.a(a).get(i);
    } while (paramView == null);
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("id", ActivityMediaViewer.l(a));
    if (paramView.isMediaType(Media.MediaType.VIDEO))
    {
      Video localVideo = (Video)paramView;
      localTreeMap.put("video_id", localVideo.getId());
      localTreeMap.put("video_source", localVideo.getVideoSource());
      AppData.a(ViewIri.BusinessVideoFeedbackList, localTreeMap);
    }
    for (;;)
    {
      paramView = WhoLikedThisBizPhotoFragment.a(paramView);
      a.getSupportFragmentManager().beginTransaction().setCustomAnimations(2130968601, 2130968606, 2130968601, 2130968606).replace(2131493243, paramView).addToBackStack(null).commit();
      return;
      localTreeMap.put("photo_id", paramView.getId());
      AppData.a(ViewIri.BusinessPhotoFeedbackList, localTreeMap);
    }
  }
  
  public void a(Media paramMedia)
  {
    if (ActivityMediaViewer.b(a, paramMedia)) {
      ActivityMediaViewer.c(a, paramMedia);
    }
  }
  
  public void a(Photo paramPhoto)
  {
    if ((a instanceof UserMediaViewer)) {}
    for (EventIri localEventIri = EventIri.UserPhotoCompliment;; localEventIri = EventIri.BusinessPhotoCompliment)
    {
      AppData.a(localEventIri, "photo_id", paramPhoto.getId());
      paramPhoto = SendCompliment.a(a, paramPhoto, Compliment.ComplimentType.PHOTOS);
      a.startActivity(ActivityLogin.a(a, 2131166057, paramPhoto));
      return;
    }
  }
  
  public void a(String paramString)
  {
    a.startActivity(ActivityUserProfile.a(a, paramString));
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b(Media paramMedia)
  {
    if (ActivityMediaViewer.b(a, paramMedia)) {
      ActivityMediaViewer.d(a, paramMedia);
    }
  }
  
  public void b(Photo paramPhoto)
  {
    AppData.a(EventIri.BusinessPhotoCaptionEdit, Collections.singletonMap("photo_id", paramPhoto.getId()));
    YelpBusiness localYelpBusiness = (YelpBusiness)a.getIntent().getParcelableExtra("extra.business");
    a.startActivity(EditPhotoCaption.a(a, paramPhoto, localYelpBusiness));
  }
  
  public void c(Media paramMedia)
  {
    a.startActivity(ActivityBusinessPage.a(a, paramMedia.getBusinessId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */