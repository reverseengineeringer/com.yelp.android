package com.yelp.android.ui.activities.addphoto;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.MenuItem;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Photo.TempPhoto;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.job.BusinessPhotoResizeJob;
import com.yelp.android.services.job.VideoTrimJob;
import com.yelp.android.services.job.VideoUploadJob;
import com.yelp.android.ui.activities.ActivityRetryBusinessPhotoShare;
import com.yelp.android.ui.activities.camera.PreviewPhoto;
import com.yelp.android.ui.activities.camera.TakePhoto;
import com.yelp.android.ui.activities.camera.VideoPreviewFragment;
import com.yelp.android.ui.activities.camera.VideoPreviewFragment.a;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;
import com.yelp.android.ui.activities.media.a.a;
import com.yelp.android.ui.activities.media.a.b;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b.b;
import com.yelp.android.ui.activities.videotrim.ActivityVideoTrim;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.d;
import com.yelp.android.util.e;
import com.yelp.android.util.p;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class AddBusinessPhoto
  extends YelpActivity
  implements AddCaptionFragment.a, AddCaptionFragment.b, VideoPreviewFragment.a
{
  private b.b A = new b.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest)
    {
      AddBusinessPhoto localAddBusinessPhoto;
      if (AddBusinessPhoto.b(AddBusinessPhoto.this) == null)
      {
        paramAnonymousApiRequest = new AlertDialog.Builder(AddBusinessPhoto.this);
        paramAnonymousApiRequest.setCancelable(false);
        paramAnonymousApiRequest.setTitle(2131165586);
        localAddBusinessPhoto = AddBusinessPhoto.this;
        if (!getIntent().getBooleanExtra("extra.is_video", false)) {
          break label122;
        }
      }
      label122:
      for (int i = 2131165797;; i = 2131165796)
      {
        paramAnonymousApiRequest.setMessage(localAddBusinessPhoto.getString(i));
        paramAnonymousApiRequest.setPositiveButton(2131166858, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AddBusinessPhoto.f(AddBusinessPhoto.this).cancel(true);
            setResult(0);
            finish();
          }
        });
        paramAnonymousApiRequest.setNegativeButton(2131166239, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (AddBusinessPhoto.g(AddBusinessPhoto.this))
            {
              showLoadingDialog(null, AddBusinessPhoto.a(AddBusinessPhoto.this), 2131166073);
              return;
            }
            if (getIntent().getBooleanExtra("extra.is_video", false))
            {
              AddBusinessPhoto.c(AddBusinessPhoto.this);
              return;
            }
            AddBusinessPhoto.e(AddBusinessPhoto.this);
          }
        });
        AddBusinessPhoto.a(AddBusinessPhoto.this, paramAnonymousApiRequest.create());
        AddBusinessPhoto.b(AddBusinessPhoto.this).show();
        return;
      }
    }
  };
  private YelpBusiness a;
  private File b;
  private ImageInputHelper.ImageSource c;
  private Fragment d;
  private String e;
  private List<ShareRequest.ShareType> f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j = false;
  private int k;
  private int l;
  private boolean m;
  private AsyncTask n;
  private Dialog o;
  private String p;
  private boolean q = false;
  private boolean r;
  private int s;
  private int t;
  private com.yelp.android.g.a<Uri, Boolean> u;
  private ArrayList<Photo.TempPhoto> v;
  private boolean w = false;
  private b.a x = new b.a()
  {
    public void a()
    {
      showLoadingDialog(null, AddBusinessPhoto.a(AddBusinessPhoto.this), 2131166073);
    }
    
    public void a(String paramAnonymousString)
    {
      AddBusinessPhoto.a(AddBusinessPhoto.this, paramAnonymousString);
      if ((AddBusinessPhoto.b(AddBusinessPhoto.this) == null) || (!AddBusinessPhoto.b(AddBusinessPhoto.this).isShowing())) {
        AddBusinessPhoto.c(AddBusinessPhoto.this);
      }
    }
    
    public void b()
    {
      AlertDialogFragment localAlertDialogFragment = AlertDialogFragment.a(getString(2131165867), getString(2131166783));
      localAlertDialogFragment.a(AddBusinessPhoto.d(AddBusinessPhoto.this));
      localAlertDialogFragment.show(getSupportFragmentManager(), null);
    }
    
    public void c()
    {
      hideLoadingDialog();
      AddBusinessPhoto.a(AddBusinessPhoto.this, false);
    }
  };
  private a.a y = new a.a()
  {
    public void a()
    {
      showLoadingDialog(null, AddBusinessPhoto.a(AddBusinessPhoto.this), 2131166073);
    }
    
    public void a(a.b paramAnonymousb)
    {
      AddBusinessPhoto.a(AddBusinessPhoto.this, a);
      if ((AddBusinessPhoto.b(AddBusinessPhoto.this) == null) || (!AddBusinessPhoto.b(AddBusinessPhoto.this).isShowing())) {
        AddBusinessPhoto.e(AddBusinessPhoto.this);
      }
    }
    
    public void b()
    {
      AlertDialogFragment localAlertDialogFragment = AlertDialogFragment.a(getString(2131165867), getString(2131165868));
      localAlertDialogFragment.a(AddBusinessPhoto.d(AddBusinessPhoto.this));
      localAlertDialogFragment.show(getSupportFragmentManager(), null);
    }
    
    public void c()
    {
      hideLoadingDialog();
      AddBusinessPhoto.a(AddBusinessPhoto.this, false);
    }
  };
  private DialogInterface.OnDismissListener z = new DialogInterface.OnDismissListener()
  {
    public void onDismiss(DialogInterface paramAnonymousDialogInterface)
    {
      setResult(0);
      finish();
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, AddBusinessPhoto.class);
    paramContext.putExtra("yelp:business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, Uri paramUri, boolean paramBoolean)
  {
    paramContext = a(paramContext, paramYelpBusiness);
    paramContext.putExtra("extra.contribution", paramUri);
    paramContext.putExtra("extra.is_video", paramBoolean);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramContext = a(paramContext, paramYelpBusiness);
    paramContext.putExtra("extra.disable_video_for_reviews", paramBoolean);
    return paramContext;
  }
  
  private void a(Intent paramIntent)
  {
    b = TakePhoto.a(paramIntent);
    c = TakePhoto.b(paramIntent);
    h = TakePhoto.c(paramIntent);
    i = TakePhoto.d(paramIntent);
    k = TakePhoto.e(paramIntent).intValue();
    l = TakePhoto.f(paramIntent).intValue();
  }
  
  private Fragment e()
  {
    if (r)
    {
      localObject = (Uri)u.b(s);
      boolean bool;
      String str;
      if (!((Boolean)u.get(localObject)).booleanValue())
      {
        bool = true;
        h = bool;
        str = e.a((Uri)localObject, getContentResolver());
        if (str != null) {
          b = new File(str);
        }
        if (u.size() > 1) {
          getSupportActionBar().a(getString(2131166836, new Object[] { Integer.valueOf(s + 1), Integer.valueOf(u.size()) }));
        }
        if (!h) {
          break label211;
        }
      }
      label211:
      for (localObject = ViewIri.BusinessVideoShare;; localObject = ViewIri.BusinessPhotoShare)
      {
        com.yelp.android.g.a locala = new com.yelp.android.g.a();
        locala.put("id", a.aD());
        locala.put("batch_size", Integer.valueOf(AppData.b().f().aa()));
        AppData.a((com.yelp.android.analytics.iris.a)localObject, locala);
        return AddCaptionFragment.a(a.aD(), str, h);
        bool = false;
        break;
      }
    }
    if (b == null) {}
    for (Object localObject = null;; localObject = b.getAbsolutePath()) {
      return AddCaptionFragment.a(a.aD(), (String)localObject, h);
    }
  }
  
  private void f()
  {
    int i1 = getResources().getInteger(2131492900);
    if (e.length() > i1)
    {
      AlertDialogFragment.a(null, getString(2131166341, new Object[] { Integer.valueOf(i1) })).show(getSupportFragmentManager(), null);
      return;
    }
    if (h)
    {
      h();
      return;
    }
    g();
  }
  
  private void g()
  {
    if ((c != ImageInputHelper.ImageSource.GALLERY) && (c != ImageInputHelper.ImageSource.SHARE) && (!e.a(b))) {
      YelpLog.remoteError("Photo", "Copying the photo to the user gallery failed!");
    }
    BusinessPhotoResizeJob.launchJob(a.aD(), c, e, b.getAbsolutePath(), f);
    if (v == null) {
      v = new ArrayList();
    }
    if (r)
    {
      v.add(new Photo.TempPhoto(String.valueOf(Uri.fromFile(b.getAbsoluteFile())), e));
      t += 1;
      a();
      return;
    }
    Intent localIntent = getIntent();
    v.add(new Photo.TempPhoto(String.valueOf(Uri.fromFile(b.getAbsoluteFile())), e, UUID.randomUUID().toString()));
    localIntent.putExtra("extra.images", v);
    localIntent.putExtra("extra.posted_media", 1);
    b = null;
    setResult(-1, localIntent);
    finish();
  }
  
  private void h()
  {
    Object localObject = new com.yelp.android.g.a();
    ((Map)localObject).put("id", a.aD());
    boolean bool;
    if (!TextUtils.isEmpty(e))
    {
      bool = true;
      ((Map)localObject).put("has_caption", Boolean.valueOf(bool));
      ((Map)localObject).put("user_chose_keyframe", Boolean.valueOf(false));
      ((Map)localObject).put("source", i());
      ((Map)localObject).put("batch_size", Integer.valueOf(AppData.b().f().aa()));
      AppData.a(EventIri.BusinessVideoSave, (Map)localObject);
      localObject = b.getAbsolutePath();
      if ((!i) && (!r)) {
        break label201;
      }
      if (!j) {
        break label182;
      }
      VideoTrimJob.launchJob(b, k, l, a.aD(), e);
    }
    for (;;)
    {
      t += 1;
      a();
      return;
      bool = false;
      break;
      label182:
      VideoUploadJob.launchJob((String)localObject, e, a.aD(), false);
      continue;
      label201:
      if (!e.b(b)) {
        YelpLog.remoteError("Video", "Copying the video file to the Movies directory failed!");
      }
      VideoUploadJob.launchJob((String)localObject, e, a.aD(), true);
    }
  }
  
  private String i()
  {
    if (c == null) {
      return "unknown";
    }
    switch (5.a[c.ordinal()])
    {
    default: 
      return "unknown";
    case 1: 
      return "gallery";
    case 2: 
    case 3: 
      return "camera";
    }
    return "share";
  }
  
  private void j()
  {
    startActivityForResult(ActivityVideoTrim.a(this, p, a.aD()), 1068);
  }
  
  private void k()
  {
    c = ImageInputHelper.ImageSource.SHARE;
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    locala.put("id", a.aD());
    locala.put("media_selected", Integer.valueOf(AppData.b().f().aa()));
    AppData.a(ViewIri.BusinessPhotoShare, locala);
    getSupportFragmentManager().a().b(2131689997, e()).a();
  }
  
  public void a()
  {
    s += 1;
    if ((u != null) && (s < u.size()))
    {
      j = false;
      d = e();
      getSupportFragmentManager().a().b(2131689997, d).a();
      return;
    }
    Intent localIntent = getIntent();
    if (v != null)
    {
      localIntent.putExtra("extra.images", v);
      localIntent.putExtra("extra.posted_media", t);
    }
    setResult(-1, localIntent);
    finish();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if ((k != paramInt1) || (l != paramInt2))
    {
      j = true;
      k = paramInt1;
      l = paramInt2;
    }
  }
  
  public void a(String paramString, List<ShareRequest.ShareType> paramList)
  {
    e = paramString;
    f = paramList;
    paramString = p.a(this, AppData.b().q().p(), paramList, ActivityRetryBusinessPhotoShare.class);
    if (paramString == null)
    {
      f();
      return;
    }
    startActivityForResult(paramString, 1005);
  }
  
  public void b()
  {
    if (b == null) {
      return;
    }
    if (h)
    {
      supportInvalidateOptionsMenu();
      localObject = b.getAbsolutePath();
      if (i) {}
      for (localObject = VideoPreviewFragment.a((String)localObject, a.aD(), k, l);; localObject = VideoPreviewFragment.a((String)localObject, a.aD()))
      {
        getSupportFragmentManager().a().b(2131689997, (Fragment)localObject).a(null).a();
        return;
      }
    }
    if (c == ImageInputHelper.ImageSource.CAMERA) {}
    for (Object localObject = getText(2131166468);; localObject = getText(2131166462))
    {
      startActivity(PreviewPhoto.a(this, b, false, (CharSequence)localObject, getText(2131166763), true));
      return;
    }
  }
  
  public void c()
  {
    getSupportFragmentManager().c();
  }
  
  public void d() {}
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return g.b(a.aD());
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
          g = false;
          w = true;
          Map localMap = (Map)paramIntent.getSerializableExtra("extra_selected_media");
          if ((localMap != null) && (localMap.size() > 0)) {}
          for (boolean bool = true;; bool = false)
          {
            r = bool;
            if (!r) {
              break;
            }
            c = TakePhoto.b(paramIntent);
            u = new com.yelp.android.g.a();
            u.putAll(localMap);
            s = 0;
            t = 0;
            return;
          }
          a(paramIntent);
          getIntent().putExtra("extra.take_photo_data", paramIntent);
          if (b == null)
          {
            as.a(2131165858, 1);
            setResult(0);
            finish();
          }
          if (h) {}
          for (paramIntent = ViewIri.BusinessVideoShare;; paramIntent = ViewIri.BusinessPhotoShare)
          {
            AppData.a(paramIntent, "id", a.aD());
            return;
          }
        }
        finish();
        return;
      } while (paramInt2 != -1);
      g = false;
      f();
      return;
    } while (paramInt2 != 0);
    g = false;
    b = null;
    startActivityForResult(ActivityMediaContributionDelegate.a(this, a.aD(), m), 1062);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = (Uri)getIntent().getParcelableExtra("extra.contribution");
    boolean bool;
    if (localObject != null)
    {
      q = true;
      if (getIntent().getBooleanExtra("extra.is_video", false))
      {
        n = new b(this, x);
        ((b)n).execute(new Uri[] { localObject });
      }
    }
    else
    {
      if (paramBundle != null)
      {
        if (paramBundle.containsKey("file_path")) {
          b = new File(paramBundle.getString("file_path"));
        }
        c = ((ImageInputHelper.ImageSource)d.a(paramBundle, "image_source", ImageInputHelper.ImageSource.class));
      }
      localObject = getIntent();
      m = ((Intent)localObject).getBooleanExtra("extra.disable_video_for_reviews", false);
      a = ((YelpBusiness)((Intent)localObject).getParcelableExtra("yelp:business"));
      setTitle(a.z());
      localObject = (Intent)((Intent)localObject).getParcelableExtra("extra.take_photo_data");
      if (localObject != null) {
        a((Intent)localObject);
      }
      if (q) {
        break label290;
      }
      if ((b != null) || (paramBundle != null)) {
        break label285;
      }
      bool = true;
    }
    label204:
    label285:
    label290:
    for (g = bool;; g = false)
    {
      ((Toolbar)findViewById(2131690378)).setNavigationIcon(2130838971);
      getSupportFragmentManager().a().a(2131689997, e()).a();
      return;
      n = new com.yelp.android.ui.activities.media.a(this, y);
      ((com.yelp.android.ui.activities.media.a)n).execute(new Uri[] { localObject });
      break;
      bool = false;
      break label204;
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    paramMenuItem = new com.yelp.android.g.a();
    paramMenuItem.put("id", a.aD());
    paramMenuItem.put("batch_size", Integer.valueOf(AppData.b().f().aa()));
    paramMenuItem.put("md5_hash", d.a(b.getAbsolutePath()));
    AppData.a(EventIri.UploadMediaCancel, paramMenuItem);
    a();
    return true;
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (w)
    {
      d = e();
      getSupportFragmentManager().a().b(2131689997, d).a();
      w = false;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (g)
    {
      startActivityForResult(ActivityMediaContributionDelegate.a(this, a.aD(), m), 1062);
      overridePendingTransition(2130968607, 2130968587);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    if (b != null) {
      paramBundle.putString("file_path", b.getAbsolutePath());
    }
    d.a(paramBundle, "image_source", c);
  }
  
  public void onYesNoDialogSelection(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {
      a(e, f);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddBusinessPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */