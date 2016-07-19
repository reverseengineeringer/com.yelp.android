package com.yelp.android.ui.activities.videotrim;

import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
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
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.widgets.SquareTextureView;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.io.IOException;

public class ActivityVideoTrim
  extends YelpActivity
  implements BetterMediaPlayer.b
{
  private BetterMediaPlayer a;
  private LocalVideo b;
  private VideoTrimTimelineView c;
  private SquareTextureView d;
  private ImageView e;
  private PanelLoading f;
  private final TextureView.SurfaceTextureListener g = new c()
  {
    public void onSurfaceTextureAvailable(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      try
      {
        ActivityVideoTrim.a(ActivityVideoTrim.this, new BetterMediaPlayer());
        ActivityVideoTrim.c(ActivityVideoTrim.this).setDataSource(ActivityVideoTrim.b(ActivityVideoTrim.this).e());
        ActivityVideoTrim.c(ActivityVideoTrim.this).a(ActivityVideoTrim.d(ActivityVideoTrim.this), ActivityVideoTrim.e(ActivityVideoTrim.this));
        ActivityVideoTrim.c(ActivityVideoTrim.this).a(ActivityVideoTrim.this);
        ActivityVideoTrim.c(ActivityVideoTrim.this).prepareAsync();
        ActivityVideoTrim.c(ActivityVideoTrim.this).setOnPreparedListener(new MediaPlayer.OnPreparedListener()
        {
          public void onPrepared(MediaPlayer paramAnonymous2MediaPlayer)
          {
            ActivityVideoTrim.c(ActivityVideoTrim.this).start();
            ActivityVideoTrim.f(ActivityVideoTrim.this).a(ActivityVideoTrim.c(ActivityVideoTrim.this));
          }
        });
        return;
      }
      catch (IOException paramAnonymousSurfaceTexture)
      {
        YelpLog.e("ActivityVideoTrim", "Media player cannot open " + ActivityVideoTrim.b(ActivityVideoTrim.this).e(), paramAnonymousSurfaceTexture);
      }
    }
  };
  
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
      paramBundle = LocalVideo.a(paramBundle, getIntent().getStringExtra("extra.business_id"));
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
      if ((f.getVisibility() != 0) && (i - j >= av.a)) {
        f.post(new Runnable()
        {
          public void run()
          {
            ActivityVideoTrim.a(ActivityVideoTrim.this).b();
            ActivityVideoTrim.a(ActivityVideoTrim.this).setVisibility(0);
          }
        });
      }
    }
    while ((!BetterMediaPlayer.PlayerState.NORMAL.equals(paramPlayerState2)) || (f.getVisibility() == 4))
    {
      int i;
      int j;
      return;
    }
    f.post(new Runnable()
    {
      public void run()
      {
        ActivityVideoTrim.a(ActivityVideoTrim.this).setVisibility(4);
        ActivityVideoTrim.a(ActivityVideoTrim.this).c();
      }
    });
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
    setContentView(2130903126);
    c = ((VideoTrimTimelineView)findViewById(2131689962));
    c.setLocalVideo(b);
    d = ((SquareTextureView)findViewById(2131689963));
    d.a(b.b(), b.a());
    d.setSurfaceTextureListener(g);
    e = ((ImageView)findViewById(2131689964));
    f = ((PanelLoading)findViewById(2131689965));
    f.setSpinner(CommonLoadingSpinner.DEFAULT);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755042, paramMenu);
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
    setResult(-1, TakePhoto.a(new File(b.e()), ImageInputHelper.ImageSource.GALLERY, true, c.getTrimBegin(), c.getTrimEnd()));
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
    paramBundle.putString("extra.video_file_path", b.e());
    paramBundle.putString("extra.business_id", b.d());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.ActivityVideoTrim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */