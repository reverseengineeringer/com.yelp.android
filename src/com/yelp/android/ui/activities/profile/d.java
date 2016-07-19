package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.SingleFeedEntry;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class d
  extends w<SingleFeedEntry>
{
  private t a;
  private User b;
  private final c c;
  
  public d(t paramt, User paramUser, c paramc)
  {
    a = paramt;
    b = paramUser;
    c = paramc;
  }
  
  public SingleFeedEntry a(String paramString)
  {
    int i = 0;
    while (i < getCount())
    {
      if (paramString.equals(((SingleFeedEntry)getItem(i)).a())) {
        return (SingleFeedEntry)getItem(i);
      }
      i += 1;
    }
    return null;
  }
  
  public void a(SingleFeedEntry paramSingleFeedEntry)
  {
    int i = 0;
    for (;;)
    {
      if (i < getCount())
      {
        if (paramSingleFeedEntry.a().equals(((SingleFeedEntry)getItem(i)).a()))
        {
          ((SingleFeedEntry)getItem(i)).a(paramSingleFeedEntry.e());
          notifyDataSetChanged();
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
  
  public ArrayList<SingleFeedEntry> b()
  {
    return new ArrayList(a());
  }
  
  public void b(String paramString)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      if (paramString.equals(((SingleFeedEntry)localIterator.next()).a()))
      {
        localIterator.remove();
        notifyDataSetChanged();
      }
    }
  }
  
  public int getItemViewType(int paramInt)
  {
    SingleFeedEntry localSingleFeedEntry = (SingleFeedEntry)getItem(paramInt);
    if ((localSingleFeedEntry instanceof YelpBusinessReview)) {
      return 0;
    }
    if ((localSingleFeedEntry instanceof Tip)) {
      return 1;
    }
    return -1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      return paramView;
    case 0: 
      localView = paramView;
      if (paramView == null)
      {
        localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903457, paramViewGroup, false);
        localView.setTag(new a(localView, null));
      }
      a.a((a)localView.getTag(), (YelpBusinessReview)getItem(paramInt), b, paramViewGroup.getContext(), a);
      return localView;
    }
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903475, paramViewGroup, false);
      localView.setTag(new b(localView, null));
    }
    b.a((b)localView.getTag(), (Tip)getItem(paramInt), paramViewGroup.getContext(), b, a, c);
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  private static class a
  {
    private final ImageView a;
    private final TextView b;
    private final TextView c;
    private final TextView d;
    private final ImageView e;
    private final View f;
    private final View g;
    private final View h;
    private final ImageView i;
    private final TextView j;
    private final TextView k;
    
    private a(View paramView)
    {
      a = ((ImageView)paramView.findViewById(2131690217));
      b = ((TextView)paramView.findViewById(2131690218));
      c = ((TextView)paramView.findViewById(2131690216));
      d = ((TextView)paramView.findViewById(2131689684));
      e = ((ImageView)paramView.findViewById(2131690208));
      h = paramView.findViewById(2131689511);
      f = paramView.findViewById(2131690485);
      g = paramView.findViewById(2131690486);
      i = ((ImageView)paramView.findViewById(2131690530));
      j = ((TextView)paramView.findViewById(2131690774));
      k = ((TextView)paramView.findViewById(2131690636));
    }
    
    private void a(YelpBusinessReview paramYelpBusinessReview, User paramUser, Context paramContext, t paramt)
    {
      a.setImageResource(2130838805);
      TextView localTextView = b;
      if (AppData.b().q().a(paramUser.i()))
      {
        paramUser = paramContext.getString(2131166197);
        localTextView.setText(paramUser);
        c.setText(StringUtils.a(paramContext, StringUtils.Format.LONG, paramYelpBusinessReview.d()));
        paramt.a(paramYelpBusinessReview.L()).a(2130837691).a(e);
        if (!paramYelpBusinessReview.u()) {
          break label234;
        }
        f.setVisibility(8);
        h.setVisibility(8);
        g.setVisibility(0);
        label116:
        d.setText(paramYelpBusinessReview.M());
        k.setText(paramYelpBusinessReview.e());
        if (paramYelpBusinessReview.C() == -1) {
          break label319;
        }
        i.setVisibility(0);
        ar.a(i, paramYelpBusinessReview.C());
      }
      for (;;)
      {
        if (paramYelpBusinessReview.U().isEmpty()) {
          break label331;
        }
        j.setText(StringUtils.a(paramContext, 2131230751, paramYelpBusinessReview.U().size(), new String[0]));
        j.setVisibility(0);
        return;
        paramUser = paramContext.getString(2131166479, new Object[] { paramUser.Z() });
        break;
        label234:
        if (paramYelpBusinessReview.V() == null)
        {
          f.setVisibility(8);
          g.setVisibility(8);
          paramUser = h;
          if (paramYelpBusinessReview.D()) {}
          for (int m = 0;; m = 8)
          {
            paramUser.setVisibility(m);
            break;
          }
        }
        f.setVisibility(0);
        h.setVisibility(8);
        g.setVisibility(8);
        break label116;
        label319:
        i.setVisibility(8);
      }
      label331:
      j.setVisibility(8);
    }
  }
  
  private static class b
  {
    private final ImageView a;
    private final TextView b;
    private final TextView c;
    private final TextView d;
    private final ImageView e;
    private final View f;
    private final ImageView g;
    private final TextView h;
    private final TextView i;
    private final View j;
    private final SpannedImageButton k;
    private final View l;
    
    private b(View paramView)
    {
      a = ((ImageView)paramView.findViewById(2131690217));
      b = ((TextView)paramView.findViewById(2131690218));
      c = ((TextView)paramView.findViewById(2131690216));
      d = ((TextView)paramView.findViewById(2131689846));
      e = ((ImageView)paramView.findViewById(2131690208));
      f = paramView.findViewById(2131690498);
      g = ((ImageView)paramView.findViewById(2131690533));
      h = ((TextView)paramView.findViewById(2131690636));
      i = ((TextView)paramView.findViewById(2131690797));
      j = paramView.findViewById(2131689741);
      k = ((SpannedImageButton)paramView.findViewById(2131690462));
      l = paramView.findViewById(2131689508);
    }
    
    private void a(Tip paramTip, Context paramContext, User paramUser, t paramt, d.c paramc)
    {
      a.setImageResource(2130838895);
      boolean bool = AppData.b().q().a(paramUser.i());
      TextView localTextView = b;
      if (bool)
      {
        paramUser = paramContext.getString(2131166202);
        localTextView.setText(paramUser);
        c.setText(StringUtils.a(paramContext, StringUtils.Format.LONG, paramTip.d()));
        h.setText(paramTip.e());
        d.setText(paramTip.o());
        paramt.a(paramTip.p()).a(e);
        if (paramTip.r() == null) {
          break label238;
        }
        paramt.a(paramTip.r().f()).a(g);
        g.setVisibility(0);
        label138:
        paramUser = f;
        if (!paramTip.m()) {
          break label250;
        }
      }
      label238:
      label250:
      for (int m = 0;; m = 8)
      {
        paramUser.setVisibility(m);
        i.setText(paramTip.a(paramContext));
        i.setOnClickListener(new d.b.1(this, paramTip));
        if (!bool) {
          break label257;
        }
        l.setVisibility(0);
        l.setOnClickListener(new d.b.2(this, paramTip));
        return;
        paramUser = paramContext.getString(2131166688, new Object[] { paramUser.a() });
        break;
        g.setVisibility(8);
        break label138;
      }
      label257:
      l.setVisibility(8);
      j.setOnClickListener(new d.b.3(this, paramTip));
      k.setChecked(paramTip.g().c());
      k.setOnClickListener(new d.b.4(this, paramc, paramTip));
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(Tip paramTip);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */