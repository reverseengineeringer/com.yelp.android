package pl.droidsonroids.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import java.io.IOException;

public class GifTextView
  extends TextView
{
  private boolean a;
  
  public GifTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet, 0, 0);
  }
  
  public GifTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet, paramInt, 0);
  }
  
  private Drawable a(int paramInt)
  {
    if (paramInt == 0) {
      return null;
    }
    Resources localResources = getResources();
    if ((!isInEditMode()) && ("drawable".equals(localResources.getResourceTypeName(paramInt)))) {}
    try
    {
      c localc = new c(localResources, paramInt);
      return localc;
    }
    catch (IOException localIOException)
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return localResources.getDrawable(paramInt, getContext().getTheme());
      }
      return localResources.getDrawable(paramInt);
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;) {}
    }
  }
  
  private void a(AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    Drawable localDrawable1;
    Drawable localDrawable4;
    Drawable localDrawable2;
    Drawable localDrawable5;
    Object localObject2;
    Drawable localDrawable3;
    Object localObject1;
    Object localObject3;
    if (paramAttributeSet != null)
    {
      localDrawable1 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableLeft", 0));
      localDrawable4 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableTop", 0));
      localDrawable2 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableRight", 0));
      localDrawable5 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableBottom", 0));
      localObject2 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableStart", 0));
      localDrawable3 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableEnd", 0));
      if (Build.VERSION.SDK_INT < 17) {
        break label247;
      }
      if (getLayoutDirection() != 0) {
        break label210;
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = localDrawable1;
      }
      localObject2 = localDrawable3;
      localObject3 = localObject1;
      if (localDrawable3 == null)
      {
        localObject2 = localDrawable2;
        localObject3 = localObject1;
      }
      setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable)localObject3, localDrawable4, (Drawable)localObject2, localDrawable5);
      setCompoundDrawablesWithIntrinsicBounds(localDrawable1, localDrawable4, localDrawable2, localDrawable5);
    }
    for (;;)
    {
      setBackgroundInternal(a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "background", 0)));
      a = e.a(this, paramAttributeSet, paramInt1, paramInt2);
      return;
      label210:
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = localDrawable2;
      }
      localObject2 = localDrawable3;
      localObject3 = localObject1;
      if (localDrawable3 != null) {
        break;
      }
      localObject2 = localDrawable1;
      localObject3 = localObject1;
      break;
      label247:
      setCompoundDrawablesWithIntrinsicBounds(localDrawable1, localDrawable4, localDrawable2, localDrawable5);
    }
  }
  
  private void a(Drawable[] paramArrayOfDrawable)
  {
    int j = paramArrayOfDrawable.length;
    int i = 0;
    while (i < j)
    {
      Drawable localDrawable = paramArrayOfDrawable[i];
      if (localDrawable != null) {
        localDrawable.setVisible(false, false);
      }
      i += 1;
    }
  }
  
  private void setBackgroundInternal(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      setBackground(paramDrawable);
      return;
    }
    setBackgroundDrawable(paramDrawable);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a(getCompoundDrawables());
    if (Build.VERSION.SDK_INT >= 17) {
      a(getCompoundDrawablesRelative());
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (GifViewSavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    Drawable[] arrayOfDrawable = getCompoundDrawables();
    paramParcelable.a(arrayOfDrawable[0], 0);
    paramParcelable.a(arrayOfDrawable[1], 1);
    paramParcelable.a(arrayOfDrawable[2], 2);
    paramParcelable.a(arrayOfDrawable[3], 3);
    if (Build.VERSION.SDK_INT >= 17)
    {
      arrayOfDrawable = getCompoundDrawablesRelative();
      paramParcelable.a(arrayOfDrawable[0], 4);
      paramParcelable.a(arrayOfDrawable[2], 5);
    }
    paramParcelable.a(getBackground(), 6);
  }
  
  public Parcelable onSaveInstanceState()
  {
    Drawable[] arrayOfDrawable1 = new Drawable[7];
    if (a)
    {
      Drawable[] arrayOfDrawable2 = getCompoundDrawables();
      System.arraycopy(arrayOfDrawable2, 0, arrayOfDrawable1, 0, arrayOfDrawable2.length);
      if (Build.VERSION.SDK_INT >= 17)
      {
        arrayOfDrawable2 = getCompoundDrawablesRelative();
        arrayOfDrawable1[4] = arrayOfDrawable2[0];
        arrayOfDrawable1[5] = arrayOfDrawable2[2];
      }
      arrayOfDrawable1[6] = getBackground();
    }
    return new GifViewSavedState(super.onSaveInstanceState(), arrayOfDrawable1);
  }
  
  public void setBackgroundResource(int paramInt)
  {
    setBackgroundInternal(a(paramInt));
  }
  
  @TargetApi(17)
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setCompoundDrawablesRelativeWithIntrinsicBounds(a(paramInt1), a(paramInt2), a(paramInt3), a(paramInt4));
  }
  
  public void setCompoundDrawablesWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setCompoundDrawablesWithIntrinsicBounds(a(paramInt1), a(paramInt2), a(paramInt3), a(paramInt4));
  }
  
  public void setFreezesAnimation(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.GifTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */