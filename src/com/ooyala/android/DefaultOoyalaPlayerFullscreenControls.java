package com.ooyala.android;

import android.annotation.TargetApi;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import java.util.Observable;
import java.util.Observer;

public class DefaultOoyalaPlayerFullscreenControls
  extends AbstractDefaultOoyalaPlayerControls
  implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, Observer
{
  private static final int OVERLAY_BACKGROUND_COLOR = Color.argb(200, 0, 0, 0);
  private static final int OVERLAY_MARGIN_SIZE_DP = 10;
  private static final int OVERLAY_PREFERRED_BUTTON_HEIGHT_DP = 42;
  private static final int OVERLAY_PREFERRED_BUTTON_WIDTH_DP = 48;
  private static final float OVERLAY_SCALE = 1.2F;
  private LinearLayout _bottomOverlay = null;
  private TextView _currTime = null;
  private TextView _duration = null;
  private AbstractDefaultOoyalaPlayerControls.FullscreenButton _fullscreen = null;
  private boolean _fullscreenButtonShowing = true;
  private TextView _liveIndicator = null;
  private LinearLayout _liveWrapper = null;
  private AbstractDefaultOoyalaPlayerControls.NextButton _next = null;
  private AbstractDefaultOoyalaPlayerControls.PlayPauseButton _playPause = null;
  private AbstractDefaultOoyalaPlayerControls.PreviousButton _previous = null;
  private SeekBar _seek = null;
  private LinearLayout _seekWrapper = null;
  private boolean _seeking;
  private ProgressBar _spinner = null;
  private LinearLayout _topBar = null;
  private boolean _wasPlaying;
  
  public DefaultOoyalaPlayerFullscreenControls(OoyalaPlayer paramOoyalaPlayer, OoyalaPlayerLayout paramOoyalaPlayerLayout)
  {
    setParentLayout(paramOoyalaPlayerLayout);
    setOoyalaPlayer(paramOoyalaPlayer);
    setupControls();
  }
  
  public int bottomBarOffset()
  {
    if (_baseLayout == null) {
      return 0;
    }
    return Images.dpToPixels(_baseLayout.getContext(), 82);
  }
  
  public void onClick(View paramView)
  {
    boolean bool = true;
    int j = 0;
    int i = 0;
    if (paramView == _previous)
    {
      paramView = _player;
      if (_player.isPlaying()) {
        paramView.previousVideo(i);
      }
    }
    do
    {
      return;
      i = 1;
      break;
      if (paramView == _next)
      {
        paramView = _player;
        if (_player.isPlaying()) {}
        for (i = j;; i = 1)
        {
          paramView.nextVideo(i);
          return;
        }
      }
      if (paramView == _playPause)
      {
        if (_player.isPlaying()) {
          _player.pause();
        }
        for (;;)
        {
          show();
          return;
          _player.play();
        }
      }
    } while ((paramView != _fullscreen) || (!_isPlayerReady));
    paramView = _player;
    if (!_player.isFullscreen()) {}
    for (;;)
    {
      paramView.setFullscreen(bool);
      updateButtonStates();
      hide();
      return;
      bool = false;
    }
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && (_player.getSeekStyle() == OoyalaPlayer.SeekStyle.ENHANCED))
    {
      _player.seekToPercent(paramInt);
      update(null, null);
    }
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    _seeking = true;
    _wasPlaying = _player.isPlaying();
    _player.pause();
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    _player.seekToPercent(paramSeekBar.getProgress());
    update(null, null);
    _seeking = false;
    if (_wasPlaying) {
      _player.play();
    }
  }
  
  public void setFullscreenButtonShowing(boolean paramBoolean)
  {
    _fullscreenButtonShowing = paramBoolean;
  }
  
  protected void setupControls()
  {
    if (_layout == null) {
      return;
    }
    _baseLayout = new FrameLayout(_layout.getContext());
    _baseLayout.setBackgroundColor(0);
    _bottomOverlay = new LinearLayout(_baseLayout.getContext());
    _bottomOverlay.setOrientation(0);
    _bottomOverlay.setBackgroundColor(OVERLAY_BACKGROUND_COLOR);
    _previous = new AbstractDefaultOoyalaPlayerControls.PreviousButton(this, _bottomOverlay.getContext());
    Object localObject = new LinearLayout.LayoutParams(Images.dpToPixels(_baseLayout.getContext(), 48), Images.dpToPixels(_baseLayout.getContext(), 42));
    leftMargin = Images.dpToPixels(_baseLayout.getContext(), 20);
    rightMargin = Images.dpToPixels(_baseLayout.getContext(), 0);
    topMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    bottomMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    _previous.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _previous.setOnClickListener(this);
    _playPause = new AbstractDefaultOoyalaPlayerControls.PlayPauseButton(this, _bottomOverlay.getContext());
    _playPause.setPlaying(_player.isPlaying());
    localObject = new LinearLayout.LayoutParams(Images.dpToPixels(_baseLayout.getContext(), 48), Images.dpToPixels(_baseLayout.getContext(), 42));
    leftMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    rightMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    topMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    bottomMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    _playPause.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _playPause.setOnClickListener(this);
    _next = new AbstractDefaultOoyalaPlayerControls.NextButton(this, _bottomOverlay.getContext());
    localObject = new LinearLayout.LayoutParams(Images.dpToPixels(_baseLayout.getContext(), 48), Images.dpToPixels(_baseLayout.getContext(), 42));
    leftMargin = Images.dpToPixels(_baseLayout.getContext(), 0);
    rightMargin = Images.dpToPixels(_baseLayout.getContext(), 20);
    topMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    bottomMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    _next.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _next.setOnClickListener(this);
    _bottomOverlay.addView(_previous);
    _bottomOverlay.addView(_playPause);
    _bottomOverlay.addView(_next);
    localObject = new FrameLayout.LayoutParams(-2, -2, 81);
    bottomMargin = Images.dpToPixels(_baseLayout.getContext(), 10);
    _baseLayout.addView(_bottomOverlay, (ViewGroup.LayoutParams)localObject);
    _topBar = new LinearLayout(_baseLayout.getContext());
    _topBar.setOrientation(0);
    _topBar.setBackgroundDrawable(Images.gradientBackground(GradientDrawable.Orientation.TOP_BOTTOM));
    _seekWrapper = new LinearLayout(_topBar.getContext());
    _seekWrapper.setOrientation(0);
    _currTime = new TextView(_seekWrapper.getContext());
    _currTime.setText("00:00:00");
    localObject = new LinearLayout.LayoutParams(-2, -2);
    gravity = 19;
    _currTime.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _seek = new SeekBar(_seekWrapper.getContext());
    localObject = new LinearLayout.LayoutParams(0, -2, 1.0F);
    gravity = 17;
    leftMargin = Images.dpToPixels(_baseLayout.getContext(), 5);
    rightMargin = Images.dpToPixels(_baseLayout.getContext(), 5);
    _seek.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _seek.setOnSeekBarChangeListener(this);
    _duration = new TextView(_seekWrapper.getContext());
    _duration.setText("00:00:00");
    localObject = new LinearLayout.LayoutParams(-2, -2);
    gravity = 21;
    _duration.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _seekWrapper.addView(_currTime);
    _seekWrapper.addView(_seek);
    _seekWrapper.addView(_duration);
    localObject = new LinearLayout.LayoutParams(0, -2, 1.0F);
    gravity = 17;
    leftMargin = Images.dpToPixels(_baseLayout.getContext(), 5);
    rightMargin = Images.dpToPixels(_baseLayout.getContext(), 5);
    _seekWrapper.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _liveWrapper = new LinearLayout(_topBar.getContext());
    _liveWrapper.setVisibility(8);
    _liveWrapper.setOrientation(0);
    _liveIndicator = new TextView(_liveWrapper.getContext());
    _liveIndicator.setText(LocalizationSupport.localizedStringFor("LIVE"));
    _liveIndicator.setGravity(1);
    localObject = new LinearLayout.LayoutParams(-1, -2);
    gravity = 17;
    _liveIndicator.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _liveWrapper.addView(_liveIndicator);
    localObject = new LinearLayout.LayoutParams(0, -2, 1.0F);
    gravity = 17;
    leftMargin = Images.dpToPixels(_baseLayout.getContext(), 45);
    rightMargin = Images.dpToPixels(_baseLayout.getContext(), 5);
    _liveWrapper.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _fullscreen = new AbstractDefaultOoyalaPlayerControls.FullscreenButton(this, _topBar.getContext());
    _fullscreen.setFullscreen(_player.isFullscreen());
    localObject = new LinearLayout.LayoutParams(Images.dpToPixels(_baseLayout.getContext(), 35), Images.dpToPixels(_baseLayout.getContext(), 35));
    leftMargin = 2;
    rightMargin = 2;
    _fullscreen.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _fullscreen.setOnClickListener(this);
    _topBar.addView(_seekWrapper);
    _topBar.addView(_liveWrapper);
    _topBar.addView(_fullscreen);
    localObject = new FrameLayout.LayoutParams(-1, -2, 49);
    _baseLayout.addView(_topBar, (ViewGroup.LayoutParams)localObject);
    localObject = new FrameLayout.LayoutParams(-1, -1);
    _layout.addView(_baseLayout, (ViewGroup.LayoutParams)localObject);
    hide();
    _spinner = new ProgressBar(_layout.getContext());
    localObject = new FrameLayout.LayoutParams(-2, -2, 17);
    _layout.addView(_spinner, (ViewGroup.LayoutParams)localObject);
  }
  
  public int topBarOffset()
  {
    return Images.dpToPixels(_baseLayout.getContext(), 35);
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    if ((_seek != null) && (!_seeking))
    {
      _seek.setProgress(_player.getPlayheadPercentage());
      _seek.setSecondaryProgress(_player.getBufferPercentage());
    }
    boolean bool;
    if (_player.getDuration() >= 3600000)
    {
      bool = true;
      _duration.setText(Utils.timeStringFromMillis(_player.getDuration(), bool));
      _currTime.setText(Utils.timeStringFromMillis(_player.getPlayheadTime(), bool));
      if (paramObject == "adStarted")
      {
        _isPlayerReady = true;
        updateButtonStates();
      }
      if ((paramObject == "adCompleted") || (paramObject == "adSkipped") || (paramObject == "adError"))
      {
        _isPlayerReady = false;
        updateButtonStates();
      }
      if (paramObject == "stateChanged")
      {
        paramObservable = _player.getState();
        updateButtonStates();
        if (((paramObservable != OoyalaPlayer.State.INIT) && (paramObservable != OoyalaPlayer.State.LOADING)) || (!_isVisible)) {
          break label284;
        }
        _spinner.setVisibility(0);
      }
    }
    for (;;)
    {
      if ((paramObservable == OoyalaPlayer.State.READY) || (paramObservable == OoyalaPlayer.State.PLAYING) || (paramObservable == OoyalaPlayer.State.PAUSED)) {
        _isPlayerReady = true;
      }
      if (paramObservable == OoyalaPlayer.State.SUSPENDED)
      {
        _isPlayerReady = false;
        hide();
      }
      if ((!isShowing()) && (paramObservable != OoyalaPlayer.State.INIT) && (paramObservable != OoyalaPlayer.State.LOADING) && (paramObservable != OoyalaPlayer.State.ERROR) && (paramObservable != OoyalaPlayer.State.SUSPENDED) && (_player.isFullscreen())) {
        show();
      }
      return;
      bool = false;
      break;
      label284:
      _spinner.setVisibility(4);
    }
  }
  
  @TargetApi(11)
  protected void updateButtonStates()
  {
    int j = 0;
    if (_playPause != null) {
      _playPause.setPlaying(_player.isPlaying());
    }
    Object localObject;
    int i;
    if (_fullscreen != null)
    {
      _fullscreen.setFullscreen(_player.isFullscreen());
      localObject = _fullscreen;
      if (_fullscreenButtonShowing)
      {
        i = 0;
        ((AbstractDefaultOoyalaPlayerControls.FullscreenButton)localObject).setVisibility(i);
      }
    }
    else
    {
      if ((_seekWrapper != null) && (_player.getCurrentItem() != null))
      {
        if (!_player.getCurrentItem().isLive()) {
          break label189;
        }
        _seekWrapper.setVisibility(8);
      }
      if ((_liveWrapper != null) && (_player.getCurrentItem() != null))
      {
        localObject = _liveWrapper;
        if (!_player.getCurrentItem().isLive()) {
          break label232;
        }
        i = j;
        label142:
        ((LinearLayout)localObject).setVisibility(i);
        if (Build.VERSION.SDK_INT >= 11)
        {
          localObject = _liveWrapper;
          if (!_player.isShowingAd()) {
            break label238;
          }
        }
      }
    }
    label189:
    label232:
    label238:
    for (float f = 0.4F;; f = 1.0F)
    {
      ((LinearLayout)localObject).setAlpha(f);
      return;
      i = 8;
      break;
      _seekWrapper.setVisibility(0);
      localObject = _seekWrapper;
      if (!_player.isAdPlaying()) {}
      for (boolean bool = true;; bool = false)
      {
        ((LinearLayout)localObject).setEnabled(bool);
        break;
      }
      i = 8;
      break label142;
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.DefaultOoyalaPlayerFullscreenControls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */