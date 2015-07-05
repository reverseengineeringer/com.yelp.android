package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.a.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class p
  extends au<o>
{
  private static int a = 0;
  private static int b = 1;
  private static int c = 2;
  private static int d = 3;
  private static final LayoutInflater.Factory g = new q();
  private YelpBusiness e;
  private final Collection<o> f;
  
  public p(Collection<? extends o> paramCollection, YelpBusiness paramYelpBusiness)
  {
    e = paramYelpBusiness;
    f = paramCollection;
    g_();
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    e = paramYelpBusiness;
    g_();
  }
  
  public void g_()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
      if (localo.shouldShow(e)) {
        localArrayList.add(localo);
      }
    }
    a(localArrayList);
  }
  
  public int getItemViewType(int paramInt)
  {
    Object localObject = (o)getItem(paramInt);
    if ((localObject instanceof BusinessBasicInfo))
    {
      localObject = (BusinessBasicInfo)localObject;
      switch (r.a[localObject.ordinal()])
      {
      default: 
        return c;
      case 1: 
        return b;
      }
      return a;
    }
    return c;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    o localo = (o)getItem(paramInt);
    Object localObject1;
    Object localObject2;
    Object localObject3;
    label143:
    int i;
    if (paramView == null)
    {
      localObject1 = LayoutInflater.from(paramViewGroup.getContext());
      paramView = (View)localObject1;
      if (localo.equals(BusinessBasicInfo.MORE_INFO))
      {
        paramView = ((LayoutInflater)localObject1).cloneInContext(paramViewGroup.getContext());
        paramView.setFactory(g);
      }
      paramView = paramView.inflate(2130903138, paramViewGroup, false);
      localObject1 = new s(paramView);
      paramView.setTag(localObject1);
      paramViewGroup = paramViewGroup.getContext();
      localObject2 = paramViewGroup.getResources();
      paramInt = localo.getIcon(paramViewGroup, e);
      localObject3 = localo.getIconUrl(e);
      if (paramInt == 0) {
        break label436;
      }
      a.setImageDrawable(((Resources)localObject2).getDrawable(paramInt));
      a.setVisibility(0);
      paramInt = localo.getTintColor();
      if (paramInt != 0)
      {
        localObject3 = a.getDrawable();
        ((Drawable)localObject3).mutate();
        localObject3 = a.c((Drawable)localObject3);
        a.a((Drawable)localObject3, paramInt);
        a.setImageDrawable((Drawable)localObject3);
      }
      i = localo.getTitleColor();
      if (paramInt == 0) {
        break label479;
      }
      b.setTextColor(paramInt);
      label216:
      localObject2 = localo.getTitle(paramViewGroup, e);
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        break label521;
      }
      if (localo.equals(BusinessBasicInfo.CALL)) {
        b.setTextAppearance(paramViewGroup, 2131689620);
      }
      if (localo.equals(BusinessDealsOffers.CALL_TO_ACTION)) {
        b.setSingleLine(true);
      }
      b.setText((CharSequence)localObject2);
      b.setVisibility(0);
      label299:
      paramViewGroup = localo.getSubtitle(paramViewGroup, e);
      if (TextUtils.isEmpty(paramViewGroup)) {
        break label534;
      }
      paramViewGroup = SpannableString.valueOf(paramViewGroup);
      if (Linkify.addLinks(paramViewGroup, 15))
      {
        AnalyticsSpan.addAnalyticsToTextViewWithUrls(c, EventIri.OpenUrl);
        c.setMovementMethod(LinkMovementMethod.getInstance());
        c.setFocusable(false);
      }
      c.setText(paramViewGroup);
      c.setVisibility(0);
    }
    for (;;)
    {
      if (!localo.equals(BusinessDealsOffers.CALL_TO_ACTION)) {
        break label547;
      }
      c.setSingleLine(false);
      c.setMaxLines(2);
      c.setEllipsize(TextUtils.TruncateAt.END);
      return paramView;
      localObject1 = (s)paramView.getTag();
      break;
      label436:
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        a.setImageUrl((String)localObject3);
        a.setVisibility(0);
        break label143;
      }
      a.setVisibility(8);
      break label143;
      label479:
      if (i != 0)
      {
        b.setTextColor(((Resources)localObject2).getColor(i));
        break label216;
      }
      b.setTextColor(((Resources)localObject2).getColor(2131361808));
      break label216;
      label521:
      b.setVisibility(8);
      break label299;
      label534:
      c.setVisibility(8);
    }
    label547:
    if (localo.isSubtitleExpanded())
    {
      c.setSingleLine(false);
      c.setEllipsize(null);
      return paramView;
    }
    c.setSingleLine(true);
    c.setEllipsize(TextUtils.TruncateAt.END);
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */