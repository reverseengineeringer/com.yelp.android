package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.yelp.android.g.l;
import java.lang.ref.WeakReference;

public final class ViewStubCompat
  extends View
{
  private int a = 0;
  private int b;
  private WeakReference<View> c;
  private LayoutInflater d;
  private bl e;
  
  public ViewStubCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ViewStubCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, l.ViewStubCompat, paramInt, 0);
    b = paramContext.getResourceId(l.ViewStubCompat_android_inflatedId, -1);
    a = paramContext.getResourceId(l.ViewStubCompat_android_layout, 0);
    setId(paramContext.getResourceId(l.ViewStubCompat_android_id, -1));
    paramContext.recycle();
    setVisibility(8);
    setWillNotDraw(true);
  }
  
  public View a()
  {
    Object localObject = getParent();
    if ((localObject != null) && ((localObject instanceof ViewGroup)))
    {
      if (a != 0)
      {
        ViewGroup localViewGroup = (ViewGroup)localObject;
        int i;
        if (d != null)
        {
          localObject = d;
          localObject = ((LayoutInflater)localObject).inflate(a, localViewGroup, false);
          if (b != -1) {
            ((View)localObject).setId(b);
          }
          i = localViewGroup.indexOfChild(this);
          localViewGroup.removeViewInLayout(this);
          ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
          if (localLayoutParams == null) {
            break label140;
          }
          localViewGroup.addView((View)localObject, i, localLayoutParams);
        }
        for (;;)
        {
          c = new WeakReference(localObject);
          if (e != null) {
            e.a(this, (View)localObject);
          }
          return (View)localObject;
          localObject = LayoutInflater.from(getContext());
          break;
          label140:
          localViewGroup.addView((View)localObject, i);
        }
      }
      throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
    }
    throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {}
  
  public void draw(Canvas paramCanvas) {}
  
  public int getInflatedId()
  {
    return b;
  }
  
  public LayoutInflater getLayoutInflater()
  {
    return d;
  }
  
  public int getLayoutResource()
  {
    return a;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(0, 0);
  }
  
  public void setInflatedId(int paramInt)
  {
    b = paramInt;
  }
  
  public void setLayoutInflater(LayoutInflater paramLayoutInflater)
  {
    d = paramLayoutInflater;
  }
  
  public void setLayoutResource(int paramInt)
  {
    a = paramInt;
  }
  
  public void setOnInflateListener(bl parambl)
  {
    e = parambl;
  }
  
  public void setVisibility(int paramInt)
  {
    if (c != null)
    {
      View localView = (View)c.get();
      if (localView != null) {
        localView.setVisibility(paramInt);
      }
    }
    do
    {
      return;
      throw new IllegalStateException("setVisibility called on un-referenced view");
      super.setVisibility(paramInt);
    } while ((paramInt != 0) && (paramInt != 4));
    a();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ViewStubCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */