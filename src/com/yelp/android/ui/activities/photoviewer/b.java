package com.yelp.android.ui.activities.photoviewer;

import android.view.View;
import android.view.View.OnClickListener;

class b
  implements View.OnClickListener
{
  b(ActivityMediaViewer paramActivityMediaViewer) {}
  
  public void onClick(View paramView)
  {
    boolean bool2 = true;
    boolean bool3 = k.c(ActivityMediaViewer.m(a));
    paramView = ActivityMediaViewer.m(a);
    if (!bool3)
    {
      bool1 = true;
      k.a(paramView, bool1);
      paramView = a;
      if (bool3) {
        break label57;
      }
    }
    label57:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      ActivityMediaViewer.b(paramView, bool1);
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */