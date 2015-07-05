package com.yelp.android.ui.activities.videotrim;

import android.graphics.Bitmap;
import android.view.TextureView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

class g
  implements Runnable
{
  g(BetterMediaPlayer paramBetterMediaPlayer, Bitmap paramBitmap) {}
  
  public void run()
  {
    fb).getLayoutParams().width = BetterMediaPlayer.d(b).getWidth();
    fb).getLayoutParams().height = BetterMediaPlayer.d(b).getHeight();
    BetterMediaPlayer.f(b).setScaleType(ImageView.ScaleType.MATRIX);
    BetterMediaPlayer.f(b).setImageMatrix(BetterMediaPlayer.d(b).getTransform(null));
    BetterMediaPlayer.f(b).setImageBitmap(a);
    BetterMediaPlayer.f(b).requestLayout();
    BetterMediaPlayer.a(b, 0.0F, 0.0F);
    BetterMediaPlayer.f(b).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */