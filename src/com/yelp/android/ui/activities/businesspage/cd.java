package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.ao;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.au;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class cd
  extends au<BusinessRedeemButton>
{
  private YelpBusiness a;
  private Collection<BusinessRedeemButton> b;
  
  public cd(Collection<BusinessRedeemButton> paramCollection, Context paramContext, YelpBusiness paramYelpBusiness)
  {
    a = paramYelpBusiness;
    b = paramCollection;
    a(paramContext);
  }
  
  public void a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      BusinessRedeemButton localBusinessRedeemButton = (BusinessRedeemButton)localIterator.next();
      if (localBusinessRedeemButton.shouldShow(paramContext, a)) {
        localArrayList.add(localBusinessRedeemButton);
      }
    }
    a(localArrayList);
    notifyDataSetChanged();
  }
  
  public void a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    a = paramYelpBusiness;
    a(paramContext);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    BusinessRedeemButton localBusinessRedeemButton = (BusinessRedeemButton)getItem(paramInt);
    View localView1 = paramView;
    if (paramView == null) {
      localView1 = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903144, paramViewGroup, false);
    }
    paramViewGroup = paramViewGroup.getContext();
    Object localObject = paramViewGroup.getResources();
    View localView2 = localView1.findViewById(2131493383);
    paramView = (TextView)localView1.findViewById(2131493384);
    localView2.setBackgroundResource(background);
    paramInt = ((Resources)localObject).getColor(textColor);
    paramView.setTextColor(paramInt);
    if (shadowUp) {}
    for (float f = -1.0F;; f = 1.0F)
    {
      paramView.setShadowLayer(1.0F, 0.0F, f, ((Resources)localObject).getColor(textShadow));
      paramView.setTextAppearance(paramViewGroup, 2131689712);
      localObject = SpannableString.valueOf(paramViewGroup.getString(title));
      ((Spannable)localObject).setSpan(new TextAppearanceSpan(paramViewGroup, 2131689616), 0, ((Spannable)localObject).length(), 33);
      paramViewGroup = localBusinessRedeemButton.getSubtitle(a);
      if (!TextUtils.isEmpty(paramViewGroup)) {
        break;
      }
      ((Spannable)localObject).setSpan(new ForegroundColorSpan(paramInt), 0, ((Spannable)localObject).length(), 0);
      paramView.setText((CharSequence)localObject);
      return localView1;
    }
    paramViewGroup = SpannableString.valueOf(TextUtils.concat(new CharSequence[] { localObject, "\n", paramViewGroup }));
    paramViewGroup.setSpan(new ForegroundColorSpan(paramInt), 0, paramViewGroup.length(), 0);
    paramView.setText(paramViewGroup);
    paramView.setPadding(0, 0, 0, ao.n);
    return localView1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */