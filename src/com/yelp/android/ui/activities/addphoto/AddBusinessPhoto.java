package com.yelp.android.ui.activities.addphoto;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.ValidateCaptionRequest;
import com.yelp.android.appdata.webrequests.ValidateCaptionRequest.ContentType;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.VideoTrimService;
import com.yelp.android.services.job.BusinessPhotoResizeJob;
import com.yelp.android.services.job.VideoUploadJob;
import com.yelp.android.ui.activities.ActivityRetryBusinessPhotoShare;
import com.yelp.android.ui.activities.camera.PreviewPhoto;
import com.yelp.android.ui.activities.camera.TakePhoto;
import com.yelp.android.ui.activities.camera.VideoPreviewFragment;
import com.yelp.android.ui.activities.camera.ab;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.aj;
import com.yelp.android.util.f;
import com.yelp.android.util.l;
import com.yelp.android.util.x;
import com.yelp.android.util.z;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class AddBusinessPhoto
  extends YelpActivity
  implements g, ab
{
  private YelpBusiness a;
  private File b;
  private ImageInputHelper.ImageSource c;
  private String d;
  private List<ShareRequest.ShareType> e;
  private boolean f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private boolean k;
  private boolean l = false;
  private AlertDialog m;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, AddBusinessPhoto.class);
    paramContext.putExtra("yelp:business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramContext = a(paramContext, paramYelpBusiness);
    paramContext.putExtra("disable_video_for_reviews", paramBoolean);
    return paramContext;
  }
  
  private void a(Intent paramIntent)
  {
    b = TakePhoto.a(paramIntent);
    c = TakePhoto.b(paramIntent);
    g = TakePhoto.c(paramIntent);
    h = TakePhoto.d(paramIntent);
    i = TakePhoto.e(paramIntent).intValue();
    j = TakePhoto.f(paramIntent).intValue();
  }
  
  private Fragment d()
  {
    if (b == null) {}
    for (String str = null;; str = b.getAbsolutePath()) {
      return AddCaptionFragment.a(a.getId(), str, g);
    }
  }
  
  private void e()
  {
    if (m == null)
    {
      m = new bn(this);
      m.setMessage(getString(2131166354));
      m.setCancelable(false);
    }
    m.show();
    String str = d;
    if (g) {}
    for (ValidateCaptionRequest.ContentType localContentType = ValidateCaptionRequest.ContentType.VIDEO;; localContentType = ValidateCaptionRequest.ContentType.PHOTO)
    {
      new ValidateCaptionRequest(str, localContentType, new a(this)).execute(new Void[0]);
      return;
    }
  }
  
  private void f()
  {
    x.a(a.getId(), c, d, b.getAbsolutePath());
    if ((c != ImageInputHelper.ImageSource.GALLERY) && (!l.a(b))) {
      YelpLog.error("Photo", "Copying the photo to the user gallery failed!");
    }
    BusinessPhotoResizeJob.launchJob(a.getId(), d, b.getAbsolutePath(), e);
    Intent localIntent = getIntent();
    localIntent.putExtra("caption_extra", d);
    localIntent.putExtra("bitmap_extra", b.getAbsolutePath());
    localIntent.putExtra("photo_id_extra", UUID.randomUUID().toString());
    b = null;
    setResult(-1, localIntent);
    finish();
  }
  
  private void g()
  {
    Object localObject = new HashMap(3);
    ((Map)localObject).put("id", a.getId());
    boolean bool;
    if (!TextUtils.isEmpty(d))
    {
      bool = true;
      ((Map)localObject).put("has_caption", Boolean.valueOf(bool));
      ((Map)localObject).put("user_chose_keyframe", Boolean.valueOf(false));
      ((Map)localObject).put("source", h());
      AppData.a(EventIri.BusinessVideoSave, (Map)localObject);
      localObject = b.getAbsolutePath();
      if (!h) {
        break label210;
      }
      int n = aj.a((String)localObject);
      if ((i != 0) || (j != n)) {
        break label174;
      }
      VideoUploadJob.launchJob((String)localObject, d, a.getId(), false);
    }
    for (;;)
    {
      b = null;
      localObject = new Intent();
      ((Intent)localObject).putExtra("is_video_extra", true);
      setResult(-1, (Intent)localObject);
      finish();
      return;
      bool = false;
      break;
      label174:
      startService(VideoTrimService.a(this, b, i, j, a.getId(), d, false));
      continue;
      label210:
      if (!l.b(b)) {
        YelpLog.error("Video", "Copying the video file to the Movies directory failed!");
      }
      VideoUploadJob.launchJob((String)localObject, d, a.getId(), true);
    }
  }
  
  private String h()
  {
    if (c == null) {
      return "unknown";
    }
    switch (b.a[c.ordinal()])
    {
    default: 
      return "unknown";
    case 1: 
      return "gallery";
    }
    return "camera";
  }
  
  public void a()
  {
    if (b == null) {
      return;
    }
    if (g)
    {
      supportInvalidateOptionsMenu();
      localObject = b.getAbsolutePath();
      if (h) {}
      for (localObject = VideoPreviewFragment.a((String)localObject, a.getId(), i, j);; localObject = VideoPreviewFragment.a((String)localObject, a.getId()))
      {
        getSupportFragmentManager().beginTransaction().replace(2131493332, (Fragment)localObject).addToBackStack(null).commit();
        return;
      }
    }
    if (c == ImageInputHelper.ImageSource.CAMERA) {}
    for (Object localObject = getText(2131166463);; localObject = getText(2131166458))
    {
      startActivityForResult(PreviewPhoto.a(this, b, false, (CharSequence)localObject, getText(2131166799)), 1045);
      return;
    }
  }
  
  public void a(String paramString, List<ShareRequest.ShareType> paramList)
  {
    d = paramString;
    e = paramList;
    int n = getResources().getInteger(2131558423);
    if (d.length() > n)
    {
      showInfoDialog(getString(2131166307, new Object[] { Integer.valueOf(n) }));
      return;
    }
    paramString = z.a(this, AppData.b().m().h(), paramList, ActivityRetryBusinessPhotoShare.class);
    if (paramString == null)
    {
      e();
      return;
    }
    startActivityForResult(paramString, 1002);
  }
  
  public void b()
  {
    getSupportFragmentManager().popBackStack();
  }
  
  public void c() {}
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return com.yelp.android.analytics.g.b(a.getId());
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
      do
      {
        return;
        if (paramInt2 == -1)
        {
          f = false;
          l = true;
          getIntent().putExtra("take_photo_data", paramIntent);
          a(paramIntent);
          if (g) {}
          for (paramIntent = ViewIri.BusinessVideoShare;; paramIntent = ViewIri.BusinessPhotoShare)
          {
            AppData.a(paramIntent, "id", a.getId());
            return;
          }
        }
        finish();
        return;
      } while (paramInt2 != -1);
      f = false;
      e();
      return;
    } while (paramInt2 != 0);
    f = false;
    b = null;
    startActivityForResult(ActivityMediaContributionDelegate.a(this, a.getId(), k), 1053);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      if (paramBundle.containsKey("file_path")) {
        b = new File(paramBundle.getString("file_path"));
      }
      c = ((ImageInputHelper.ImageSource)f.a(paramBundle, "image_source", ImageInputHelper.ImageSource.class));
    }
    Intent localIntent = getIntent();
    k = localIntent.getBooleanExtra("disable_video_for_reviews", false);
    a = ((YelpBusiness)localIntent.getParcelableExtra("yelp:business"));
    setTitle(a.getDisplayName());
    localIntent = (Intent)localIntent.getParcelableExtra("take_photo_data");
    if (localIntent != null) {
      a(localIntent);
    }
    if ((b == null) && (paramBundle == null)) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      getSupportFragmentManager().beginTransaction().add(2131493332, d()).commit();
      return;
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if ((isFinishing()) && (b != null) && (b.exists()) && (!h)) {
      b.delete();
    }
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (l)
    {
      getSupportFragmentManager().beginTransaction().replace(2131493332, d()).commit();
      l = false;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (f)
    {
      startActivityForResult(ActivityMediaContributionDelegate.a(this, a.getId(), k), 1053);
      overridePendingTransition(2130968601, 2130968585);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    if (b != null) {
      paramBundle.putString("file_path", b.getAbsolutePath());
    }
    f.a(paramBundle, "image_source", c);
  }
  
  public void onYesNoDialogSelection(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {
      a(d, e);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddBusinessPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */