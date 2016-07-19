package com.yelp.android.ui.activities.categorypicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.co.a.f;
import com.yelp.android.co.a.h;
import com.yelp.android.serializable.BizCategory;
import com.yelp.android.ui.util.w;

public class c<Category extends BizCategory>
  extends w<Category>
{
  private final a a;
  
  public c(a parama)
  {
    a = parama;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(a.h.category_panel, paramViewGroup, false);
      paramViewGroup = new b(paramView, null);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      final BizCategory localBizCategory = (BizCategory)getItem(paramInt);
      a.setText(e.a(localBizCategory.c(), localBizCategory.a()));
      b.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          c.a(c.this).a(localBizCategory);
        }
      });
      return paramView;
      paramViewGroup = (b)paramView.getTag();
    }
  }
  
  public static abstract interface a<Category extends BizCategory>
  {
    public abstract void a(Category paramCategory);
  }
  
  private static class b
  {
    public final TextView a;
    public final View b;
    
    private b(View paramView)
    {
      a = ((TextView)paramView.findViewById(a.f.category_name));
      b = paramView.findViewById(a.f.close_button);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */