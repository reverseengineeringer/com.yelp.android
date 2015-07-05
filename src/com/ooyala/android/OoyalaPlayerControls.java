package com.ooyala.android;

import java.util.Observer;

public abstract interface OoyalaPlayerControls
  extends Observer
{
  public abstract int bottomBarOffset();
  
  public abstract void hide();
  
  public abstract boolean isShowing();
  
  public abstract void setFullscreenButtonShowing(boolean paramBoolean);
  
  public abstract void setOoyalaPlayer(OoyalaPlayer paramOoyalaPlayer);
  
  public abstract void setParentLayout(OoyalaPlayerLayout paramOoyalaPlayerLayout);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void show();
  
  public abstract int topBarOffset();
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayerControls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */