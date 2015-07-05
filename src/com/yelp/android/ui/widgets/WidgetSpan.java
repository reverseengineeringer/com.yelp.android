package com.yelp.android.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;

public class WidgetSpan
  extends LinearLayout
  implements ViewGroup.OnHierarchyChangeListener
{
  ArrayList<SpannableWidget> a = new ArrayList();
  
  public WidgetSpan(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public WidgetSpan(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public WidgetSpan(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnHierarchyChangeListener(this);
  }
  
  private void a()
  {
    int k = a.size();
    int i = 0;
    int j = 0;
    if (i < k)
    {
      localObject = (SpannableWidget)a.get(i);
      j = Math.max(j, ((View)localObject).getHeight());
      if (i == 0)
      {
        bool = true;
        label50:
        ((SpannableWidget)localObject).setLeft(bool);
        if (i != k - 1) {
          break label110;
        }
        bool = true;
        label69:
        ((SpannableWidget)localObject).setRight(bool);
        if (i == k - 1) {
          break label116;
        }
      }
      label110:
      label116:
      for (boolean bool = true;; bool = false)
      {
        ((SpannableWidget)localObject).setMiddle(bool);
        i += 1;
        break;
        bool = false;
        break label50;
        bool = false;
        break label69;
      }
    }
    Object localObject = a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      SpannableWidget localSpannableWidget = (SpannableWidget)((Iterator)localObject).next();
      if (j > 0) {
        getLayoutParamsheight = j;
      }
      ((View)localSpannableWidget).refreshDrawableState();
    }
  }
  
  public int getBaseline()
  {
    return getMeasuredHeight() / 2;
  }
  
  public void onChildViewAdded(View paramView1, View paramView2)
  {
    if ((paramView2 instanceof SpannableWidget))
    {
      paramView1 = (SpannableWidget)paramView2;
      a.add(paramView1);
    }
    a();
  }
  
  public void onChildViewRemoved(View paramView1, View paramView2)
  {
    a.clear();
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      paramView1 = getChildAt(i);
      if ((paramView1 instanceof SpannableWidget)) {
        a.add((SpannableWidget)paramView1);
      }
      i += 1;
    }
    a();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      int i = 0;
      int j = getChildCount();
      if (i < j)
      {
        View localView = getChildAt(i);
        switch (getOrientation())
        {
        }
        do
        {
          do
          {
            i += 1;
            break;
          } while ((f1 < localView.getLeft()) || (f1 > localView.getRight()));
          localView.performClick();
          return true;
        } while ((f2 < localView.getTop()) || (f2 > localView.getBottom()));
        localView.performClick();
        return true;
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.WidgetSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */