package com.yelp.android.ui.activities.compliments;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentState;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Compliment.ComplimentableItemType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;

public class a
  extends w<Compliment>
{
  private final ApiRequest.b<Compliment> a;
  private final Mode b;
  private final User c;
  private final boolean d;
  private final transient SparseArray<CharSequence> e;
  
  public a(User paramUser, Mode paramMode, ApiRequest.b<Compliment> paramb, boolean paramBoolean)
  {
    b = paramMode;
    a = paramb;
    e = new SparseArray();
    c = paramUser;
    d = paramBoolean;
  }
  
  private CharSequence a(Context paramContext, Compliment paramCompliment)
  {
    String str = paramCompliment.m().a();
    Compliment.ComplimentableItemType localComplimentableItemType = paramCompliment.j();
    boolean bool = AppData.b().q().a(c);
    if (d) {
      return StringUtils.a(StringUtils.a(paramContext, localComplimentableItemType.getDescriptionTextResource(c, bool), new Object[] { str, c.Z(), paramCompliment.p() }), 2131623980, paramContext);
    }
    return StringUtils.a(StringUtils.a(paramContext, 2131166844, new Object[] { str }), 2131623980, paramContext);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool2 = true;
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(localContext).inflate(2130903188, paramViewGroup, false);
      localView.setTag(new a.b(localView));
    }
    a.b localb = (a.b)localView.getTag();
    Compliment localCompliment = (Compliment)getItem(paramInt);
    e.setText(localCompliment.q());
    paramViewGroup = (CharSequence)e.get(paramInt, null);
    paramView = paramViewGroup;
    if (TextUtils.isEmpty(paramViewGroup))
    {
      paramView = a(localContext, localCompliment);
      e.append(paramInt, paramView);
    }
    d.setText(paramView);
    b.setText(kmText);
    c.setImageUrl(localCompliment.m().c(), 2130837702);
    a.setImageResource(kmIcon);
    c.setOnClickListener(new a.1(this, localContext, localCompliment));
    paramView = StringUtils.a(localContext, StringUtils.Format.ABBREVIATED, localCompliment.t());
    h.setText(paramView);
    if (b != Mode.LIST)
    {
      paramInt = 0;
      f.setVisibility(paramInt);
      g.setVisibility(paramInt);
      if (b != Mode.LIST)
      {
        paramView = localCompliment.l();
        f.setText(Mode.APPROVE.getLabelForState(paramView));
        paramViewGroup = f;
        if (paramView != Compliment.ComplimentState.ELIGIBLE) {
          break label425;
        }
        bool1 = true;
        label296:
        paramViewGroup.setEnabled(bool1);
        f.setTag(localCompliment);
        f.setOnClickListener(new a.a(this, Mode.APPROVE));
        paramViewGroup = g;
        if (paramView == Compliment.ComplimentState.PENDING) {
          break label431;
        }
      }
    }
    label425:
    label431:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramViewGroup.setEnabled(bool1);
      g.setTag(localCompliment);
      g.setOnClickListener(new a.a(this, Mode.DELETE));
      if (localCompliment.s() == null) {
        break label437;
      }
      i.setVisibility(0);
      i.setImageUrl(localCompliment.s().s());
      return localView;
      paramInt = 8;
      break;
      bool1 = false;
      break label296;
    }
    label437:
    i.setVisibility(8);
    return localView;
  }
  
  public void notifyDataSetChanged()
  {
    e.clear();
    super.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */