package com.brightcove.player.display;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.util.ErrorUtil;

@Emits(events={})
@ListensFor(events={"cuePoint", "didPlay", "didSeekTo", "setVideoStill", "willInterruptContent"})
public class VideoStillDisplayComponent
  extends AbstractComponent
  implements Component
{
  public static final String TAG = VideoStillDisplayComponent.class.getSimpleName();
  private int cuePointListenerToken;
  private int didPlayListenerToken;
  private int didSeekToListenerToken;
  private LoadImageTask task;
  private ImageView view;
  private int willInterruptContentListenerToken;
  
  public VideoStillDisplayComponent(ImageView paramImageView, EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, VideoStillDisplayComponent.class);
    if (paramImageView == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("imageViewRequired"));
    }
    view = paramImageView;
    addListener("setVideoStill", new VideoStillDisplayComponent.OnSetVideoStill(this, null));
  }
  
  private void recycle()
  {
    Drawable localDrawable = view.getDrawable();
    if ((localDrawable != null) && ((localDrawable instanceof BitmapDrawable))) {
      ((BitmapDrawable)localDrawable).getBitmap().recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoStillDisplayComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */