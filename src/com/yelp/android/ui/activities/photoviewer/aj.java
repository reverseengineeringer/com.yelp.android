package com.yelp.android.ui.activities.photoviewer;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.yelp.android.af.e;
import com.yelp.android.ag.b;

class aj
  extends b
{
  aj(PhotoPageFragment paramPhotoPageFragment, ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  public void a(Bitmap paramBitmap, e parame)
  {
    b.j();
    super.a(paramBitmap, parame);
    PhotoPageFragment.c(b).setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */