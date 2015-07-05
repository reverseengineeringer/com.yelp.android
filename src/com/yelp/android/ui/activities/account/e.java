package com.yelp.android.ui.activities.account;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.TextView;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.ui.panels.ButtonWithIcon;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;

public final class e
  extends au<PaymentMethod>
{
  private static final AbsListView.LayoutParams a = new AbsListView.LayoutParams(-1, -2);
  
  public e(ArrayList<PaymentMethod> paramArrayList)
  {
    a(paramArrayList);
  }
  
  public static final ButtonWithIcon a(ViewGroup paramViewGroup)
  {
    paramViewGroup = new ButtonWithIcon(paramViewGroup.getContext());
    paramViewGroup.setLayoutParams(a);
    return paramViewGroup;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a(paramViewGroup);
    }
    for (;;)
    {
      paramViewGroup = (ButtonWithIcon)paramView;
      PaymentMethod localPaymentMethod = (PaymentMethod)getItem(paramInt);
      if (!cp.a(paramView.getContext(), paramViewGroup.getImageView(), localPaymentMethod.getImagePath())) {
        paramViewGroup.getImageView().setImageUrl(localPaymentMethod.getImageUrl(), 2130837736);
      }
      paramViewGroup.getTextView().setText(localPaymentMethod.getDescription());
      return paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */