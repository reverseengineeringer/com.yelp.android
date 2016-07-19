package com.yelp.android.ui.util;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Pair;
import android.widget.ImageView;

class s$1
  extends AsyncTask<Pair<Bitmap, ImageView>, Void, Pair<Bitmap, ImageView>>
{
  s$1(s params) {}
  
  protected Pair<Bitmap, ImageView> a(Pair<Bitmap, ImageView>... paramVarArgs)
  {
    Bitmap localBitmap = (Bitmap)0first;
    paramVarArgs = (ImageView)0second;
    if (localBitmap != null) {
      return new Pair(s.a(a, localBitmap, 4), paramVarArgs);
    }
    return null;
  }
  
  protected void a(Pair<Bitmap, ImageView> paramPair)
  {
    if (paramPair != null)
    {
      Bitmap localBitmap = (Bitmap)first;
      paramPair = (ImageView)second;
      paramPair.setImageBitmap(localBitmap);
      av.c(paramPair, av.c);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.s.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */