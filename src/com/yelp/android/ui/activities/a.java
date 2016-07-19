package com.yelp.android.ui.activities;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.util.w;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class a
  extends w<Category>
{
  private final Map<String, Drawable> a;
  private final List<Category> b;
  private final boolean c;
  
  public a(boolean paramBoolean)
  {
    this(paramBoolean, Collections.emptyMap(), Collections.emptyList());
  }
  
  public a(boolean paramBoolean, Map<String, Drawable> paramMap, List<Category> paramList)
  {
    a = paramMap;
    c = paramBoolean;
    b = paramList;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903372, paramViewGroup, false);
      localView.setTag(new a.a(localView));
    }
    paramView = (a.a)localView.getTag();
    paramViewGroup = (Category)getItem(paramInt);
    Object localObject = (Drawable)a.get(paramViewGroup.d());
    a.setCompoundDrawablesWithIntrinsicBounds((Drawable)localObject, null, null, null);
    if ((c) && (paramViewGroup.f() > 0))
    {
      b.setVisibility(0);
      localObject = a;
      if ((!b.contains(paramViewGroup)) || (paramViewGroup.f() != 0)) {
        break label169;
      }
    }
    label169:
    for (boolean bool = true;; bool = false)
    {
      ((CheckedTextView)localObject).setChecked(bool);
      a.setText(paramViewGroup.a());
      return localView;
      b.setVisibility(8);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */