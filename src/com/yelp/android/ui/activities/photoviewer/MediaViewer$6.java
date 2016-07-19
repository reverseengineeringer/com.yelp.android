package com.yelp.android.ui.activities.photoviewer;

import android.view.View;
import android.view.View.OnClickListener;

class MediaViewer$6
  implements View.OnClickListener
{
  MediaViewer$6(MediaViewer paramMediaViewer) {}
  
  public void onClick(View paramView)
  {
    boolean bool2 = true;
    boolean bool3 = MediaViewer.a.c(MediaViewer.b(a));
    paramView = MediaViewer.b(a);
    if (!bool3)
    {
      bool1 = true;
      MediaViewer.a.a(paramView, bool1);
      paramView = a;
      if (bool3) {
        break label57;
      }
    }
    label57:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      MediaViewer.a(paramView, bool1);
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.MediaViewer.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */