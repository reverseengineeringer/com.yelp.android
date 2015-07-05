package com.yelp.android.ui.activities.gallery;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;

public class ContributionButtonAdapter
  extends ArrayAdapter<ContributionButtonAdapter.ContributionButton>
  implements com.yelp.android.ui.util.j
{
  private LayoutInflater a;
  private Resources b;
  private i c;
  
  protected ContributionButtonAdapter(Context paramContext, i parami, List<ContributionButtonAdapter.ContributionButton> paramList)
  {
    super(paramContext, 0, paramList);
    a = LayoutInflater.from(paramContext);
    b = paramContext.getResources();
    c = parami;
  }
  
  protected View a(int paramInt, ViewGroup paramViewGroup)
  {
    paramViewGroup = a.inflate(2130903236, paramViewGroup, false);
    paramViewGroup.setTag(new j(paramViewGroup));
    return paramViewGroup;
  }
  
  protected void a(View paramView, int paramInt)
  {
    paramView = (j)paramView.getTag();
    ContributionButtonAdapter.ContributionButton localContributionButton = (ContributionButtonAdapter.ContributionButton)getItem(paramInt);
    a.setText(b.getString(mTextId));
    a.setCompoundDrawablesWithIntrinsicBounds(null, b.getDrawable(mPictureId), null, null);
    b.setOnClickListener(new h(this, localContributionButton));
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramInt, paramViewGroup);
    }
    a(localView, paramInt);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ContributionButtonAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */