package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import com.yelp.android.b;

public class PieProgress
  extends CompoundButton
{
  private int a;
  private int b;
  private int c;
  private Paint d;
  private RectF e;
  
  public PieProgress(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null, 0);
  }
  
  public PieProgress(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0);
  }
  
  public PieProgress(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    a = 100;
    b = 0;
    c = paramContext.getResources().getColor(2131361970);
    e = new RectF();
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.PieProgress, paramInt, 0);
      c = paramContext.getColor(0, c);
      paramContext.recycle();
    }
    d = new Paint();
    d.setColor(c);
    d.setAntiAlias(true);
  }
  
  public void a()
  {
    setProgress(b + 1);
  }
  
  public void b()
  {
    setProgress(0);
    setProgressColor(c);
  }
  
  public int getMax()
  {
    return a;
  }
  
  public int getProgress()
  {
    return b;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    e.set(0.0F, 0.0F, getMeasuredWidth() - 0.5F, getMeasuredHeight() - 0.5F);
    paramCanvas.drawArc(e, -90.0F, b * 360 / a, true, d);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof PieProgress.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (PieProgress.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    a = PieProgress.SavedState.access$100(paramParcelable);
    b = PieProgress.SavedState.access$200(paramParcelable);
  }
  
  public Parcelable onSaveInstanceState()
  {
    Object localObject = super.onSaveInstanceState();
    if (isSaveEnabled())
    {
      localObject = new PieProgress.SavedState((Parcelable)localObject);
      PieProgress.SavedState.access$102((PieProgress.SavedState)localObject, a);
      PieProgress.SavedState.access$202((PieProgress.SavedState)localObject, b);
      return (Parcelable)localObject;
    }
    return (Parcelable)localObject;
  }
  
  public void setProgress(int paramInt)
  {
    if (paramInt <= a)
    {
      b = paramInt;
      invalidate();
    }
  }
  
  public void setProgressColor(int paramInt)
  {
    d.setColor(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.PieProgress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */