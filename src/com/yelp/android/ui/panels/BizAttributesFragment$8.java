package com.yelp.android.ui.panels;

import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;
import com.yelp.android.au.a;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.widgets.SpannedTextView;
import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.WidgetSpan;

class BizAttributesFragment$8
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  BizAttributesFragment$8(BizAttributesFragment paramBizAttributesFragment) {}
  
  private boolean a(TextView paramTextView, String paramString)
  {
    boolean bool = false;
    int i = paramTextView.getWidth();
    int j = paramTextView.getPaddingLeft();
    int k = paramTextView.getPaddingRight();
    if (new StaticLayout(paramString, paramTextView.getPaint(), i - j - k, Layout.Alignment.ALIGN_CENTER, 1.0F, 0.0F, false).getHeight() > paramTextView.getHeight()) {
      bool = true;
    }
    return bool;
  }
  
  public void onGlobalLayout()
  {
    int i;
    View localView;
    Object localObject2;
    Object localObject1;
    if (BizAttributesFragment.f(a) != null)
    {
      i = 0;
      if (i < BizAttributesFragment.f(a).getChildCount())
      {
        localView = BizAttributesFragment.f(a).getChildAt(i);
        localObject2 = null;
        localObject1 = null;
        if ((localView instanceof SpannedTextView))
        {
          localObject2 = (TextView)localView;
          localObject1 = String.valueOf(((TextView)localObject2).getText());
          if (!a((TextView)localObject2, (String)localObject1)) {
            break label222;
          }
        }
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = "The string [" + (String)localObject1 + "] did not fit in a biz attribute button.";
        a.a((String)localObject1);
        a.a(new BizAttributesFragment.AttributeVotingStringException(a, (String)localObject1));
      }
      i += 1;
      break;
      if ((localView instanceof TwoTierButton))
      {
        TextView localTextView = ((TwoTierButton)localView).getLabel();
        Object localObject3 = String.valueOf(localTextView.getText());
        localObject1 = localObject2;
        if (a(localTextView, (String)localObject3)) {
          localObject1 = localObject3;
        }
        localObject3 = ((TwoTierButton)localView).getValue();
        localObject2 = String.valueOf(((TextView)localObject3).getText());
        if (a((TextView)localObject3, (String)localObject2))
        {
          localObject1 = localObject2;
          continue;
          ar.a(BizAttributesFragment.f(a), this);
          return;
          label222:
          localObject1 = null;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributesFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */