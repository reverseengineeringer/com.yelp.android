package com.flipboard.bottomsheet.commons;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

final class ImagePickerSheetImageView
  extends ImageView
{
  public ImagePickerSheetImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ImagePickerSheetImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ImagePickerSheetImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @TargetApi(21)
  public ImagePickerSheetImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt1);
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.ImagePickerSheetImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */