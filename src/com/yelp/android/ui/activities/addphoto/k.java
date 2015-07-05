package com.yelp.android.ui.activities.addphoto;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.ui.widgets.WebImageView;

class k
{
  public final WebImageView[] a;
  public final TextView[] b;
  
  public k(int paramInt)
  {
    a = new WebImageView[paramInt];
    b = new TextView[paramInt];
  }
  
  public void a(View paramView, int... paramVarArgs)
  {
    int i = 0;
    while (i < paramVarArgs.length)
    {
      a((ViewGroup)paramView.findViewById(paramVarArgs[i]), i);
      i += 1;
    }
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt)
  {
    a[paramInt] = ((WebImageView)paramViewGroup.findViewById(2131493062));
    b[paramInt] = ((TextView)paramViewGroup.findViewById(2131493474));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */