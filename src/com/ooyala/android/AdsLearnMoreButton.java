package com.ooyala.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class AdsLearnMoreButton
  extends RelativeLayout
{
  private AdMoviePlayer _adPlayer;
  private TextView _learnMore;
  
  public AdsLearnMoreButton(Context paramContext)
  {
    super(paramContext);
  }
  
  @TargetApi(11)
  public AdsLearnMoreButton(Context paramContext, AdMoviePlayer paramAdMoviePlayer, int paramInt)
  {
    super(paramContext);
    _adPlayer = paramAdMoviePlayer;
    _learnMore = new TextView(paramContext);
    _learnMore.setText("Learn More");
    _learnMore.setTextSize(15.0F);
    _learnMore.setTextColor(-16777216);
    _learnMore.setBackgroundColor(-7829368);
    _learnMore.setPadding(20, 20, 20, 20);
    if (Build.VERSION.SDK_INT >= 11) {
      _learnMore.setAlpha(0.7F);
    }
    _learnMore.setOnClickListener(new AdsLearnMoreButton.1(this));
    paramContext = new RelativeLayout.LayoutParams(-2, -2);
    paramContext.addRule(11, -1);
    addView(_learnMore, paramContext);
    setTopMargin(paramInt);
  }
  
  public void destroy()
  {
    removeView(_learnMore);
    _learnMore = null;
  }
  
  public void setTopMargin(int paramInt)
  {
    ((RelativeLayout.LayoutParams)_learnMore.getLayoutParams()).setMargins(0, paramInt, 0, 0);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AdsLearnMoreButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */