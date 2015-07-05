package com.yelp.android.ui.util;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Pair;
import android.widget.ImageView;

class ah
  extends AsyncTask<Pair<Bitmap, ImageView>, Void, Pair<Bitmap, ImageView>>
{
  ah(ag paramag) {}
  
  protected Pair<Bitmap, ImageView> a(Pair<Bitmap, ImageView>... paramVarArgs)
  {
    Bitmap localBitmap = (Bitmap)0first;
    paramVarArgs = (ImageView)0second;
    if (localBitmap != null) {
      return new Pair(ag.a(a, localBitmap, 4), paramVarArgs);
    }
    return null;
  }
  
  protected void a(Pair<Bitmap, ImageView> paramPair)
  {
    Bitmap localBitmap = (Bitmap)first;
    ImageView localImageView = (ImageView)second;
    if (paramPair != null)
    {
      localImageView.setImageBitmap(localBitmap);
      cw.c(localImageView, cw.c);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */