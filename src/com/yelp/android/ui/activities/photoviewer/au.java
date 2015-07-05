package com.yelp.android.ui.activities.photoviewer;

import com.ooyala.android.AbstractOoyalaPlayerLayoutController;
import com.ooyala.android.OoyalaPlayerControls;
import com.ooyala.android.OoyalaPlayerLayout;

public class au
  extends AbstractOoyalaPlayerLayoutController
{
  public au(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2)
  {
    super(paramOoyalaPlayerLayout, paramString1, paramString2);
  }
  
  public OoyalaPlayerControls createDefaultControls(OoyalaPlayerLayout paramOoyalaPlayerLayout, boolean paramBoolean)
  {
    return new av(_player, paramOoyalaPlayerLayout);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */