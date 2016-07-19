package com.yelp.android.ui.activities.camera;

import android.content.Context;
import android.content.Intent;
import android.hardware.Camera;
import android.location.Location;
import android.media.ExifInterface;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.d;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;

public class TakePhoto
  extends YelpActivity
{
  private String a;
  private YelpSurfaceView b;
  private View c;
  private CameraWrangler d;
  private boolean e;
  private com.yelp.android.ui.activities.media.b f;
  private File g;
  private int h;
  
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
    d.a(paramIntent, "extra_media_source", paramImageSource);
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
    paramIntent = paramIntent.getStringExtra("extra_file_path");
    if (paramIntent == null) {
      return null;
    }
    return new File(paramIntent);
  }
  
  public static ImageInputHelper.ImageSource b(Intent paramIntent)
  {
    return (ImageInputHelper.ImageSource)d.a(paramIntent, "extra_media_source", ImageInputHelper.ImageSource.class);
  }
  
  private void c()
  {
    d.a(b);
    d.a(b, new a(null));
    d.a(b, (ViewTakePhotoOverlay)findViewById(2131689956));
  }
  
  public static boolean c(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("extra_is_video", false);
  }
  
  private void d()
  {
    View localView = findViewById(2131689961);
    localView.setVisibility(8);
    localView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EnumSet localEnumSet = TakePhoto.a(TakePhoto.this).e();
        localEnumSet.remove(CameraWrangler.FlashMode.TORCH);
        CameraWrangler.FlashMode localFlashMode = TakePhoto.a(TakePhoto.this).g();
        CameraWrangler.FlashMode[] arrayOfFlashMode = CameraWrangler.FlashMode.values();
        for (int i = localFlashMode.ordinal() + 1 % arrayOfFlashMode.length;; i = (i + 1) % arrayOfFlashMode.length) {
          if (i != localFlashMode.ordinal())
          {
            if (localEnumSet.contains(arrayOfFlashMode[i]))
            {
              TakePhoto.a(TakePhoto.this).f().a(arrayOfFlashMode[i]).a();
              ((ImageView)paramAnonymousView).setImageLevel(arrayOfFlashMode[i].ordinal());
            }
          }
          else {
            return;
          }
        }
      }
    });
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
    ImageView localImageView = (ImageView)findViewById(2131689959);
    localImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        TakePhoto.c(TakePhoto.this);
      }
    });
    f = new com.yelp.android.ui.activities.media.b(this, localImageView, MediaStoreUtil.MediaType.PHOTO);
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
    startActivityForResult(ActivityChooseFromGallery.a(this, MediaStoreUtil.MediaType.PHOTO, true, false, a), 1032);
  }
  
  public CameraWrangler a()
  {
    return d;
  }
  
  void a(View paramView)
  {
    if (Camera.getNumberOfCameras() > 1) {}
    for (int i = 0;; i = 8)
    {
      paramView.setVisibility(i);
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          try
          {
            TakePhoto.a(TakePhoto.this).a((TakePhoto.a(TakePhoto.this).a() + 1) % Camera.getNumberOfCameras(), TakePhoto.d(TakePhoto.this).getHolder());
            TakePhoto.d(TakePhoto.this).requestLayout();
            return;
          }
          catch (IOException paramAnonymousView)
          {
            YelpLog.e(TakePhoto.this, "Could not open camera", paramAnonymousView);
            finish();
          }
        }
      });
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
        setIntent(a(getIntent(), g, ImageInputHelper.ImageSource.CAMERA, false));
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
    k.a(this, 250, new PermissionGroup[] { PermissionGroup.CAMERA, PermissionGroup.STORAGE });
    Intent localIntent = getIntent();
    if (paramBundle == null) {}
    for (int i = localIntent.getIntExtra("CameraId", 0);; i = paramBundle.getInt("CameraId"))
    {
      h = i;
      a = localIntent.getStringExtra("extra_business_id");
      e = localIntent.getBooleanExtra("extra_started_from_gallery", false);
      if (k.a(this, PermissionGroup.CAMERA))
      {
        d = b();
        if (d == null) {
          d = new CameraWrangler(h, getWindowManager().getDefaultDisplay());
        }
      }
      if (getAppData().h().a()) {
        break;
      }
      f();
      return;
    }
    setContentView(2130903125);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (d != null) {
      d.c();
    }
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
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.CAMERA)) && (!((Boolean)paramArrayOfString.get(PermissionGroup.CAMERA)).booleanValue()))
      {
        as.a(2131166342, 0);
        setResult(0);
        finish();
      }
      do
      {
        return;
        if ((paramArrayOfString.containsKey(PermissionGroup.STORAGE)) && (!((Boolean)paramArrayOfString.get(PermissionGroup.STORAGE)).booleanValue()))
        {
          as.a(2131166342, 0);
          setResult(0);
          finish();
          return;
        }
      } while (paramArrayOfString.size() <= 0);
      recreate();
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    g = ((File)paramBundle.getSerializable("saved_file"));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (d != null) {
      paramBundle.putInt("CameraId", d.a());
    }
    paramBundle.putSerializable("saved_file", g);
  }
  
  public void onSupportContentChanged()
  {
    super.onSupportContentChanged();
    View localView;
    if ((k.a(this, new PermissionGroup[] { PermissionGroup.CAMERA, PermissionGroup.STORAGE })) && (findViewById(2131689955) != null))
    {
      b = ((YelpSurfaceView)findViewById(2131689955));
      b.setCameraWrangler(d);
      c = findViewById(2131689958);
      c.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          TakePhoto.a(TakePhoto.this).d();
        }
      });
      localView = findViewById(2131689960);
      localView.setVisibility(8);
      a(localView);
      c();
      d();
      e();
      localView = findViewById(2131689957);
      if ((ActivityMediaContributionDelegate.a(getIntent())) && (Features.video_capture.isEnabled()))
      {
        localView.setVisibility(0);
        localView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            TakePhoto.a(TakePhoto.this).c();
            startActivityForResult(ActivityVideoCapture.a(TakePhoto.this, TakePhoto.b(TakePhoto.this)), 1063);
          }
        });
      }
    }
    else
    {
      return;
    }
    localView.setVisibility(8);
  }
  
  private class a
    implements a
  {
    private a() {}
    
    public void a(CameraWrangler paramCameraWrangler)
    {
      TakePhoto.e(TakePhoto.this).setEnabled(true);
      EnumSet localEnumSet = paramCameraWrangler.e();
      ImageView localImageView = (ImageView)findViewById(2131689961);
      localImageView.setImageLevel(paramCameraWrangler.g().ordinal());
      if (localEnumSet.size() > 1) {}
      for (int i = 0;; i = 8)
      {
        localImageView.setVisibility(i);
        findViewById(2131689914).setVisibility(0);
        findViewById(2131689961).setVisibility(0);
        findViewById(2131689960).setVisibility(0);
        return;
      }
    }
    
    public void a(CameraWrangler paramCameraWrangler, File paramFile)
    {
      if (paramFile == null)
      {
        setResult(4, getIntent());
        finish();
        return;
      }
      paramCameraWrangler = getAppData().r().c();
      if (paramCameraWrangler != null) {}
      for (;;)
      {
        try
        {
          ExifInterface localExifInterface = new ExifInterface(paramFile.getAbsolutePath());
          double d1 = paramCameraWrangler.getLatitude();
          double d2 = paramCameraWrangler.getLongitude();
          if (d1 <= 0.0D) {
            continue;
          }
          paramCameraWrangler = "N";
          localExifInterface.setAttribute("GPSLatitudeRef", paramCameraWrangler);
          localExifInterface.setAttribute("GPSLatitude", Location.convert(Math.abs(d1), 2));
          if (d1 <= 0.0D) {
            continue;
          }
          paramCameraWrangler = "E";
          localExifInterface.setAttribute("GPSLatitudeRef", paramCameraWrangler);
          localExifInterface.setAttribute("GPSLatitude", Location.convert(Math.abs(d2), 2));
          localExifInterface.saveAttributes();
        }
        catch (IOException paramCameraWrangler)
        {
          Log.e("EXIF", "There was an issue with the Exif Tags ", paramCameraWrangler);
          continue;
        }
        TakePhoto.a(TakePhoto.this, paramFile);
        startActivityForResult(PreviewPhoto.a(getApplicationContext(), paramFile, true, getText(2131166468), getText(2131166763)), 1045);
        return;
        paramCameraWrangler = "S";
        continue;
        paramCameraWrangler = "W";
      }
    }
    
    public void b(CameraWrangler paramCameraWrangler)
    {
      TakePhoto.e(TakePhoto.this).setEnabled(false);
    }
    
    public void c(CameraWrangler paramCameraWrangler)
    {
      findViewById(2131689914).setVisibility(8);
      findViewById(2131689961).setVisibility(8);
      findViewById(2131689960).setVisibility(8);
    }
    
    public void d(CameraWrangler paramCameraWrangler) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.TakePhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */