package com.yelp.android.ui.activities.gallery;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.util.av;

class a$c
  implements View.OnClickListener
{
  private final View b;
  private final Uri c;
  private final boolean d;
  
  a$c(a parama, View paramView, Uri paramUri, boolean paramBoolean)
  {
    b = paramView;
    c = paramUri;
    d = paramBoolean;
  }
  
  public void onClick(View paramView)
  {
    a.b(a).a(c, d);
    b.startAnimation(av.a(1.0F, 0.97F));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */