package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.android.serializable.YelpBusinessReviewInsight;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.List;

public class a
  extends w<Object>
{
  private boolean a;
  private final int b;
  private SparseArray<CharSequence> c;
  private final a d;
  
  public a(int paramInt, a parama)
  {
    b = paramInt;
    c = null;
    d = parama;
  }
  
  private CharSequence a(YelpBusinessReviewInsight paramYelpBusinessReviewInsight, Context paramContext)
  {
    SpannableString localSpannableString = SpannableString.valueOf(StringUtils.a(paramContext, 2131165987, new Object[0]));
    StyleSpan[] arrayOfStyleSpan = (StyleSpan[])localSpannableString.getSpans(0, localSpannableString.length(), StyleSpan.class);
    int j = arrayOfStyleSpan.length;
    int i = 0;
    while (i < j)
    {
      StyleSpan localStyleSpan = arrayOfStyleSpan[i];
      if (localStyleSpan.getStyle() == 1) {
        localSpannableString.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(2131624120)), localSpannableString.getSpanStart(localStyleSpan), localSpannableString.getSpanEnd(localStyleSpan), 33);
      }
      i += 1;
    }
    return TextUtils.expandTemplate(localSpannableString, new CharSequence[] { Html.fromHtml(paramYelpBusinessReviewInsight.c()) });
  }
  
  private void a(int paramInt)
  {
    if ((c == null) || (c.size() < paramInt))
    {
      c = new SparseArray(paramInt);
      return;
    }
    c.clear();
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ReviewHighlight localReviewHighlight = (ReviewHighlight)getItem(paramInt);
    Object localObject1 = null;
    if (c != null) {
      localObject1 = (CharSequence)c.get(paramInt);
    }
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject1 = localReviewHighlight.a(paramViewGroup.getContext());
      localObject2 = localObject1;
      if (c != null)
      {
        c.append(paramInt, localObject1);
        localObject2 = localObject1;
      }
    }
    paramView = a(paramInt, paramView, paramViewGroup, (CharSequence)localObject2, localReviewHighlight.b(), localReviewHighlight.c());
    paramView.setOnClickListener(new a.1(this, localReviewHighlight));
    return paramView;
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup, CharSequence paramCharSequence1, CharSequence paramCharSequence2, String paramString)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(b, paramViewGroup, false);
      localView.setTag(new a.b(localView));
    }
    paramView = (a.b)localView.getTag();
    b.setText(paramCharSequence1);
    if (!TextUtils.isEmpty(paramCharSequence2))
    {
      c.setVisibility(0);
      c.setText(paramCharSequence2);
    }
    for (;;)
    {
      d.setImageUrl(paramString, 2130837702);
      if (getItemViewType(paramInt) == 2) {
        a.setVisibility(8);
      }
      return localView;
      c.setVisibility(8);
    }
  }
  
  public void a(List<Object> paramList)
  {
    super.a(paramList);
    a(paramList.size());
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public View b(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    YelpBusinessReviewInsight localYelpBusinessReviewInsight = (YelpBusinessReviewInsight)getItem(paramInt);
    if (c != null) {}
    for (CharSequence localCharSequence1 = (CharSequence)c.get(paramInt);; localCharSequence1 = null)
    {
      CharSequence localCharSequence2 = localCharSequence1;
      if (localCharSequence1 == null)
      {
        localCharSequence1 = a(localYelpBusinessReviewInsight, paramViewGroup.getContext());
        localCharSequence2 = localCharSequence1;
        if (c != null)
        {
          c.append(paramInt, localCharSequence1);
          localCharSequence2 = localCharSequence1;
        }
      }
      return a(paramInt, paramView, paramViewGroup, localCharSequence2, null, localYelpBusinessReviewInsight.b());
    }
  }
  
  public boolean b()
  {
    return a;
  }
  
  public View c(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from(localContext).inflate(2130903423, paramViewGroup, false);
    }
    return localView;
  }
  
  public void c()
  {
    a = false;
  }
  
  public void clear()
  {
    a(Collections.emptyList());
    if (c != null) {
      c.clear();
    }
  }
  
  public int getCount()
  {
    if (b()) {}
    for (int i = 1;; i = 0) {
      return i + super.getCount();
    }
  }
  
  public Object getItem(int paramInt)
  {
    if (paramInt < super.getCount()) {
      return super.getItem(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    if (paramInt < super.getCount()) {
      return super.getItemId(paramInt);
    }
    return Long.MAX_VALUE;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((paramInt == super.getCount()) && (b())) {
      return 1;
    }
    if ((super.getItem(paramInt) instanceof YelpBusinessReviewInsight)) {
      return 2;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      return a(paramInt, paramView, paramViewGroup);
    case 1: 
      return c(paramInt, paramView, paramViewGroup);
    }
    return b(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
  
  public static abstract interface a
  {
    public abstract void a(ReviewHighlight paramReviewHighlight);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */