package com.yelp.android.ui.activities.photoviewer;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.yelp.android.af.e;
import com.yelp.android.ag.b;
import com.yelp.android.ui.util.ag;

class ai
  extends b
{
  ai(PhotoPageFragment paramPhotoPageFragment, ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  public void a(Bitmap paramBitmap, e parame)
  {
    b.j();
    super.a(paramBitmap, parame);
    new ag().a(paramBitmap, PhotoPageFragment.b(b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */