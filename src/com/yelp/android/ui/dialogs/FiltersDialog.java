package com.yelp.android.ui.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.DialogFragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.AttributeFilter;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.Filter.BusinessState;
import com.yelp.android.serializable.Filter.Sort;
import com.yelp.android.serializable.at;
import com.yelp.android.ui.panels.CommonLoadingSpinner;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.h;
import com.yelp.android.ui.util.j;
import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.YelpHoloSpinner;
import com.yelp.android.util.BigCity;
import com.yelp.android.util.f;
import com.yelp.android.util.o;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class FiltersDialog
  extends DialogFragment
{
  final Runnable a = new ad(this);
  private final TwoTierButton[] b = new TwoTierButton[4];
  private bs c;
  private ScrollToLoadListView d;
  private Filter e;
  private AttributeFilters f;
  private y g;
  private y h;
  private HashSet<String> i;
  private String j;
  private String k;
  private HashMap<String, Integer> l;
  private Activity m;
  private Calendar n;
  private YelpHoloSpinner o;
  private YelpHoloSpinner p;
  private HashSet<Integer> q;
  private boolean r;
  
  public static FiltersDialog a(Filter paramFilter, AttributeFilters paramAttributeFilters, boolean paramBoolean)
  {
    FiltersDialog localFiltersDialog = new FiltersDialog();
    localFiltersDialog.setArguments(b(paramFilter, paramAttributeFilters, paramBoolean));
    localFiltersDialog.setStyle(1, 2131689817);
    return localFiltersDialog;
  }
  
  private void a()
  {
    bv localbv = c.a(2131492904);
    if (localbv != null) {
      ((j)a).clear();
    }
  }
  
  private void a(TwoTierButton paramTwoTierButton, boolean paramBoolean)
  {
    paramTwoTierButton.setChecked(paramBoolean);
    TextView localTextView = paramTwoTierButton.getLabel();
    Activity localActivity = m;
    if (paramTwoTierButton.isChecked()) {}
    for (int i1 = 2131689615;; i1 = 2131689616)
    {
      localTextView.setTextAppearance(localActivity, i1);
      return;
    }
  }
  
  private static Bundle b(Filter paramFilter, AttributeFilters paramAttributeFilters, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    Filter localFilter = paramFilter;
    if (paramFilter == null) {
      localFilter = new Filter(new AttributeFilters());
    }
    localBundle.putParcelable("SEARCH FILTER", localFilter);
    localBundle.putParcelable("SUGGESTED FILTERS", paramAttributeFilters);
    localBundle.putSerializable("TIME", localFilter.getOpenTime());
    localBundle.putString("DISTANCE", getDistancea);
    localBundle.putString("SORT", localFilter.getSort().getLabel(AppData.b()).toString());
    localBundle.putBoolean("SEARCHING", paramBoolean);
    paramFilter = new ArrayList();
    if (localFilter.getBusinessState().contains(Filter.BusinessState.OPEN)) {
      paramFilter.add("OPEN_NOW");
    }
    paramAttributeFilters = localFilter.getAttributes().getSuggestedFilters().iterator();
    while (paramAttributeFilters.hasNext()) {
      paramFilter.add(((AttributeFilter)paramAttributeFilters.next()).getAlias());
    }
    localBundle.putStringArray("CHECKED", (String[])paramFilter.toArray(new String[0]));
    return localBundle;
  }
  
  private Filter b()
  {
    ArrayList localArrayList = new ArrayList();
    EnumSet localEnumSet = EnumSet.noneOf(Filter.BusinessState.class);
    Object localObject1 = g.b();
    if (h != null) {
      ((HashSet)localObject1).addAll(h.b());
    }
    localObject1 = ((HashSet)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      if (((String)localObject2).equals("OPEN_NOW")) {
        localEnumSet.add(Filter.BusinessState.OPEN);
      } else if (f.getAttribute((String)localObject2) != null) {
        localArrayList.add(f.getAttribute((String)localObject2));
      }
    }
    localObject1 = Filter.Sort.Default;
    if (k.equals(Filter.Sort.Distance.getLabel(m).toString()))
    {
      localObject1 = Filter.Sort.Distance;
      if (!TextUtils.isEmpty(j)) {
        break label299;
      }
    }
    label299:
    double d1;
    for (Object localObject2 = new at("", 0.0D);; localObject2 = new at(j, d1))
    {
      Iterator localIterator = EnumSet.of(Filter.BusinessState.$, Filter.BusinessState.$$, Filter.BusinessState.$$$, Filter.BusinessState.$$$$).iterator();
      TwoTierButton[] arrayOfTwoTierButton = b;
      int i2 = arrayOfTwoTierButton.length;
      int i1 = 0;
      while (i1 < i2)
      {
        TwoTierButton localTwoTierButton = arrayOfTwoTierButton[i1];
        Filter.BusinessState localBusinessState = (Filter.BusinessState)localIterator.next();
        if (localTwoTierButton.isChecked()) {
          localEnumSet.add(localBusinessState);
        }
        i1 += 1;
      }
      if (!k.equals(Filter.Sort.Rating.getLabel(m).toString())) {
        break;
      }
      localObject1 = Filter.Sort.Rating;
      break;
      d1 = o.d(((Integer)l.get(j)).intValue());
    }
    return new Filter(localEnumSet, g.c(), (at)localObject2, (Filter.Sort)localObject1, new AttributeFilters(localArrayList));
  }
  
  private void c()
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = Filter.Sort.Default.getLabel(m).toString();
    arrayOfString[1] = Filter.Sort.Rating.getLabel(m).toString();
    arrayOfString[2] = Filter.Sort.Distance.getLabel(m).toString();
    ArrayAdapter localArrayAdapter = new ArrayAdapter(m, 2130903208, 2131493541, arrayOfString);
    h localh = new h(new View[0]);
    View localView = m.getLayoutInflater().inflate(2130903207, d, false);
    p = ((YelpHoloSpinner)localView.findViewById(2131492963));
    p.setOnItemSelectedListener(new ag(this));
    p.setAdapter(localArrayAdapter);
    int i1 = 0;
    if (i1 < arrayOfString.length) {
      if (!arrayOfString[i1].equals(k)) {}
    }
    for (;;)
    {
      p.setSelection(i1);
      localh.b(localView);
      c.a(2131165996, bw.a(getString(2131165996), localh).a());
      return;
      i1 += 1;
      break;
      i1 = 0;
    }
  }
  
  private void d()
  {
    l = new HashMap();
    boolean bool = AppData.b().g().a(m);
    if (bool)
    {
      i1 = 2131230734;
      if (!bool) {
        break label147;
      }
      i2 = 2131230730;
      label44:
      if (BigCity.isBigCity(AppData.b().n().c()))
      {
        if (!bool) {
          break label154;
        }
        i1 = 2131230733;
        label68:
        if (!bool) {
          break label161;
        }
      }
    }
    label147:
    label154:
    label161:
    for (int i2 = 2131230729;; i2 = 2131230727)
    {
      localObject1 = getResources().getStringArray(i2);
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).add(getResources().getString(2131165992));
      int i3 = localObject1.length;
      i2 = 0;
      while (i2 < i3)
      {
        ((ArrayList)localObject2).add(localObject1[i2]);
        i2 += 1;
      }
      i1 = 2131230732;
      break;
      i2 = 2131230728;
      break label44;
      i1 = 2131230731;
      break label68;
    }
    Object localObject3 = getResources().getIntArray(i1);
    l.put(getResources().getString(2131165992), Integer.valueOf(0));
    int i1 = 0;
    i2 = 0;
    while (i1 < localObject1.length)
    {
      if (localObject1[i1].equals(j)) {
        i2 = i1 + 1;
      }
      l.put(localObject1[i1], Integer.valueOf(localObject3[i1]));
      i1 += 1;
    }
    Object localObject1 = new ArrayAdapter(m, 2130903208, 2131493541, (List)localObject2);
    Object localObject2 = new h(new View[0]);
    localObject3 = m.getLayoutInflater().inflate(2130903207, d, false);
    o = ((YelpHoloSpinner)((View)localObject3).findViewById(2131492963));
    o.setOnItemSelectedListener(new ah(this));
    o.setAdapter((SpinnerAdapter)localObject1);
    o.setSelection(i2);
    ((h)localObject2).b((View)localObject3);
    c.a(2131165993, bw.a(getString(2131165993), (BaseAdapter)localObject2).a());
  }
  
  private void e()
  {
    int i3 = 0;
    g = new y();
    i = new HashSet();
    Object localObject1 = new AttributeFilter("OPEN_NOW", getResources().getString(2131165816));
    g.c(localObject1);
    localObject1 = f.getSuggestedFilters();
    Object localObject2;
    if (!((List)localObject1).isEmpty())
    {
      int i1 = 0;
      int i2;
      for (;;)
      {
        i2 = i3;
        if (i1 >= ((List)localObject1).size()) {
          break;
        }
        localObject2 = (AttributeFilter)((List)localObject1).get(i1);
        if (((AttributeFilter)localObject2).isPopular())
        {
          ((List)localObject1).remove(i1);
          ((List)localObject1).add(0, localObject2);
        }
        i1 += 1;
      }
      while ((i2 < 3) && (i2 < ((List)localObject1).size()))
      {
        g.c(((List)localObject1).get(i2));
        i.add(((AttributeFilter)((List)localObject1).get(i2)).getAlias());
        i2 += 1;
      }
    }
    c.a(2131166127, bw.a(getString(2131166127), g).a());
    if (r)
    {
      localObject1 = new PanelLoading(getActivity());
      ((PanelLoading)localObject1).setSpinner(CommonLoadingSpinner.SMALL);
      localObject2 = new av();
      ((h)localObject2).b((View)localObject1);
      c.a(2131492904, bw.a((BaseAdapter)localObject2).a());
    }
  }
  
  private void f()
  {
    h = new y();
    Iterator localIterator = f.getSuggestedFilters().iterator();
    while (localIterator.hasNext())
    {
      AttributeFilter localAttributeFilter = (AttributeFilter)localIterator.next();
      if (!i.contains(localAttributeFilter.getAlias())) {
        h.c(localAttributeFilter);
      }
    }
    c.a(2131165882, bw.a(getString(2131165882), h).a());
  }
  
  private void g()
  {
    h localh = new h(new View[0]);
    c.a(2131165994, bw.a(getString(2131165994), localh).a());
    View localView = m.getLayoutInflater().inflate(2130903148, d, false);
    b[0] = ((TwoTierButton)localView.findViewById(2131493388));
    b[1] = ((TwoTierButton)localView.findViewById(2131493389));
    b[2] = ((TwoTierButton)localView.findViewById(2131493390));
    b[3] = ((TwoTierButton)localView.findViewById(2131493391));
    TwoTierButton[] arrayOfTwoTierButton = b;
    int i3 = arrayOfTwoTierButton.length;
    int i1 = 0;
    int i2 = 1;
    while (i1 < i3)
    {
      TwoTierButton localTwoTierButton = arrayOfTwoTierButton[i1];
      localTwoTierButton.getValue().setVisibility(8);
      localTwoTierButton.getLabel().setGravity(17);
      String str = AppData.b().g().a(i2);
      localTwoTierButton.getLabel().setTextAppearance(m, 2131689616);
      localTwoTierButton.setLabel(str);
      localTwoTierButton.setOnClickListener(new ai(this, localTwoTierButton, i2));
      if (q.contains(Integer.valueOf(i2))) {
        a(localTwoTierButton, true);
      }
      i2 += 1;
      i1 += 1;
    }
    localh.b(localView);
  }
  
  public void a(AttributeFilters paramAttributeFilters)
  {
    r = false;
    if ((f != null) && (f.getSuggestedFilters().isEmpty()))
    {
      f = paramAttributeFilters;
      a(g.b());
      d.f();
      a();
    }
  }
  
  public void a(HashSet<String> paramHashSet)
  {
    if (f == null) {
      f = new AttributeFilters();
    }
    c = new bs();
    g();
    e();
    d();
    c();
    f();
    g.a(paramHashSet);
    if (h != null) {
      h.a(paramHashSet);
    }
    g.a(n);
    d.setAdapter(c);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    m = getActivity();
    if (paramBundle != null) {}
    for (;;)
    {
      e = ((Filter)paramBundle.getParcelable("SEARCH FILTER"));
      f = ((AttributeFilters)paramBundle.getParcelable("SUGGESTED FILTERS"));
      n = ((Calendar)paramBundle.getSerializable("TIME"));
      j = paramBundle.getString("DISTANCE");
      k = paramBundle.getString("SORT");
      r = paramBundle.getBoolean("SEARCHING");
      q = new HashSet();
      localObject = e.getPrices();
      int i1 = 0;
      while (i1 < localObject.length)
      {
        if (localObject[i1] != 0) {
          q.add(Integer.valueOf(i1 + 1));
        }
        i1 += 1;
      }
      paramBundle = getArguments();
    }
    Object localObject = LayoutInflater.from(m).inflate(2130903187, null);
    d = ((ScrollToLoadListView)((View)localObject).findViewById(2131493087));
    if (r)
    {
      Handler localHandler = new Handler();
      d.e();
      localHandler.postDelayed(a, 5000L);
    }
    a(f.a(paramBundle.getStringArray("CHECKED")));
    paramBundle = new bl(m);
    paramBundle.a((View)localObject);
    paramBundle.a(2131165818);
    paramBundle.a(2131166500, new ae(this));
    paramBundle.b(2131165456, new af(this));
    return paramBundle.a();
  }
  
  public void onPause()
  {
    p.onDetachedFromWindow();
    o.onDetachedFromWindow();
    super.onPause();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("SEARCH FILTER", b());
    paramBundle.putParcelable("SUGGESTED FILTERS", f);
    paramBundle.putSerializable("TIME", g.c());
    paramBundle.putString("DISTANCE", j);
    paramBundle.putString("SORT", k);
    paramBundle.putBoolean("SEARCHING", r);
    paramBundle.putStringArray("CHECKED", (String[])g.b().toArray(new String[0]));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FiltersDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */