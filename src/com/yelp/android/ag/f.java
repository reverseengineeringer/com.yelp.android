package com.yelp.android.ag;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public class f
{
  public <Z> j<Z> a(ImageView paramImageView, Class<Z> paramClass)
  {
    if (com.yelp.android.z.b.class.isAssignableFrom(paramClass)) {
      return new d(paramImageView);
    }
    if (Bitmap.class.equals(paramClass)) {
      return new b(paramImageView);
    }
    if (Drawable.class.isAssignableFrom(paramClass)) {
      return new c(paramImageView);
    }
    throw new IllegalArgumentException("Unhandled class: " + paramClass + ", try .as*(Class).transcode(ResourceTranscoder)");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */