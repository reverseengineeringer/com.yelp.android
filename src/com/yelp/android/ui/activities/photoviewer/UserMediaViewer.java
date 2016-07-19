package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaFlagRequest.FlaggableMedia;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.fk.a;
import com.yelp.android.appdata.webrequests.fl;
import com.yelp.android.appdata.webrequests.fm;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Photo.PhotoType;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.as;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class UserMediaViewer
  extends MediaViewer
{
  private Intent a;
  private final c.a f = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      hideLoadingDialog();
      paramAnonymousApiRequest = new Intent();
      paramAnonymousApiRequest.putExtra("extra.photo_set_primary", true);
      setResult(-1, paramAnonymousApiRequest);
      finish();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      AlertDialogFragment.a(null, getString(2131165860)).show(getSupportFragmentManager(), null);
    }
  };
  private final ApiRequest.b<fk.a> g = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fk.a paramAnonymousa)
    {
      hideLoadingDialog();
      paramAnonymousApiRequest = new ActivityUserProfile.a();
      e = paramAnonymousa.a();
      paramAnonymousApiRequest.a(UserMediaViewer.this);
      paramAnonymousApiRequest = new Intent();
      paramAnonymousApiRequest.putExtra("extra.photo_added", true);
      setResult(-1, paramAnonymousApiRequest);
      finish();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
    }
  };
  
  public static Intent a(Context paramContext, List<? extends Media> paramList, int paramInt)
  {
    return a(new Intent(paramContext, UserMediaViewer.class), paramList, paramInt);
  }
  
  private void a(Photo paramPhoto)
  {
    Iterator localIterator = c.g().iterator();
    Object localObject;
    do
    {
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (Media)localIterator.next();
      } while (!((Media)localObject).a(Media.MediaType.PHOTO));
      localObject = (Photo)localObject;
    } while (((Photo)localObject).m() != Photo.PhotoType.USER_PROFILE_PRIMARY);
    for (;;)
    {
      if (localObject != null) {
        ((Photo)localObject).n();
      }
      paramPhoto.o();
      e.a(paramPhoto);
      return;
      localObject = null;
    }
  }
  
  private b d(Media paramMedia)
  {
    paramMedia = new fm(paramMedia.a(), f);
    showLoadingDialog();
    paramMedia.f(new Object[0]);
    return paramMedia;
  }
  
  protected MediaFlagRequest.FlaggableMedia a(Media paramMedia)
  {
    if (paramMedia.a(Media.MediaType.PHOTO)) {
      return MediaFlagRequest.FlaggableMedia.USER_PHOTO;
    }
    throw new IllegalStateException("Should only be able to flag photos from the UserMediaViewer.");
  }
  
  protected Set<PhotoChrome.DisplayFeature> a()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(PhotoChrome.DisplayFeature.ADD_ACCOUNT_PHOTO);
    localHashSet.add(PhotoChrome.DisplayFeature.COMPLIMENT);
    localHashSet.add(PhotoChrome.DisplayFeature.DELETE);
    localHashSet.add(PhotoChrome.DisplayFeature.FLAG);
    localHashSet.add(PhotoChrome.DisplayFeature.MAKE_PRIMARY_PHOTO);
    localHashSet.add(PhotoChrome.DisplayFeature.UPLOADED_AGO);
    return localHashSet;
  }
  
  public void a(PhotoChrome.DisplayFeature paramDisplayFeature, Media paramMedia, View paramView)
  {
    switch (3.a[paramDisplayFeature.ordinal()])
    {
    default: 
      super.a(paramDisplayFeature, paramMedia, paramView);
      return;
    case 1: 
      paramDisplayFeature = new ImageInputHelper(AppData.b().h(), 1041);
      AppData.a(ViewIri.UserImageUpload);
      paramDisplayFeature.a(this);
      return;
    case 2: 
      AppData.a(EventIri.UserPhotoCompliment, "photo_id", paramMedia.a());
      c(paramMedia);
      return;
    }
    AppData.a(EventIri.UserProfilePhotoSetPrimaryTap);
    a((Photo)paramMedia);
    d(paramMedia);
  }
  
  protected b b(Media paramMedia)
  {
    paramMedia = new fl(paramMedia.a(), f());
    showLoadingDialog();
    paramMedia.f(new Object[0]);
    return paramMedia;
  }
  
  protected a b()
  {
    return new a(getSupportFragmentManager(), null);
  }
  
  protected c.a f()
  {
    return new a(null);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserPhotosFullscreen;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1041)
    {
      if (paramInt2 != -1) {
        break label25;
      }
      a = paramIntent;
    }
    label25:
    while (paramInt2 != 4) {
      return;
    }
    as.a(getText(2131166342), 1);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (a != null) {
      DlgAddPhotoCaption.a(a, this, g, getSupportFragmentManager(), "dialog_add_photo");
    }
    a = null;
  }
  
  private class a
    implements c.a
  {
    private a() {}
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
    {
      paramApiRequest = new Intent();
      paramApiRequest.putExtra("extra.photo_deleted", true);
      setResult(-1, paramApiRequest);
      hideLoadingDialog();
      finish();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      hideLoadingDialog();
      AlertDialogFragment.a(null, getString(2131165850)).show(getSupportFragmentManager(), null);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.UserMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */