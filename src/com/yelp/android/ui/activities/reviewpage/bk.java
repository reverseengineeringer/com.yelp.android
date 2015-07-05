package com.yelp.android.ui.activities.reviewpage;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.ds;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cn;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;

public class bk
  extends au<DisplayableAsUserBadge>
{
  private final int a;
  private final SparseArray<CharSequence> b;
  private boolean c;
  
  public bk()
  {
    this(2130903380);
  }
  
  public bk(int paramInt)
  {
    a = paramInt;
    b = new SparseArray();
  }
  
  public static bk b(Bundle paramBundle)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramBundle != null)
    {
      localObject1 = localObject2;
      if (paramBundle.containsKey("key.contents"))
      {
        localObject1 = localObject2;
        if (paramBundle.containsKey("key.resource"))
        {
          localObject1 = new bk(paramBundle.getInt("key.resource"));
          ((bk)localObject1).a(paramBundle.getParcelableArrayList("key.contents"), false);
        }
      }
    }
    return (bk)localObject1;
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putInt("key.resource", a);
    paramBundle.putParcelableArrayList("key.contents", new ArrayList(a()));
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(a, paramViewGroup, false);
      paramView = new cn(localView, false);
      l = ((TextView)localView.findViewById(2131493967));
      if (l != null) {
        l.setVisibility(8);
      }
      localView.setTag(paramView);
    }
    cn localcn = (cn)localView.getTag();
    paramView = (DisplayableAsUserBadge)getItem(paramInt);
    localcn.a(localView.getContext(), paramView.getUserName(), paramView.getFriendCount(), paramView.getReviewCount(), paramView.getPhotoCount(), paramView.getVideoCount(), paramView.getMediaCount(), paramView.getUserPhotoUrl(), paramView.isEliteUser());
    if ((c) || ((paramView instanceof ds)))
    {
      c = true;
      ds localds = (ds)paramView;
      CharSequence localCharSequence = (CharSequence)b.get(paramInt);
      paramView = localCharSequence;
      if (TextUtils.isEmpty(localCharSequence))
      {
        paramView = StringUtils.a(paramViewGroup.getContext(), StringUtils.Format.LONG, localds.getTimeOf());
        b.append(paramInt, paramView);
      }
      l.setText(paramView);
      l.setVisibility(0);
    }
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */