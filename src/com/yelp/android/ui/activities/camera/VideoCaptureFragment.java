package com.yelp.android.ui.activities.camera;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBar;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.Features;
import com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery;
import com.yelp.android.ui.activities.media.d;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.ui.widgets.PieProgress;
import com.yelp.android.ui.widgets.SquareTextureView;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.f;
import com.yelp.android.util.l;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@TargetApi(14)
public class VideoCaptureFragment
  extends YelpFragment
{
  private SquareTextureView a;
  private PieProgress b;
  private Button c;
  private Camera d;
  private MediaRecorder e;
  private boolean g;
  private boolean h = true;
  private long i = 0L;
  private int j;
  private String k;
  private String l;
  private boolean m;
  private d n;
  private final TextureView.SurfaceTextureListener o = new v(this);
  private final Runnable p = new w(this);
  
  public static VideoCaptureFragment a(String paramString, boolean paramBoolean)
  {
    VideoCaptureFragment localVideoCaptureFragment = new VideoCaptureFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("business_id", paramString);
    localBundle.putBoolean("started_from_gallery", paramBoolean);
    localVideoCaptureFragment.setArguments(localBundle);
    return localVideoCaptureFragment;
  }
  
  private void a()
  {
    if (m)
    {
      getActivity().finish();
      return;
    }
    startActivityForResult(ActivityChooseFromGallery.a(getActivity(), MediaStoreUtil.MediaType.VIDEO, false, false, l), 1029);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i1;
    if (j % 180 == 0)
    {
      i1 = paramInt2;
      paramInt2 = paramInt1;
    }
    for (;;)
    {
      a.a(paramInt2, i1);
      return;
      i1 = paramInt1;
    }
  }
  
  private void a(ImageView paramImageView)
  {
    paramImageView.setOnClickListener(new t(this));
    Features.video_upload_from_gallery.isEnabledAsync(getActivity(), new u(this, paramImageView));
  }
  
  private void b()
  {
    h = true;
    b.b();
    c.setBackgroundResource(2130838533);
  }
  
  private void c()
  {
    int i2 = 1;
    int i3 = getActivity().getWindowManager().getDefaultDisplay().getRotation();
    int i1;
    if (getActivitygetResourcesgetConfigurationorientation == 1)
    {
      i1 = i2;
      if (i3 != 0)
      {
        if (i3 != 3) {
          break label57;
        }
        i1 = i2;
      }
    }
    for (;;)
    {
      getActivity().setRequestedOrientation(i1);
      return;
      label57:
      i1 = 9;
      continue;
      if ((i3 == 0) || (i3 == 1)) {
        i1 = 0;
      } else {
        i1 = 8;
      }
    }
  }
  
  private void e()
  {
    getActivity().setRequestedOrientation(4);
  }
  
  private void f()
  {
    File localFile = l.d();
    if (localFile == null)
    {
      AlertDialogFragment.a(null, getString(2131166763)).show(getFragmentManager(), null);
      return;
    }
    k = localFile.getAbsolutePath();
    c();
    b.postDelayed(p, 120L);
    g();
    c.setBackgroundResource(2130838534);
    i = System.currentTimeMillis();
  }
  
  private void g()
  {
    e = new MediaRecorder();
    d.unlock();
    e.setCamera(d);
    e.setAudioSource(5);
    e.setVideoSource(1);
    CamcorderProfile localCamcorderProfile = l();
    fileFormat = 2;
    videoCodec = 2;
    e.setProfile(localCamcorderProfile);
    e.setOutputFile(k);
    e.setOrientationHint(j);
    try
    {
      e.prepare();
      e.start();
      a(videoFrameWidth, videoFrameHeight);
      g = true;
      return;
    }
    catch (IOException localIOException)
    {
      YelpLog.error(localIOException);
    }
  }
  
  private void h()
  {
    b.removeCallbacks(p);
    i();
    h = true;
    if (b.getProgress() < 25)
    {
      k();
      AlertDialogFragment.a(null, getString(2131166826)).show(getFragmentManager(), null);
      b();
    }
    for (;;)
    {
      e();
      return;
      ((x)getActivity()).a(k);
    }
  }
  
  private void i()
  {
    g = false;
    try
    {
      e.stop();
      e.reset();
      e.release();
      e = null;
      d.lock();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        k();
        YelpLog.error("VideoCapture", "MediaRecorder.stop() failed at " + (System.currentTimeMillis() - i) + "ms", localRuntimeException);
      }
    }
  }
  
  private void k()
  {
    if (k != null) {
      new File(k).delete();
    }
  }
  
  private CamcorderProfile l()
  {
    if (CamcorderProfile.hasProfile(5)) {
      return CamcorderProfile.get(5);
    }
    return CamcorderProfile.get(1);
  }
  
  public b getIri()
  {
    return ViewIri.BusinessVideoCapture;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new HashMap(1);
    paramb.put("id", l);
    return paramb;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    ((YelpActivity)getActivity()).getSupportActionBar().e();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    FragmentActivity localFragmentActivity = getActivity();
    f.a(paramIntent, "extra_media_source", ImageInputHelper.ImageSource.GALLERY);
    localFragmentActivity.setResult(paramInt2, paramIntent);
    localFragmentActivity.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    l = paramBundle.getString("business_id");
    m = paramBundle.getBoolean("started_from_gallery");
    j = CameraWrangler.a(getActivity().getWindowManager().getDefaultDisplay(), 0);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903229, paramViewGroup, false);
    a = ((SquareTextureView)paramLayoutInflater.findViewById(2131493307));
    b = ((PieProgress)paramLayoutInflater.findViewById(2131493597));
    c = ((Button)paramLayoutInflater.findViewById(2131493598));
    paramViewGroup = (ImageView)paramLayoutInflater.findViewById(2131493599);
    a.setSurfaceTextureListener(o);
    c.setOnTouchListener(new r(this));
    if (m) {
      paramViewGroup.setVisibility(8);
    }
    paramViewGroup.setOnClickListener(new s(this));
    a((ImageView)paramLayoutInflater.findViewById(2131493303));
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    if (g)
    {
      b.removeCallbacks(p);
      i();
      k();
    }
    if (d != null)
    {
      d.setPreviewCallback(null);
      d.stopPreview();
      d.release();
      d = null;
    }
    if ((n != null) && (n.getStatus() != AsyncTask.Status.FINISHED)) {
      n.cancel(false);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    b();
    if (a.isAvailable()) {
      o.onSurfaceTextureAvailable(a.getSurfaceTexture(), a.getWidth(), a.getHeight());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.VideoCaptureFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */