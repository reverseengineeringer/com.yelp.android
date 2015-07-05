package com.yelp.android.ui.activities.photoviewer;

import com.ooyala.android.AbstractDefaultOoyalaPlayerControls;
import com.ooyala.android.OoyalaPlayer;
import com.ooyala.android.OoyalaPlayerLayout;
import java.util.Observable;

class av
  extends AbstractDefaultOoyalaPlayerControls
{
  public av(OoyalaPlayer paramOoyalaPlayer, OoyalaPlayerLayout paramOoyalaPlayerLayout)
  {
    setParentLayout(paramOoyalaPlayerLayout);
    setOoyalaPlayer(paramOoyalaPlayer);
    setupControls();
  }
  
  public void hide() {}
  
  public boolean isShowing()
  {
    return false;
  }
  
  public void setFullscreenButtonShowing(boolean paramBoolean) {}
  
  public void setVisible(boolean paramBoolean) {}
  
  protected void setupControls() {}
  
  public void show() {}
  
  public void update(Observable paramObservable, Object paramObject) {}
  
  protected void updateButtonStates() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */