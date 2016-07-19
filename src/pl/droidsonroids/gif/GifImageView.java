package pl.droidsonroids.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class GifImageView
  extends ImageView
{
  private boolean a;
  
  public GifImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GifImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(e.a(this, paramAttributeSet, 0, 0));
  }
  
  public GifImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(e.a(this, paramAttributeSet, paramInt, 0));
  }
  
  @TargetApi(21)
  public GifImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(e.a(this, paramAttributeSet, paramInt1, paramInt2));
  }
  
  private void a(e.a parama)
  {
    a = c;
    if (a > 0) {
      super.setImageResource(a);
    }
    if (b > 0) {
      super.setBackgroundResource(b);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (GifViewSavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    paramParcelable.a(getDrawable(), 0);
    paramParcelable.a(getBackground(), 1);
  }
  
  public Parcelable onSaveInstanceState()
  {
    Drawable localDrawable2 = null;
    if (a) {}
    for (Drawable localDrawable1 = getDrawable();; localDrawable1 = null)
    {
      if (a) {
        localDrawable2 = getBackground();
      }
      return new GifViewSavedState(super.onSaveInstanceState(), new Drawable[] { localDrawable1, localDrawable2 });
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    if (!e.a(this, false, paramInt)) {
      super.setBackgroundResource(paramInt);
    }
  }
  
  public void setFreezesAnimation(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setImageResource(int paramInt)
  {
    if (!e.a(this, true, paramInt)) {
      super.setImageResource(paramInt);
    }
  }
  
  public void setImageURI(Uri paramUri)
  {
    if (!e.a(this, paramUri)) {
      super.setImageURI(paramUri);
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.GifImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */