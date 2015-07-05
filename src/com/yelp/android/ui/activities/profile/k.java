package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.au;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class k
  extends au<ContributionAwardType>
{
  private final User a;
  private final int b;
  private final SparseArray<CharSequence> c;
  
  public k(Collection<ContributionAwardType> paramCollection, User paramUser, int paramInt)
  {
    a = paramUser;
    b = paramInt;
    paramCollection = new ArrayList(paramCollection);
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      ContributionAwardType localContributionAwardType = (ContributionAwardType)localIterator.next();
      if ((localContributionAwardType.getValue(paramUser) == 0) && (localContributionAwardType != ContributionAwardType.MESSAGES)) {
        localIterator.remove();
      }
    }
    a(paramCollection);
    c = new SparseArray();
  }
  
  private CharSequence a(Context paramContext, int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    CharSequence localCharSequence = (CharSequence)c.get(paramInt1);
    Object localObject = localCharSequence;
    if (TextUtils.isEmpty(localCharSequence))
    {
      localObject = UserProfileView.a(StringUtils.a(paramContext, paramInt2, paramVarArgs), b);
      c.put(paramInt1, localObject);
    }
    return (CharSequence)localObject;
  }
  
  private void a(int paramInt, ContributionAwardType paramContributionAwardType, Context paramContext, TextView paramTextView)
  {
    int i = paramContributionAwardType.getValue(a);
    paramTextView.setText(a(paramContext, paramInt, 2131166370, new Object[] { paramContext.getString(paramContributionAwardType.getTitleRes(a)), String.valueOf(i) }));
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(iconRes, 0, 0, 0);
  }
  
  private void a(int paramInt, ContributionAwardType paramContributionAwardType, Context paramContext, l paraml)
  {
    paramInt = paramContributionAwardType.getValue(a);
    a.setCompoundDrawablesWithIntrinsicBounds(iconRes, 0, 0, 0);
    a.setText(paramContributionAwardType.getTitleRes(a));
    if (paramInt > 0)
    {
      if (b.getVisibility() == 8) {
        b.setVisibility(0);
      }
      b.setText(String.valueOf(paramInt));
      return;
    }
    b.setVisibility(8);
  }
  
  public void clear()
  {
    super.clear();
    c.clear();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (getItemhasBadgeCount) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = getItemViewType(paramInt);
    ContributionAwardType localContributionAwardType = (ContributionAwardType)getItem(paramInt);
    Context localContext = paramViewGroup.getContext();
    View localView;
    if (i == 0) {
      if (paramView == null)
      {
        paramView = LayoutInflater.from(localContext).inflate(2130903383, paramViewGroup, false);
        paramViewGroup = (TextView)paramView.findViewById(2131492893);
        paramView.setTag(paramViewGroup);
        a(paramInt, localContributionAwardType, localContext, paramViewGroup);
        localView = paramView;
      }
    }
    do
    {
      return localView;
      paramViewGroup = (TextView)paramView.getTag();
      break;
      localView = paramView;
    } while (i != 1);
    if (paramView == null)
    {
      paramView = LayoutInflater.from(localContext).inflate(2130903382, paramViewGroup, false);
      paramViewGroup = new l(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      a(paramInt, localContributionAwardType, localContext, paramViewGroup);
      return paramView;
      paramViewGroup = (l)paramView.getTag();
    }
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */