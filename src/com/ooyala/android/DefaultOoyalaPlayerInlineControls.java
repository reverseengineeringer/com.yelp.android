package com.ooyala.android;

import android.annotation.SuppressLint;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Build.VERSION;
import android.util.Log;
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
import java.util.Set;

public class DefaultOoyalaPlayerInlineControls
  extends AbstractDefaultOoyalaPlayerControls
  implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, Observer
{
  private static final String TAG = "DefaultOoyalaPlayerInlineControls";
  private LinearLayout _bottomBar = null;
  private AbstractDefaultOoyalaPlayerControls.ClosedCaptionsButton _closedCaptions = null;
  private TextView _currTime = null;
  private TextView _duration = null;
  private AbstractDefaultOoyalaPlayerControls.FullscreenButton _fullscreen = null;
  private boolean _fullscreenButtonShowing = true;
  private TextView _liveIndicator = null;
  private LinearLayout _liveWrapper = null;
  private AbstractDefaultOoyalaPlayerControls.PlayPauseButton _playPause = null;
  private SeekBar _seek = null;
  private LinearLayout _seekWrapper = null;
  private boolean _seeking;
  private ProgressBar _spinner = null;
  private boolean _wasPlaying;
  
  public DefaultOoyalaPlayerInlineControls(OoyalaPlayer paramOoyalaPlayer, OoyalaPlayerLayout paramOoyalaPlayerLayout)
  {
    setParentLayout(paramOoyalaPlayerLayout);
    setOoyalaPlayer(paramOoyalaPlayer);
    setupControls();
  }
  
  public int bottomBarOffset()
  {
    return 55;
  }
  
  public void onClick(View paramView)
  {
    if (paramView == _playPause) {
      if (_player.isPlaying())
      {
        _player.pause();
        show();
      }
    }
    do
    {
      return;
      _player.play();
      break;
      if ((paramView == _fullscreen) && (_isPlayerReady))
      {
        paramView = _player;
        if (!_player.isFullscreen()) {}
        for (boolean bool = true;; bool = false)
        {
          paramView.setFullscreen(bool);
          updateButtonStates();
          hide();
          return;
        }
      }
    } while (paramView != _closedCaptions);
    _layout.getLayoutController().showClosedCaptionsMenu();
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (_seeking) {
      if (_player.getDuration() < 3600000) {
        break label84;
      }
    }
    label84:
    for (boolean bool = true;; bool = false)
    {
      _currTime.setText(Utils.timeStringFromMillis((int)(paramSeekBar.getProgress() / 100.0F * _player.getDuration()), bool));
      if ((paramBoolean) && (_player.getSeekStyle() == OoyalaPlayer.SeekStyle.ENHANCED))
      {
        _player.seekToPercent(paramInt);
        update(null, null);
      }
      return;
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
    Log.v("DefaultOoyalaPlayerInlineControls", "onStopTrackingTouch(): _wasPlaying=" + _wasPlaying + ", " + "percent=" + paramSeekBar.getProgress());
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
    _bottomBar = new LinearLayout(_baseLayout.getContext());
    _bottomBar.setOrientation(0);
    _bottomBar.setBackgroundDrawable(Images.gradientBackground(GradientDrawable.Orientation.BOTTOM_TOP));
    _playPause = new AbstractDefaultOoyalaPlayerControls.PlayPauseButton(this, _bottomBar.getContext());
    _playPause.setPlaying(_player.isPlaying());
    Object localObject = new ViewGroup.LayoutParams(Images.dpToPixels(_baseLayout.getContext(), 40), Images.dpToPixels(_baseLayout.getContext(), 35));
    _playPause.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _playPause.setOnClickListener(this);
    _seekWrapper = new LinearLayout(_bottomBar.getContext());
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
    _liveWrapper = new LinearLayout(_bottomBar.getContext());
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
    leftMargin = Images.dpToPixels(_baseLayout.getContext(), 5);
    rightMargin = Images.dpToPixels(_baseLayout.getContext(), 5);
    _liveWrapper.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _fullscreen = new AbstractDefaultOoyalaPlayerControls.FullscreenButton(this, _bottomBar.getContext());
    _fullscreen.setFullscreen(_player.isFullscreen());
    localObject = new LinearLayout.LayoutParams(Images.dpToPixels(_baseLayout.getContext(), 35), Images.dpToPixels(_baseLayout.getContext(), 35));
    leftMargin = 2;
    rightMargin = 2;
    _fullscreen.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _fullscreen.setOnClickListener(this);
    _closedCaptions = new AbstractDefaultOoyalaPlayerControls.ClosedCaptionsButton(this, _bottomBar.getContext());
    localObject = new ViewGroup.LayoutParams(Images.dpToPixels(_baseLayout.getContext(), 40), Images.dpToPixels(_baseLayout.getContext(), 35));
    _closedCaptions.setLayoutParams((ViewGroup.LayoutParams)localObject);
    _closedCaptions.setOnClickListener(this);
    _bottomBar.addView(_playPause);
    _bottomBar.addView(_seekWrapper);
    _bottomBar.addView(_liveWrapper);
    _bottomBar.addView(_closedCaptions);
    _bottomBar.addView(_fullscreen);
    localObject = new FrameLayout.LayoutParams(-1, -2, 81);
    _baseLayout.addView(_bottomBar, (ViewGroup.LayoutParams)localObject);
    _spinner = new ProgressBar(_layout.getContext());
    _spinner.setVisibility(4);
    localObject = new FrameLayout.LayoutParams(-2, -2, 17);
    _layout.addView(_spinner, (ViewGroup.LayoutParams)localObject);
    localObject = new FrameLayout.LayoutParams(-1, -1);
    _layout.addView(_baseLayout, (ViewGroup.LayoutParams)localObject);
    hide();
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    if ((_seek != null) && (!_seeking))
    {
      _seek.setProgress(_player.getPlayheadPercentage());
      _seek.setSecondaryProgress(_player.getBufferPercentage());
    }
    boolean bool;
    if ((_duration != null) && (_currTime != null))
    {
      if (_player.getDuration() >= 3600000)
      {
        bool = true;
        _duration.setText(Utils.timeStringFromMillis(_player.getDuration(), bool));
        _currTime.setText(Utils.timeStringFromMillis(_player.getPlayheadTime(), bool));
      }
    }
    else
    {
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
        if ((paramObservable != OoyalaPlayer.State.LOADING) || (!_isVisible)) {
          break label297;
        }
        _spinner.setVisibility(0);
      }
    }
    for (;;)
    {
      if ((paramObservable == OoyalaPlayer.State.READY) || (paramObservable == OoyalaPlayer.State.PLAYING) || (paramObservable == OoyalaPlayer.State.PAUSED)) {
        _isPlayerReady = true;
      }
      if ((paramObservable == OoyalaPlayer.State.SUSPENDED) || (paramObservable == OoyalaPlayer.State.ERROR))
      {
        _isPlayerReady = false;
        hide();
      }
      if ((!isShowing()) && (paramObservable != OoyalaPlayer.State.INIT) && (paramObservable != OoyalaPlayer.State.LOADING) && (paramObservable != OoyalaPlayer.State.ERROR) && (paramObservable != OoyalaPlayer.State.SUSPENDED) && (!_player.isFullscreen())) {
        show();
      }
      return;
      bool = false;
      break;
      label297:
      _spinner.setVisibility(4);
    }
  }
  
  @SuppressLint({"NewApi"})
  protected void updateButtonStates()
  {
    int j = 8;
    if (_playPause != null) {
      _playPause.setPlaying(_player.isPlaying());
    }
    Object localObject;
    label143:
    float f;
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
          break label236;
        }
        _seekWrapper.setVisibility(8);
      }
      if ((_liveWrapper != null) && (_player.getCurrentItem() != null))
      {
        localObject = _liveWrapper;
        if (!_player.getCurrentItem().isLive()) {
          break label279;
        }
        i = 0;
        ((LinearLayout)localObject).setVisibility(i);
        if (Build.VERSION.SDK_INT >= 11)
        {
          localObject = _liveWrapper;
          if (!_player.isShowingAd()) {
            break label285;
          }
          f = 0.4F;
          label177:
          ((LinearLayout)localObject).setAlpha(f);
        }
      }
      if ((_closedCaptions != null) && (_player.getCurrentItem() != null))
      {
        localObject = _closedCaptions;
        if (!_player.getAvailableClosedCaptionsLanguages().isEmpty()) {
          break label290;
        }
      }
    }
    label236:
    label279:
    label285:
    label290:
    for (int i = j;; i = 0)
    {
      ((AbstractDefaultOoyalaPlayerControls.ClosedCaptionsButton)localObject).setVisibility(i);
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
      break label143;
      f = 1.0F;
      break label177;
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.DefaultOoyalaPlayerInlineControls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */