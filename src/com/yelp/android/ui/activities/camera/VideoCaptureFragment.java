package com.yelp.android.ui.activities.camera;

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
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.g;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery;
import com.yelp.android.ui.activities.media.b;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.PieProgress;
import com.yelp.android.ui.widgets.SquareTextureView;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.d;
import com.yelp.android.util.e;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class VideoCaptureFragment
  extends YelpFragment
{
  private SquareTextureView a;
  private PieProgress b;
  private Button c;
  private Camera d;
  private MediaRecorder e;
  private boolean f;
  private boolean g = true;
  private long i = 0L;
  private int j;
  private String k;
  private String l;
  private boolean m;
  private b n;
  private g o;
  private final TextureView.SurfaceTextureListener p = new VideoCaptureFragment.5(this);
  private final Runnable q = new VideoCaptureFragment.6(this);
  
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
    startActivityForResult(ActivityChooseFromGallery.a(getActivity(), MediaStoreUtil.MediaType.VIDEO, false, false, l), 1032);
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
    paramImageView.setOnClickListener(new VideoCaptureFragment.3(this));
    o = Features.video_upload_from_gallery.isEnabledAsync(getActivity(), new VideoCaptureFragment.4(this, paramImageView));
  }
  
  private void b()
  {
    g = true;
    b.b();
    c.setBackgroundResource(2130838952);
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
  
  private void f()
  {
    getActivity().setRequestedOrientation(4);
  }
  
  private void g()
  {
    File localFile = e.d();
    if (localFile == null)
    {
      AlertDialogFragment.a(null, getString(2131166743)).show(getFragmentManager(), null);
      return;
    }
    k = localFile.getAbsolutePath();
    c();
    b.postDelayed(q, 120L);
    h();
    c.setBackgroundResource(2130838953);
    i = System.currentTimeMillis();
  }
  
  private void h()
  {
    e = new MediaRecorder();
    d.unlock();
    e.setCamera(d);
    e.setAudioSource(5);
    e.setVideoSource(1);
    CamcorderProfile localCamcorderProfile = m();
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
      f = true;
      return;
    }
    catch (IOException localIOException)
    {
      YelpLog.remoteError(localIOException);
    }
  }
  
  private void i()
  {
    b.removeCallbacks(q);
    j();
    g = true;
    if (b.getProgress() < 25)
    {
      k();
      AlertDialogFragment.a(null, getString(2131166790)).show(getFragmentManager(), null);
      b();
    }
    for (;;)
    {
      f();
      return;
      ((a)getActivity()).a(k);
    }
  }
  
  private void j()
  {
    f = false;
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
        YelpLog.remoteError("VideoCapture", "MediaRecorder.stop() failed at " + (System.currentTimeMillis() - i) + "ms", localRuntimeException);
      }
    }
  }
  
  private void k()
  {
    if (k != null) {
      new File(k).delete();
    }
  }
  
  private CamcorderProfile m()
  {
    if (CamcorderProfile.hasProfile(5)) {
      return CamcorderProfile.get(5);
    }
    return CamcorderProfile.get(1);
  }
  
  public a getIri()
  {
    return ViewIri.BusinessVideoCapture;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = new HashMap(1);
    parama.put("id", l);
    return parama;
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
    d.a(paramIntent, "extra_media_source", ImageInputHelper.ImageSource.GALLERY);
    localFragmentActivity.setResult(paramInt2, paramIntent);
    localFragmentActivity.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    k.a(this, 250, new PermissionGroup[] { PermissionGroup.CAMERA, PermissionGroup.STORAGE, PermissionGroup.MICROPHONE });
    paramBundle = getArguments();
    l = paramBundle.getString("business_id");
    m = paramBundle.getBoolean("started_from_gallery");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903257, paramViewGroup, false);
    a = ((SquareTextureView)paramLayoutInflater.findViewById(2131689963));
    b = ((PieProgress)paramLayoutInflater.findViewById(2131690308));
    c = ((Button)paramLayoutInflater.findViewById(2131690309));
    paramViewGroup = (ImageView)paramLayoutInflater.findViewById(2131690310);
    a.setSurfaceTextureListener(p);
    c.setOnTouchListener(new VideoCaptureFragment.1(this));
    if (m) {
      paramViewGroup.setVisibility(8);
    }
    paramViewGroup.setOnClickListener(new VideoCaptureFragment.2(this));
    a((ImageView)paramLayoutInflater.findViewById(2131689959));
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    ar.b(getActivity());
    if (f)
    {
      b.removeCallbacks(q);
      j();
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
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.CAMERA)) && (!((Boolean)paramArrayOfString.get(PermissionGroup.CAMERA)).booleanValue()))
      {
        as.a(2131166342, 0);
        getActivity().setResult(0);
        getActivity().finish();
      }
      do
      {
        return;
        if ((paramArrayOfString.containsKey(PermissionGroup.STORAGE)) && (!((Boolean)paramArrayOfString.get(PermissionGroup.STORAGE)).booleanValue()))
        {
          as.a(2131166342, 0);
          getActivity().setResult(0);
          getActivity().finish();
          return;
        }
        if ((paramArrayOfString.containsKey(PermissionGroup.MICROPHONE)) && (!((Boolean)paramArrayOfString.get(PermissionGroup.MICROPHONE)).booleanValue()))
        {
          as.a(2131166342, 0);
          getActivity().setResult(0);
          getActivity().finish();
          return;
        }
      } while (paramArrayOfString.size() <= 0);
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    super.onResume();
    ar.a(getActivity());
    if (!k.a(getActivity(), new PermissionGroup[] { PermissionGroup.CAMERA, PermissionGroup.STORAGE, PermissionGroup.MICROPHONE })) {
      b();
    }
    if (a.isAvailable()) {
      p.onSurfaceTextureAvailable(a.getSurfaceTexture(), a.getWidth(), a.getHeight());
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (o != null) {
      o.cancel(true);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.VideoCaptureFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */