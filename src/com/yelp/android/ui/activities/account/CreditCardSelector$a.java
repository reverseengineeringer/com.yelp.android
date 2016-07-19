package com.yelp.android.ui.activities.account;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.TextView;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.ui.panels.ButtonWithIcon;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;

public final class CreditCardSelector$a
  extends w<PaymentMethod>
{
  private static final AbsListView.LayoutParams a = new AbsListView.LayoutParams(-1, -2);
  
  public CreditCardSelector$a(ArrayList<PaymentMethod> paramArrayList)
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
      if (!ar.a(paramView.getContext(), paramViewGroup.getImageView(), localPaymentMethod.a())) {
        paramViewGroup.getImageView().setImageUrl(localPaymentMethod.b(), 2130837813);
      }
      paramViewGroup.getTextView().setText(localPaymentMethod.c());
      return paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.CreditCardSelector.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */