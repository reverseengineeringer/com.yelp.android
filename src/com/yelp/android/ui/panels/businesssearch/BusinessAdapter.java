package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.content.res.Resources;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.ao;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.services.r;
import com.yelp.android.services.s;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cq;
import com.yelp.android.ui.util.i;
import com.yelp.android.ui.util.x;
import com.yelp.android.ui.widgets.CompassIndicator;
import com.yelp.android.util.RemoteImageExceptionCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;

public class BusinessAdapter<T extends f>
  extends au<T>
  implements i
{
  protected final j a;
  protected final Context b;
  private final EnumSet<BusinessAdapter.DisplayFeature> c = EnumSet.noneOf(BusinessAdapter.DisplayFeature.class);
  private final boolean d;
  private final SparseArray<CharSequence> e = new SparseArray();
  private int f;
  private Location g;
  private View.OnClickListener h;
  private final x<T, String> i = new a(this);
  private final x<T, Pair<String, String>> j = new b(this);
  private final x<T, String[]> k = new c(this);
  
  public BusinessAdapter(Context paramContext)
  {
    this(paramContext, true);
  }
  
  public BusinessAdapter(Context paramContext, Bundle paramBundle) {}
  
  public BusinessAdapter(Context paramContext, boolean paramBoolean)
  {
    d = paramBoolean;
    a = h.c(paramContext);
    b = paramContext;
    if (d)
    {
      a(i);
      a(j);
      a(k);
    }
  }
  
  private void a(e parame)
  {
    ((RelativeLayout.LayoutParams)f.getLayoutParams()).setMargins(ao.n, ao.a(4), 0, 0);
    cq localcq = cp.a(f);
    b = 0;
    cp.a(f, localcq);
    if (f.getVisibility() == 8) {
      ((RelativeLayout.LayoutParams)a.getLayoutParams()).addRule(0, 2131493750);
    }
    ((RelativeLayout.LayoutParams)e.getLayoutParams()).addRule(1, i.getId());
    ((RelativeLayout.LayoutParams)d.getLayoutParams()).addRule(0, f.getId());
    localcq = cp.a(e);
    b = ao.m;
    cp.a(e, localcq);
  }
  
  private void b()
  {
    g = null;
    e.clear();
  }
  
  public View a(YelpBusiness paramYelpBusiness, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    Resources localResources = localContext.getResources();
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903277, paramViewGroup, false);
      localView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      localView.setTag(new e(localView));
    }
    e locale = (e)localView.getTag();
    locale.a();
    TextView localTextView = a;
    paramViewGroup = (CharSequence)e.get(paramInt);
    if (d)
    {
      paramView = paramViewGroup;
      if (!TextUtils.isEmpty(paramViewGroup)) {}
    }
    else
    {
      paramViewGroup = paramYelpBusiness.getDisplayNameForBusinessSearchResult(localContext);
      paramView = paramViewGroup;
      if (c.contains(BusinessAdapter.DisplayFeature.NUMBERED))
      {
        paramView = paramViewGroup;
        if (!c.contains(BusinessAdapter.DisplayFeature.AD)) {
          paramView = localContext.getString(2131166224, new Object[] { Integer.valueOf(f + paramInt + 1), paramViewGroup });
        }
      }
    }
    e.append(paramInt, paramView);
    localTextView.setText(paramView);
    a.a(paramYelpBusiness.getPhotoUrl()).a(RemoteImageExceptionCallback.INSTANCE).b(2130837648).a(c);
    if (c.contains(BusinessAdapter.DisplayFeature.ALTERNATE_NAMES))
    {
      paramView = b;
      paramViewGroup = paramYelpBusiness.getAlternateNameString(localContext);
      if (TextUtils.isEmpty(paramViewGroup)) {
        paramView.setVisibility(8);
      }
    }
    else
    {
      int m;
      if (c.contains(BusinessAdapter.DisplayFeature.RATING))
      {
        paramView = d;
        m = paramYelpBusiness.getReviewCount();
        paramView.setText(localResources.getQuantityString(2131623970, m, new Object[] { Integer.valueOf(m) }));
        cp.a(paramView, paramYelpBusiness.getAvgRating());
        paramView.setVisibility(0);
      }
      if (c.contains(BusinessAdapter.DisplayFeature.ADDRESS))
      {
        paramView = i;
        paramView.setText(paramYelpBusiness.getAddressForBusinessSearchResult());
        paramView.setVisibility(0);
      }
      if (c.contains(BusinessAdapter.DisplayFeature.CATEGORY))
      {
        paramViewGroup = g;
        if (!d) {
          break label1000;
        }
        paramView = (String)i.a(paramInt, localContext, getItem(paramInt));
        label423:
        paramViewGroup.setText(paramView);
        paramViewGroup.setVisibility(0);
      }
      if (c.contains(BusinessAdapter.DisplayFeature.CLOSES_IN))
      {
        paramView = h;
        paramViewGroup = r.a(localContext, (YelpHoursPair[])paramYelpBusiness.getHours().toArray(new YelpHoursPair[0]), paramYelpBusiness.getTimeZone());
        if ((paramViewGroup.a()) && (!paramYelpBusiness.isClosed()) && (paramViewGroup.f()))
        {
          m = (int)paramViewGroup.g();
          paramView.setText(localResources.getQuantityString(2131623938, m, new Object[] { Integer.valueOf(m) }));
          paramView.setVisibility(0);
        }
      }
      if (c.contains(BusinessAdapter.DisplayFeature.PRICE))
      {
        paramView = e;
        m = paramYelpBusiness.getPrice();
        paramViewGroup = AppData.b().g();
        paramView.setText(paramYelpBusiness.getLocalizedPrice());
        paramView.setContentDescription(paramViewGroup.a(localContext, m, paramYelpBusiness.getCountry()));
        paramView.setVisibility(0);
      }
      if (!c.contains(BusinessAdapter.DisplayFeature.DISTANCE)) {
        break label1071;
      }
      if (!d) {
        break label1021;
      }
      paramView = (Pair)j.a(paramInt, localContext, getItem(paramInt));
      label645:
      if ((paramView == null) || (TextUtils.isEmpty((CharSequence)first))) {
        break label1042;
      }
      f.setText((CharSequence)first);
      f.setContentDescription((CharSequence)second);
      f.setVisibility(0);
      if (k != null)
      {
        k.a(paramYelpBusiness.getLatitude(), paramYelpBusiness.getLongitude(), paramYelpBusiness.getDisplayName());
        k.setVisibility(0);
      }
      label738:
      if (c.contains(BusinessAdapter.DisplayFeature.AD)) {
        l.setVisibility(0);
      }
      if (c.contains(BusinessAdapter.DisplayFeature.BOOKMARK))
      {
        if (!paramYelpBusiness.isBookmarked()) {
          break label1108;
        }
        r.setVisibility(0);
        a(locale);
      }
      label795:
      if (c.contains(BusinessAdapter.DisplayFeature.CHECKINS)) {
        if (!d) {
          break label1121;
        }
      }
    }
    label1000:
    label1021:
    label1042:
    label1071:
    label1108:
    label1121:
    for (paramView = (String[])k.a(paramInt, localContext, getItem(paramInt));; paramView = (String[])k.a(localContext, getItem(paramInt)))
    {
      if (paramView != null)
      {
        locale.b();
        p.setText(paramView[0]);
        q.setText(paramView[1]);
        a.a(paramView[2]).a(RemoteImageExceptionCallback.INSTANCE).b(2130837660).a(o);
      }
      if (c.contains(BusinessAdapter.DisplayFeature.DIVIDER)) {
        u.setVisibility(0);
      }
      if (c.contains(BusinessAdapter.DisplayFeature.BOOKMARK_BUTTON))
      {
        t.setVisibility(0);
        t.setOnClickListener(h);
        t.setTag(Integer.valueOf(paramInt));
        if (!paramYelpBusiness.isBookmarked()) {
          break label1142;
        }
        t.setImageResource(2130837663);
      }
      return localView;
      paramView.setText(paramViewGroup);
      paramView.setVisibility(0);
      break;
      paramView = (String)i.a(localContext, getItem(paramInt));
      break label423;
      paramView = (Pair)j.a(localContext, getItem(paramInt));
      break label645;
      f.setVisibility(4);
      if (k == null) {
        break label738;
      }
      k.setVisibility(4);
      break label738;
      if (f != null) {
        f.setVisibility(4);
      }
      if (k == null) {
        break label738;
      }
      k.setVisibility(4);
      break label738;
      r.setVisibility(8);
      break label795;
    }
    label1142:
    t.setImageResource(2130837662);
    return localView;
  }
  
  public YelpBusiness a(int paramInt)
  {
    return ((f)super.getItem(paramInt)).getBusiness();
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("contents", new ArrayList(a()));
    paramBundle.putSerializable("features", c);
    paramBundle.putBoolean("use_caching", d);
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    h = paramOnClickListener;
  }
  
  public void a(List paramList)
  {
    super.a(paramList);
    b();
  }
  
  public void a(List paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
    b();
  }
  
  public void a(BusinessAdapter.DisplayFeature... paramVarArgs)
  {
    int n = paramVarArgs.length;
    int m = 0;
    while (m < n)
    {
      BusinessAdapter.DisplayFeature localDisplayFeature = paramVarArgs[m];
      c.add(localDisplayFeature);
      m += 1;
    }
  }
  
  public void b(int paramInt)
  {
    f = paramInt;
  }
  
  public void b(BusinessAdapter.DisplayFeature... paramVarArgs)
  {
    int n = paramVarArgs.length;
    int m = 0;
    while (m < n)
    {
      BusinessAdapter.DisplayFeature localDisplayFeature = paramVarArgs[m];
      c.remove(localDisplayFeature);
      m += 1;
    }
  }
  
  public void c(Collection<BusinessAdapter.DisplayFeature> paramCollection)
  {
    c.addAll(paramCollection);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    YelpBusiness localYelpBusiness = a(paramInt);
    if ((c.contains(BusinessAdapter.DisplayFeature.BOOKMARK)) && (localYelpBusiness.getRecentCheckInFriends() != null) && (localYelpBusiness.isBookmarked())) {
      return 3;
    }
    if (localYelpBusiness.getRecentCheckInFriends() != null) {
      return 2;
    }
    if ((c.contains(BusinessAdapter.DisplayFeature.BOOKMARK)) && (localYelpBusiness.isBookmarked())) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a(a(paramInt), paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 4;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.BusinessAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */