package com.yelp.android.ui.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.ArrayList;

public class InstrumentableTextView
  extends TextView
{
  private ArrayList<ar> a;
  
  public InstrumentableTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public InstrumentableTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public InstrumentableTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramBoolean) && (a != null))
    {
      ArrayList localArrayList = (ArrayList)a.clone();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        ((ar)localArrayList.get(i)).a(this, paramInt1, paramInt2, paramInt3, paramInt4);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.InstrumentableTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */