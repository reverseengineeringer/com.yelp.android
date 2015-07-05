package com.yelp.android.ui.activities.videotrim;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.TextureView.SurfaceTextureListener;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.LocalVideo;
import com.yelp.android.ui.activities.camera.TakePhoto;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.CommonLoadingSpinner;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.widgets.SquareTextureView;
import java.io.File;

@TargetApi(14)
public class ActivityVideoTrim
  extends YelpActivity
  implements j
{
  private BetterMediaPlayer a;
  private LocalVideo b;
  private VideoTrimTimelineView c;
  private SquareTextureView d;
  private ImageView e;
  private PanelLoading f;
  private final TextureView.SurfaceTextureListener g = new c(this);
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, ActivityVideoTrim.class);
    paramContext.putExtra("extra.video_file_path", paramString1);
    paramContext.putExtra("extra.business_id", paramString2);
    return paramContext;
  }
  
  private LocalVideo a(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    for (paramBundle = getIntent().getStringExtra("extra.video_file_path");; paramBundle = paramBundle.getString("extra.video_file_path"))
    {
      paramBundle = LocalVideo.fromFile(paramBundle, getIntent().getStringExtra("extra.business_id"));
      if (paramBundle == null) {
        finish();
      }
      return paramBundle;
    }
  }
  
  public void a(BetterMediaPlayer.PlayerState paramPlayerState1, BetterMediaPlayer.PlayerState paramPlayerState2)
  {
    if (BetterMediaPlayer.PlayerState.FROZEN_AND_WAITING.equals(paramPlayerState2))
    {
      i = a.getCurrentPosition();
      j = a.a();
      if ((f.getVisibility() != 0) && (i - j >= cw.a)) {
        f.post(new a(this));
      }
    }
    while ((!BetterMediaPlayer.PlayerState.NORMAL.equals(paramPlayerState2)) || (f.getVisibility() == 4))
    {
      int i;
      int j;
      return;
    }
    f.post(new b(this));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessVideoTrim;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = a(paramBundle);
    if (b == null) {
      return;
    }
    setContentView(2130903117);
    c = ((VideoTrimTimelineView)findViewById(2131493306));
    c.setLocalVideo(b);
    d = ((SquareTextureView)findViewById(2131493307));
    d.a(b.getWidth(), b.getHeight());
    d.setSurfaceTextureListener(g);
    e = ((ImageView)findViewById(2131493308));
    f = ((PanelLoading)findViewById(2131493309));
    f.setSpinner(CommonLoadingSpinner.DEFAULT);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755032, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (a != null)
    {
      a.stop();
      a.release();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    setResult(-1, TakePhoto.a(new File(b.getFilePath()), ImageInputHelper.ImageSource.GALLERY, true, c.getTrimBegin(), c.getTrimEnd()));
    finish();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    if (a != null)
    {
      a.pause();
      c.a();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (a != null)
    {
      a.start();
      c.a(a);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("extra.video_file_path", b.getFilePath());
    paramBundle.putString("extra.business_id", b.getBusinessId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.ActivityVideoTrim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */