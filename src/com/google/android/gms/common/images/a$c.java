package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.internal.je;
import com.google.android.gms.internal.jv;
import java.lang.ref.WeakReference;

public final class a$c
  extends a
{
  private WeakReference<ImageManager.OnImageLoadedListener> LT;
  
  public a$c(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
  {
    super(paramUri, 0);
    je.f(paramOnImageLoadedListener);
    LT = new WeakReference(paramOnImageLoadedListener);
  }
  
  protected void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (!paramBoolean2)
    {
      ImageManager.OnImageLoadedListener localOnImageLoadedListener = (ImageManager.OnImageLoadedListener)LT.get();
      if (localOnImageLoadedListener != null) {
        localOnImageLoadedListener.onImageLoaded(LJ.uri, paramDrawable, paramBoolean3);
      }
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (c)paramObject;
    ImageManager.OnImageLoadedListener localOnImageLoadedListener1 = (ImageManager.OnImageLoadedListener)LT.get();
    ImageManager.OnImageLoadedListener localOnImageLoadedListener2 = (ImageManager.OnImageLoadedListener)LT.get();
    if ((localOnImageLoadedListener2 != null) && (localOnImageLoadedListener1 != null) && (jv.equal(localOnImageLoadedListener2, localOnImageLoadedListener1)) && (jv.equal(LJ, LJ))) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { LJ });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */