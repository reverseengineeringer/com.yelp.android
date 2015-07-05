package com.yelp.android.ui.activities.camera;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.hardware.Camera;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;
import com.yelp.android.ui.activities.media.d;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.util.f;
import java.io.File;

public class TakePhoto
  extends YelpActivity
{
  private String a;
  private SurfaceView b;
  private View c;
  private CameraWrangler d;
  private boolean e;
  private d f;
  
  public static Intent a(Context paramContext)
  {
    return a(paramContext, null, true, false);
  }
  
  public static Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, TakePhoto.class);
    paramContext.putExtra("CameraId", paramInt);
    paramContext.putExtra("extra_disable_video_for_reviews", true);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramContext, paramString, paramBoolean1, paramBoolean2, -1);
  }
  
  public static Intent a(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    paramContext = new Intent(paramContext, TakePhoto.class);
    paramContext.putExtra("extra_business_id", paramString);
    paramContext.putExtra("extra_disable_video_for_reviews", paramBoolean1);
    paramContext.putExtra("extra_started_from_gallery", paramBoolean2);
    if (paramInt > -1) {
      paramContext.putExtra("CameraId", paramInt);
    }
    return paramContext;
  }
  
  public static Intent a(Intent paramIntent, File paramFile, ImageInputHelper.ImageSource paramImageSource, boolean paramBoolean)
  {
    paramIntent.putExtra("extra_file_path", paramFile.getAbsolutePath());
    f.a(paramIntent, "extra_media_source", paramImageSource);
    paramIntent.putExtra("extra_is_video", paramBoolean);
    return paramIntent;
  }
  
  public static Intent a(File paramFile, ImageInputHelper.ImageSource paramImageSource, boolean paramBoolean)
  {
    return a(new Intent(), paramFile, paramImageSource, paramBoolean);
  }
  
  public static Intent a(File paramFile, ImageInputHelper.ImageSource paramImageSource, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    paramFile = a(paramFile, paramImageSource, paramBoolean);
    paramFile.putExtra("extra_video_trim_begin", paramInt1);
    paramFile.putExtra("extra_video_trim_end", paramInt2);
    return paramFile;
  }
  
  public static File a(Intent paramIntent)
  {
    return new File(paramIntent.getStringExtra("extra_file_path"));
  }
  
  public static ImageInputHelper.ImageSource b(Intent paramIntent)
  {
    return (ImageInputHelper.ImageSource)f.a(paramIntent, "extra_media_source", ImageInputHelper.ImageSource.class);
  }
  
  private void c()
  {
    d.a(b);
    d.a(b, new q(this, null));
    d.a(b, (ViewTakePhotoOverlay)findViewById(2131493300));
  }
  
  public static boolean c(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("extra_is_video", false);
  }
  
  private void d()
  {
    View localView = findViewById(2131493305);
    localView.setVisibility(8);
    localView.setOnClickListener(new n(this));
  }
  
  public static boolean d(Intent paramIntent)
  {
    return paramIntent.hasExtra("extra_video_trim_begin");
  }
  
  public static Integer e(Intent paramIntent)
  {
    return Integer.valueOf(paramIntent.getIntExtra("extra_video_trim_begin", 0));
  }
  
  private void e()
  {
    ImageView localImageView = (ImageView)findViewById(2131493303);
    localImageView.setOnClickListener(new o(this));
    f = new d(this, localImageView, MediaStoreUtil.MediaType.PHOTO);
    f.execute(new Void[0]);
  }
  
  public static Integer f(Intent paramIntent)
  {
    return Integer.valueOf(paramIntent.getIntExtra("extra_video_trim_end", 0));
  }
  
  private void f()
  {
    if (e)
    {
      finish();
      return;
    }
    startActivityForResult(ActivityChooseFromGallery.a(this, MediaStoreUtil.MediaType.PHOTO, true, false, a), 1029);
  }
  
  public CameraWrangler a()
  {
    return d;
  }
  
  @TargetApi(9)
  void a(View paramView)
  {
    if (Camera.getNumberOfCameras() > 1) {}
    for (int i = 0;; i = 8)
    {
      paramView.setVisibility(i);
      paramView.setOnClickListener(new p(this));
      return;
    }
  }
  
  public CameraWrangler b()
  {
    return (CameraWrangler)super.getLastCustomNonConfigurationInstance();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.TakePhoto;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((paramInt2 == 0) && (!getAppData().h().a()))
      {
        finish();
        return;
      }
      if (paramInt2 == -1)
      {
        setResult(paramInt2, paramIntent);
        finish();
        continue;
        if (paramInt2 == -1)
        {
          setResult(-1, getIntent());
          finish();
        }
        else if (paramInt2 == 4)
        {
          setResult(0, getIntent());
          finish();
          continue;
          c();
          if (paramInt2 == -1)
          {
            setResult(-1, paramIntent);
            finish();
          }
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if (paramBundle == null) {}
    for (int i = localIntent.getIntExtra("CameraId", 0);; i = paramBundle.getInt("CameraId"))
    {
      a = localIntent.getStringExtra("extra_business_id");
      e = localIntent.getBooleanExtra("extra_started_from_gallery", false);
      d = b();
      if (d == null) {
        d = new CameraWrangler(i, getWindowManager().getDefaultDisplay());
      }
      if (getAppData().h().a()) {
        break;
      }
      f();
      return;
    }
    setContentView(2130903116);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    d.c();
  }
  
  protected void onPause()
  {
    super.onPause();
    if (isFinishing()) {
      d.c();
    }
    if ((f != null) && (f.getStatus() != AsyncTask.Status.FINISHED)) {
      f.cancel(false);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("CameraId", d.a());
  }
  
  public void onSupportContentChanged()
  {
    super.onSupportContentChanged();
    View localView;
    if (findViewById(2131493299) != null)
    {
      b = ((SurfaceView)findViewById(2131493299));
      c = findViewById(2131493302);
      c.setOnClickListener(new l(this));
      localView = findViewById(2131493304);
      localView.setVisibility(8);
      if (com.yelp.android.appdata.n.a(9)) {
        a(localView);
      }
      c();
      d();
      e();
      localView = findViewById(2131493301);
      if ((ActivityMediaContributionDelegate.a(getIntent())) && (Features.video_capture.isEnabled()))
      {
        localView.setVisibility(0);
        localView.setOnClickListener(new m(this));
      }
    }
    else
    {
      return;
    }
    localView.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.TakePhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */