package com.yelp.android.ui.activities.events;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.yelp.android.ag.b;

class u
  extends b
{
  u(EventPartyPassFragment paramEventPartyPassFragment, ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  protected void a(Bitmap paramBitmap)
  {
    super.a(paramBitmap);
    EventPartyPassFragment.a(b, paramBitmap);
    b.j();
    EventPartyPassFragment.a(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */