package com.yelp.android.services;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

class n
  extends ArrayAdapter<ResolveInfo>
{
  private final PackageManager a;
  
  public n(Context paramContext, PackageManager paramPackageManager, List<ResolveInfo> paramList)
  {
    super(paramContext, 2130903258, paramList);
    a = paramPackageManager;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903258, paramViewGroup, false);
      localView.setTag(localView.findViewById(2131493673));
    }
    paramView = (TextView)localView.getTag();
    paramView.setText(((ResolveInfo)getItem(paramInt)).loadLabel(a));
    paramView.setCompoundDrawablesWithIntrinsicBounds(((ResolveInfo)getItem(paramInt)).loadIcon(a), null, null, null);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */