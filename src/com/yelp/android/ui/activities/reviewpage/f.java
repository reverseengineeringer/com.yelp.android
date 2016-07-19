package com.yelp.android.ui.activities.reviewpage;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.g;
import com.yelp.android.ui.util.ap.b;
import com.yelp.android.ui.util.w;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;

public class f
  extends w<DisplayableAsUserBadge>
{
  private final int a;
  private final SparseArray<CharSequence> b;
  private boolean c;
  
  public f()
  {
    this(2130903482);
  }
  
  public f(int paramInt)
  {
    a = paramInt;
    b = new SparseArray();
  }
  
  public static f b(Bundle paramBundle)
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
          localObject1 = new f(paramBundle.getInt("key.resource"));
          ((f)localObject1).a(paramBundle.getParcelableArrayList("key.contents"), false);
        }
      }
    }
    return (f)localObject1;
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
      paramView = new ap.b(localView, false);
      l = ((TextView)localView.findViewById(2131690811));
      if (l != null) {
        l.setVisibility(8);
      }
      localView.setTag(paramView);
    }
    ap.b localb = (ap.b)localView.getTag();
    paramView = (DisplayableAsUserBadge)getItem(paramInt);
    localb.a(localView.getContext(), paramView.a(), paramView.k_(), paramView.j_(), paramView.l_(), paramView.m_(), paramView.n_(), paramView.c(), paramView.h());
    if ((c) || ((paramView instanceof g)))
    {
      c = true;
      g localg = (g)paramView;
      CharSequence localCharSequence = (CharSequence)b.get(paramInt);
      paramView = localCharSequence;
      if (TextUtils.isEmpty(localCharSequence))
      {
        paramView = StringUtils.a(paramViewGroup.getContext(), StringUtils.Format.LONG, localg.j());
        b.append(paramInt, paramView);
      }
      l.setText(paramView);
      l.setVisibility(0);
    }
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */