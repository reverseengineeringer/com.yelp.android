package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v4.view.ViewPager;
import android.util.ArrayMap;
import android.view.View;
import android.widget.CompoundButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest;
import com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest.DeletableObject;
import com.yelp.android.appdata.webrequests.MediaFlagRequest.FlaggableMedia;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.eh;
import com.yelp.android.appdata.webrequests.ej;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.HashMap;
import java.util.Map;

public abstract class BusinessMediaViewer
  extends DynamicMediaViewer
{
  private void a(Media paramMedia, View paramView)
  {
    int i = 1;
    Object localObject = paramMedia.j();
    boolean bool = ((CompoundButton)paramView).isChecked();
    if ((bool) && (!((Feedback)localObject).c())) {
      ((Feedback)localObject).a();
    }
    for (;;)
    {
      e.a(paramMedia);
      if (i != 0)
      {
        localObject = new HashMap();
        if (!paramMedia.a(Media.MediaType.VIDEO)) {
          break label161;
        }
        paramView = (Video)paramMedia;
        paramMedia = new ej(paramView, bool);
        ((HashMap)localObject).put("id", paramView.k());
        ((HashMap)localObject).put("video_id", paramView.a());
        ((HashMap)localObject).put("video_source", paramView.p());
        AppData.a(EventIri.BusinessSaveVideoFeedback, (Map)localObject);
      }
      for (;;)
      {
        paramMedia.f(new Void[0]);
        return;
        if ((bool) && (((Feedback)localObject).c())) {
          break label255;
        }
        ((Feedback)localObject).b();
        break;
        label161:
        if (!paramMedia.a(Media.MediaType.PHOTO)) {
          break label245;
        }
        Photo localPhoto = (Photo)paramMedia;
        paramView = new eh(localPhoto, bool, null);
        ((HashMap)localObject).put("id", localPhoto.k());
        ((HashMap)localObject).put("photo_id", localPhoto.a());
        AppData.a(EventIri.BusinessSavePhotoFeedback, (Map)localObject);
        new ObjectDirtyEvent(paramMedia, "com.yelp.android.media.update").a(this);
        paramMedia = paramView;
      }
      label245:
      throw new IllegalStateException("Can only like photos / videos");
      label255:
      i = 0;
    }
  }
  
  private boolean c()
  {
    if (!AppData.b().q().d())
    {
      startActivityForResult(ActivityLogin.a(this, 2131165697, 2131166103), 1031);
      return false;
    }
    return true;
  }
  
  protected MediaFlagRequest.FlaggableMedia a(Media paramMedia)
  {
    if (paramMedia.a(Media.MediaType.PHOTO)) {
      return MediaFlagRequest.FlaggableMedia.BUSINESS_PHOTO;
    }
    if (paramMedia.a(Media.MediaType.VIDEO)) {
      return MediaFlagRequest.FlaggableMedia.BUSINESS_VIDEO;
    }
    throw new IllegalStateException("Should only be able to flag photos / videos.");
  }
  
  protected void a(Media paramMedia, String paramString)
  {
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("id", paramString);
    if (paramMedia.a(Media.MediaType.VIDEO))
    {
      paramString = (Video)paramMedia;
      localArrayMap.put("video_id", paramString.a());
      localArrayMap.put("video_source", paramString.p());
      AppData.a(ViewIri.BusinessVideoFeedbackList, localArrayMap);
    }
    for (;;)
    {
      paramMedia = WhoLikedThisBizPhotoFragment.a(paramMedia);
      getSupportFragmentManager().a().a(2130968607, 2130968612, 2130968607, 2130968612).b(2131689902, paramMedia).a(null).a();
      return;
      if (!paramMedia.a(Media.MediaType.PHOTO)) {
        break;
      }
      localArrayMap.put("photo_id", paramMedia.a());
      AppData.a(ViewIri.BusinessPhotoFeedbackList, localArrayMap);
    }
    throw new IllegalStateException("Can only like photos / videos.");
  }
  
  public void a(PhotoChrome.DisplayFeature paramDisplayFeature, Media paramMedia, View paramView)
  {
    switch (1.a[paramDisplayFeature.ordinal()])
    {
    default: 
      super.a(paramDisplayFeature, paramMedia, paramView);
    case 1: 
      do
      {
        return;
      } while (!c());
      a(paramMedia, paramView);
      return;
    }
    a(paramMedia, paramMedia.k());
  }
  
  protected b b(Media paramMedia)
  {
    Object localObject;
    if (paramMedia.a(Media.MediaType.VIDEO))
    {
      localObject = BusinessObjectDeleteRequest.DeletableObject.VIDEO;
      localObject = new BusinessObjectDeleteRequest((BusinessObjectDeleteRequest.DeletableObject)localObject, f(), paramMedia);
      showLoadingDialog();
      ((b)localObject).f(new Object[0]);
      if (!paramMedia.a(Media.MediaType.VIDEO)) {
        break label78;
      }
      AppData.a(EventIri.BusinessVideoDeleted, "video_id", paramMedia.a());
    }
    label78:
    while (!paramMedia.a(Media.MediaType.PHOTO))
    {
      return (b)localObject;
      localObject = BusinessObjectDeleteRequest.DeletableObject.PHOTO;
      break;
    }
    AppData.a(EventIri.BusinessPhotoDeleted, "photo_id", paramMedia.a());
    return (b)localObject;
  }
  
  protected c.a f()
  {
    return new a(null);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    } while (!AppData.b().q().d());
    e.setLikeButtonChecked(true);
  }
  
  public void onBackPressed()
  {
    if (getSupportFragmentManager().e() == 0)
    {
      YelpActivity.IntentData.setData(c.g());
      Intent localIntent = new Intent(getIntent());
      if (c.d() < g()) {
        localIntent.putExtra("extra.media_request", a);
      }
      for (;;)
      {
        localIntent.putExtra("extra.media_index", d.getCurrentItem());
        setResult(-1, localIntent);
        finish();
        return;
        localIntent.removeExtra("extra.media_request");
      }
    }
    super.onBackPressed();
  }
  
  private class a
    implements c.a
  {
    private a() {}
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
    {
      paramApiRequest = ((BusinessObjectDeleteRequest)paramApiRequest).b();
      c.b(paramApiRequest);
      YelpActivity.IntentData.setData(c.g());
      paramVoid = new Intent(getIntent());
      paramVoid.putExtra("extra.media_index", d.getCurrentItem());
      setResult(-1, paramVoid);
      hideLoadingDialog();
      new ObjectDirtyEvent(paramApiRequest, "com.yelp.android.media.delete").a(BusinessMediaViewer.this);
      paramVoid = AppData.b().q().p();
      if (paramApiRequest.a(Media.MediaType.VIDEO)) {
        paramVoid.c(-1);
      }
      for (;;)
      {
        new ActivityUserProfile.a().a(AppData.b());
        finish();
        return;
        if (!paramApiRequest.a(Media.MediaType.PHOTO)) {
          break;
        }
        paramVoid.a(-1);
      }
      throw new IllegalStateException("Media coming back from api should be photo or video");
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      paramApiRequest = ((BusinessObjectDeleteRequest)paramApiRequest).b();
      hideLoadingDialog();
      if (paramApiRequest.a(Media.MediaType.VIDEO)) {}
      for (int i = 2131165852;; i = 2131165850)
      {
        AlertDialogFragment.a(null, getString(i)).show(getSupportFragmentManager(), null);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.BusinessMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */