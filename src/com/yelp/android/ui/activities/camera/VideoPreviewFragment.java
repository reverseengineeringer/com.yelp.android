package com.yelp.android.ui.activities.camera;

import android.annotation.TargetApi;
import android.app.Activity;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.activities.videotrim.BetterMediaPlayer;
import com.yelp.android.ui.widgets.SquareTextureView;
import com.yelp.android.util.aj;
import java.util.Collections;
import java.util.Map;

@TargetApi(14)
public class VideoPreviewFragment
  extends YelpFragment
{
  private BetterMediaPlayer a;
  private ab b;
  private SquareTextureView c;
  private String d;
  private String e;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private final TextureView.SurfaceTextureListener l = new y(this);
  private final MediaPlayer.OnPreparedListener m = new z(this);
  
  public static VideoPreviewFragment a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, 0, aj.a(paramString1));
  }
  
  public static VideoPreviewFragment a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    VideoPreviewFragment localVideoPreviewFragment = new VideoPreviewFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("video_file_path", paramString1);
    localBundle.putString("business_id", paramString2);
    localBundle.putInt("video_start_time_ms", paramInt1);
    localBundle.putInt("video_end_time_ms", paramInt2);
    localVideoPreviewFragment.setArguments(localBundle);
    return localVideoPreviewFragment;
  }
  
  private void a()
  {
    aj localaj = new aj(d);
    int n = localaj.d();
    int i1 = localaj.c();
    boolean bool = localaj.e();
    localaj.release();
    int i2;
    int i3;
    if (((bool) && (i1 > n)) || ((!bool) && (n > i1)))
    {
      i2 = 1;
      if (i2 == 0) {
        break label87;
      }
      i3 = i1;
      label66:
      k = i3;
      if (i2 == 0) {
        break label93;
      }
    }
    for (;;)
    {
      j = n;
      return;
      i2 = 0;
      break;
      label87:
      i3 = n;
      break label66;
      label93:
      n = i1;
    }
  }
  
  public b getIri()
  {
    return ViewIri.BusinessVideoPreview;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.singletonMap("id", e);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = (YelpActivity)getActivity();
    paramBundle.setTitle(2131166360);
    paramBundle.getSupportActionBar().d();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    b = ((ab)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    d = getArguments().getString("video_file_path");
    g = getArguments().getInt("video_start_time_ms");
    h = getArguments().getInt("video_end_time_ms");
    e = getArguments().getString("business_id");
    if (paramBundle == null) {}
    for (i = g;; i = paramBundle.getInt("play_position"))
    {
      a();
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755045, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903232, paramViewGroup, false);
    c = ((SquareTextureView)paramLayoutInflater.findViewById(2131493307));
    c.a(j, k);
    c.setSurfaceTextureListener(l);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    b = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    b.b();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    if (a != null)
    {
      i = a.getCurrentPosition();
      a.stop();
      a.release();
      a = null;
    }
    if (isRemoving()) {
      b.c();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (a == null) {}
    for (int n = i;; n = a.getCurrentPosition())
    {
      paramBundle.putInt("play_position", n);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.VideoPreviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */