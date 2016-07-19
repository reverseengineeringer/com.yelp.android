package com.yelp.android.ui.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.Space;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.yelp.android.analytics.GADimensions;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.DisplayGenericSearchFilterParameters;
import com.yelp.android.serializable.Distance;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.GenericSearchFilter;
import com.yelp.android.serializable.GenericSearchFilter.FilterType;
import com.yelp.android.serializable.OpenNowGenericSearchFilter;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformGenericSearchFilter;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.serializable.ReservationGenericSearchFilter;
import com.yelp.android.serializable.SearchLocation;
import com.yelp.android.serializable.Sort;
import com.yelp.android.ui.activities.search.vertical.DeliveryPickupViewController;
import com.yelp.android.ui.activities.search.vertical.DeliveryPickupViewController.a;
import com.yelp.android.ui.activities.search.vertical.ReservationSearchController;
import com.yelp.android.ui.panels.CommonLoadingSpinner;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.e;
import com.yelp.android.ui.util.g;
import com.yelp.android.ui.util.x;
import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.YelpHoloSpinner;
import com.yelp.android.util.BigCity;
import com.yelp.android.util.i;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class FiltersDialog
  extends DialogFragment
{
  final Runnable a = new FiltersDialog.6(this);
  private final TwoTierButton[] b = new TwoTierButton[4];
  private aj c;
  private ScrollToLoadListView d;
  private c e;
  private c f;
  private a g;
  private HashSet<String> h;
  private String i;
  private String j;
  private HashMap<String, Integer> k;
  private Activity l;
  private Calendar m;
  private YelpHoloSpinner n;
  private YelpHoloSpinner o;
  private ArrayList<DisplayGenericSearchFilter> p;
  private boolean q;
  private ReservationSearchController r;
  private DeliveryPickupViewController s;
  private boolean t;
  private final DeliveryPickupViewController.a u = new FiltersDialog.7(this);
  
  public static FiltersDialog a(Filter paramFilter, boolean paramBoolean, List<DisplayGenericSearchFilter> paramList1, List<DisplayGenericSearchFilter> paramList2, SearchLocation paramSearchLocation)
  {
    FiltersDialog localFiltersDialog = new FiltersDialog();
    localFiltersDialog.setArguments(b(paramFilter, paramBoolean, paramList1, paramList2, paramSearchLocation));
    return localFiltersDialog;
  }
  
  private void a()
  {
    e locale = new e(new View[0]);
    locale.b(new Space(getContext()));
    c.a(2131689521, aj.c.a(getString(2131166181), locale).b());
  }
  
  private void a(DisplayGenericSearchFilter paramDisplayGenericSearchFilter)
  {
    if (paramDisplayGenericSearchFilter != null)
    {
      if (paramDisplayGenericSearchFilter.i() != null) {
        s.a(paramDisplayGenericSearchFilter.i().e());
      }
      paramDisplayGenericSearchFilter = ((PlatformGenericSearchFilter)paramDisplayGenericSearchFilter.h()).f();
      if ((paramDisplayGenericSearchFilter != null) && ("delivery_current_location".equalsIgnoreCase(paramDisplayGenericSearchFilter.a()))) {
        s.a(true);
      }
    }
  }
  
  private void a(PlatformFilter paramPlatformFilter, String paramString)
  {
    Object localObject2 = null;
    Object localObject1;
    Object localObject3;
    for (;;)
    {
      try
      {
        a locala = (a)l;
        Filter localFilter = c();
        if (paramPlatformFilter != null) {
          localFilter.a(new PlatformGenericSearchFilter(paramPlatformFilter, true));
        }
        localObject1 = com.yelp.android.ui.activities.search.d.a(p);
        if (localObject1 != null)
        {
          localObject3 = localFilter.c().iterator();
          if (((Iterator)localObject3).hasNext())
          {
            GenericSearchFilter localGenericSearchFilter = (GenericSearchFilter)((Iterator)localObject3).next();
            if ((!TextUtils.equals(localGenericSearchFilter.e(), ((DisplayGenericSearchFilter)localObject1).a())) || (localGenericSearchFilter.c() == ((DisplayGenericSearchFilter)localObject1).d())) {
              continue;
            }
            localObject3 = new com.yelp.android.g.a();
            ((Map)localObject3).put("alias", ((DisplayGenericSearchFilter)localObject1).a());
            if (((DisplayGenericSearchFilter)localObject1).d()) {
              break label390;
            }
            bool = true;
            ((Map)localObject3).put("toggle_on", Boolean.valueOf(bool));
            ((Map)localObject3).put("requestId", locala.k());
            ((Map)localObject3).put("from_toggle", Boolean.valueOf(false));
            AppData.a(EventIri.SearchPromotedFilterToggle, (Map)localObject3);
          }
        }
        localObject1 = com.yelp.android.ui.activities.search.d.a(p, GenericSearchFilter.FilterType.Reservation);
        if ((localObject1 != null) && (((DisplayGenericSearchFilter)localObject1).d()))
        {
          MOBILE_VERTICAL_SEARCH_ENTRYvalue = "filters_menu";
          MOBILE_VERTICAL_SEARCH_TYPEvalue = "reservation";
        }
        if (paramPlatformFilter != null)
        {
          MOBILE_VERTICAL_SEARCH_ENTRYvalue = "filters_menu";
          localObject3 = GADimensions.MOBILE_VERTICAL_SEARCH_TYPE;
          if (!"pickup".equalsIgnoreCase(paramPlatformFilter.a())) {
            break label395;
          }
          localObject1 = "pickup";
          value = ((String)localObject1);
        }
        if (paramString != null) {
          break label403;
        }
        paramString = null;
        localObject3 = com.yelp.android.ui.activities.search.d.b(localFilter.c(), GenericSearchFilter.FilterType.Platform);
        localObject1 = paramString;
        if (localObject3 != null)
        {
          localObject1 = paramString;
          if (f.b().contains(((GenericSearchFilter)localObject3).e()))
          {
            if (!((GenericSearchFilter)localObject3).c()) {
              break;
            }
            paramPlatformFilter.a((SearchLocation)getArguments().getParcelable("SEARCH_LOCATION"));
            localObject1 = paramString;
          }
        }
        locala.a(localFilter, (SearchLocation)localObject1);
        dismiss();
        return;
      }
      catch (ClassCastException paramPlatformFilter)
      {
        throw new ClassCastException("Activity should implement the FiltersDialogListener interface");
      }
      label390:
      boolean bool = false;
      continue;
      label395:
      localObject1 = "delivery";
      continue;
      label403:
      paramString = new SearchLocation(paramString);
    }
    paramPlatformFilter = ((PlatformGenericSearchFilter)localObject3).f();
    if (paramPlatformFilter == null) {}
    for (paramPlatformFilter = (PlatformFilter)localObject2;; paramPlatformFilter = paramPlatformFilter.e())
    {
      localObject1 = paramPlatformFilter;
      break;
    }
  }
  
  private void a(TwoTierButton paramTwoTierButton, boolean paramBoolean)
  {
    paramTwoTierButton.setChecked(paramBoolean);
    TextView localTextView = paramTwoTierButton.getLabel();
    Activity localActivity = l;
    if (paramTwoTierButton.isChecked()) {}
    for (int i1 = 2131296526;; i1 = 2131296487)
    {
      localTextView.setTextAppearance(localActivity, i1);
      return;
    }
  }
  
  private void a(HashSet<String> paramHashSet)
  {
    if (p.isEmpty()) {
      return;
    }
    e locale = new e(new View[0]);
    c.a(2131166048, aj.c.a(locale).b());
    View localView = l.getLayoutInflater().inflate(2130903166, d, false);
    b[0] = ((TwoTierButton)localView.findViewById(2131690080));
    b[1] = ((TwoTierButton)localView.findViewById(2131690081));
    b[2] = ((TwoTierButton)localView.findViewById(2131690082));
    b[3] = ((TwoTierButton)localView.findViewById(2131690083));
    DisplayGenericSearchFilter[] arrayOfDisplayGenericSearchFilter = new DisplayGenericSearchFilter[4];
    Object localObject1 = p.iterator();
    DisplayGenericSearchFilter localDisplayGenericSearchFilter;
    while (((Iterator)localObject1).hasNext())
    {
      localDisplayGenericSearchFilter = (DisplayGenericSearchFilter)((Iterator)localObject1).next();
      if (localDisplayGenericSearchFilter.a().startsWith("RestaurantsPriceRange2."))
      {
        arrayOfDisplayGenericSearchFilter[(Integer.parseInt(localDisplayGenericSearchFilter.a().substring("RestaurantsPriceRange2.".length())) - 1)] = localDisplayGenericSearchFilter;
        h.add(localDisplayGenericSearchFilter.a());
      }
    }
    localObject1 = b;
    int i3 = localObject1.length;
    int i1 = 0;
    int i2 = 1;
    while (i1 < i3)
    {
      localDisplayGenericSearchFilter = localObject1[i1];
      localDisplayGenericSearchFilter.getValue().setVisibility(8);
      localDisplayGenericSearchFilter.getLabel().setGravity(17);
      Object localObject2 = AppData.b().g().a(i2);
      localDisplayGenericSearchFilter.getLabel().setTextAppearance(l, 2131296487);
      localDisplayGenericSearchFilter.setLabel((CharSequence)localObject2);
      localObject2 = arrayOfDisplayGenericSearchFilter[(i2 - 1)];
      if (localObject2 != null) {
        a(localDisplayGenericSearchFilter, a((DisplayGenericSearchFilter)localObject2, paramHashSet));
      }
      localDisplayGenericSearchFilter.setOnClickListener(new FiltersDialog.5(this, (DisplayGenericSearchFilter)localObject2, paramHashSet, localDisplayGenericSearchFilter));
      i2 += 1;
      i1 += 1;
    }
    locale.b(localView);
  }
  
  private void a(HashSet<String> paramHashSet, Bundle paramBundle)
  {
    c = new aj();
    h = new HashSet();
    a(paramHashSet, paramBundle);
    a();
    a(paramHashSet);
    f();
    e();
    d();
    g();
    paramHashSet.removeAll(a.a);
    e.a(paramHashSet);
    if (f != null) {
      f.a(paramHashSet);
    }
    e.a(m);
    d.setAdapter(c);
    paramHashSet = p.iterator();
    while (paramHashSet.hasNext()) {
      if (((DisplayGenericSearchFilter)paramHashSet.next()).h().e().equals("OnlineMessageThisBusiness")) {
        AppData.a(EventIri.SearchFilterRequestAQuoteShown);
      }
    }
  }
  
  private void a(Set<String> paramSet, Bundle paramBundle)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramBundle != null) && (paramBundle.getBoolean("RESERVATION_FILTER_SET"))) {}
    for (int i1 = 1;; i1 = 0)
    {
      paramBundle = p.iterator();
      while (paramBundle.hasNext())
      {
        Object localObject = (DisplayGenericSearchFilter)paramBundle.next();
        GenericSearchFilter.FilterType localFilterType = ((DisplayGenericSearchFilter)localObject).c();
        if ((localFilterType == GenericSearchFilter.FilterType.Reservation) || (localFilterType == GenericSearchFilter.FilterType.Platform))
        {
          h.add(((DisplayGenericSearchFilter)localObject).h().e());
          localArrayList.add(localObject);
        }
        if ((localFilterType == GenericSearchFilter.FilterType.Reservation) && (i1 == 0))
        {
          localObject = ((ReservationGenericSearchFilter)((DisplayGenericSearchFilter)localObject).h()).f();
          if (localObject != null)
          {
            r.a((ReservationFilter)localObject);
            q = true;
          }
        }
      }
    }
    g = new a(getActivity(), localArrayList, paramSet, r, s);
    c.a(2131689506, aj.c.a(g).b());
  }
  
  public static boolean a(DisplayGenericSearchFilter paramDisplayGenericSearchFilter, Set<String> paramSet)
  {
    return paramDisplayGenericSearchFilter.h().c() ^ paramSet.contains(paramDisplayGenericSearchFilter.a());
  }
  
  private static Bundle b(Filter paramFilter, boolean paramBoolean, List<DisplayGenericSearchFilter> paramList1, List<DisplayGenericSearchFilter> paramList2, SearchLocation paramSearchLocation)
  {
    Bundle localBundle = new Bundle();
    Object localObject = paramFilter;
    if (paramFilter == null) {
      localObject = new Filter();
    }
    localBundle.putString("DISTANCE", ((Filter)localObject).d().c());
    localBundle.putString("SORT", ((Filter)localObject).b().getLabel(AppData.b()).toString());
    localBundle.putBoolean("SEARCHING", paramBoolean);
    paramFilter = new ArrayList();
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext())
    {
      localObject = (DisplayGenericSearchFilter)paramList1.next();
      if (!((DisplayGenericSearchFilter)localObject).d()) {
        paramFilter.add(((DisplayGenericSearchFilter)localObject).a());
      }
    }
    localBundle.putStringArray("CHANGED_IDS", (String[])paramFilter.toArray(new String[paramFilter.size()]));
    localBundle.putParcelableArrayList("FILTER", new ArrayList(paramList2));
    localBundle.putParcelable("SEARCH_LOCATION", paramSearchLocation);
    return localBundle;
  }
  
  private void b()
  {
    aj.b localb = c.a(2131689517);
    if (localb != null) {
      ((g)a).clear();
    }
  }
  
  private Filter c()
  {
    HashSet localHashSet = e.b();
    if (f != null) {
      localHashSet.addAll(f.b());
    }
    localHashSet.addAll(g.a());
    Object localObject1 = Sort.Default;
    if (j.equals(Sort.Distance.getLabel(l).toString())) {
      localObject1 = Sort.Distance;
    }
    label100:
    label129:
    label298:
    label320:
    label445:
    label454:
    for (;;)
    {
      Object localObject2;
      DisplayGenericSearchFilter localDisplayGenericSearchFilter;
      if (TextUtils.isEmpty(i))
      {
        localObject2 = new Distance("", 0.0D);
        localObject2 = new Filter((Distance)localObject2, (Sort)localObject1, new ArrayList());
        Iterator localIterator = p.iterator();
        if (!localIterator.hasNext()) {
          break label445;
        }
        localDisplayGenericSearchFilter = (DisplayGenericSearchFilter)localIterator.next();
        localObject1 = localDisplayGenericSearchFilter.h();
        if ((localDisplayGenericSearchFilter.c() != GenericSearchFilter.FilterType.OpenNow) || (!a(localDisplayGenericSearchFilter, localHashSet))) {
          break label320;
        }
        if (e.c() == null) {
          break label298;
        }
        localObject1 = e.c();
      }
      for (;;)
      {
        ((Filter)localObject2).a(OpenNowGenericSearchFilter.a((OpenNowGenericSearchFilter)localDisplayGenericSearchFilter.h(), (Calendar)localObject1, a(localDisplayGenericSearchFilter, localHashSet)));
        break label129;
        if (!j.equals(Sort.Rating.getLabel(l).toString())) {
          break label454;
        }
        localObject1 = Sort.Rating;
        break;
        double d1 = i.d(((Integer)k.get(i)).intValue());
        localObject2 = new Distance(i, d1);
        break label100;
        if (f.c() != null)
        {
          localObject1 = e.c();
          continue;
          if ((localDisplayGenericSearchFilter.c() == GenericSearchFilter.FilterType.Reservation) && (a(localDisplayGenericSearchFilter, localHashSet)))
          {
            localObject1 = r.f();
            r.c();
            ((Filter)localObject2).a(ReservationGenericSearchFilter.a((ReservationGenericSearchFilter)localDisplayGenericSearchFilter.h(), (ReservationFilter)localObject1, a(localDisplayGenericSearchFilter, localHashSet)));
            break label129;
          }
          if (localHashSet.contains(((GenericSearchFilter)localObject1).e()))
          {
            if (!((GenericSearchFilter)localObject1).c()) {}
            for (boolean bool = true;; bool = false)
            {
              ((Filter)localObject2).a(GenericSearchFilter.a((GenericSearchFilter)localObject1, bool));
              break;
            }
          }
          if (!((GenericSearchFilter)localObject1).c()) {
            break label129;
          }
          ((Filter)localObject2).a((GenericSearchFilter)localObject1);
          break label129;
          return (Filter)localObject2;
        }
        localObject1 = null;
      }
    }
  }
  
  private void d()
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = Sort.Default.getLabel(l).toString();
    arrayOfString[1] = Sort.Rating.getLabel(l).toString();
    arrayOfString[2] = Sort.Distance.getLabel(l).toString();
    ArrayAdapter localArrayAdapter = new ArrayAdapter(l, 2130903232, 2131690234, arrayOfString);
    e locale = new e(new View[0]);
    View localView = l.getLayoutInflater().inflate(2130903231, d, false);
    o = ((YelpHoloSpinner)localView.findViewById(2131690233));
    o.setOnItemSelectedListener(new FiltersDialog.3(this));
    o.setAdapter(localArrayAdapter);
    int i1 = 0;
    if (i1 < arrayOfString.length) {
      if (!arrayOfString[i1].equals(j)) {}
    }
    for (;;)
    {
      o.setSelection(i1);
      locale.b(localView);
      c.a(2131166050, aj.c.a(getString(2131166050), locale).b());
      return;
      i1 += 1;
      break;
      i1 = 0;
    }
  }
  
  private void e()
  {
    k = new HashMap();
    boolean bool = AppData.b().g().a(l);
    if (bool)
    {
      i1 = 2131558414;
      if (!bool) {
        break label147;
      }
      i2 = 2131558410;
      label44:
      if (BigCity.isBigCity(AppData.b().r().c()))
      {
        if (!bool) {
          break label154;
        }
        i1 = 2131558413;
        label68:
        if (!bool) {
          break label161;
        }
      }
    }
    label147:
    label154:
    label161:
    for (int i2 = 2131558409;; i2 = 2131558407)
    {
      localObject1 = getResources().getStringArray(i2);
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).add(getResources().getString(2131166046));
      int i3 = localObject1.length;
      i2 = 0;
      while (i2 < i3)
      {
        ((ArrayList)localObject2).add(localObject1[i2]);
        i2 += 1;
      }
      i1 = 2131558412;
      break;
      i2 = 2131558408;
      break label44;
      i1 = 2131558411;
      break label68;
    }
    Object localObject3 = getResources().getIntArray(i1);
    k.put(getResources().getString(2131166046), Integer.valueOf(0));
    int i1 = 0;
    i2 = 0;
    while (i1 < localObject1.length)
    {
      if (localObject1[i1].equals(i)) {
        i2 = i1 + 1;
      }
      k.put(localObject1[i1], Integer.valueOf(localObject3[i1]));
      i1 += 1;
    }
    Object localObject1 = new ArrayAdapter(l, 2130903232, 2131690234, (List)localObject2);
    Object localObject2 = new e(new View[0]);
    localObject3 = l.getLayoutInflater().inflate(2130903231, d, false);
    n = ((YelpHoloSpinner)((View)localObject3).findViewById(2131690233));
    n.setOnItemSelectedListener(new FiltersDialog.4(this));
    n.setAdapter((SpinnerAdapter)localObject1);
    n.setSelection(i2);
    ((e)localObject2).b((View)localObject3);
    c.a(2131166047, aj.c.a(getString(2131166047), (BaseAdapter)localObject2).b());
  }
  
  private void f()
  {
    int i1 = 0;
    e = new c(((FragmentActivity)l).getSupportFragmentManager());
    int i2;
    Object localObject;
    if (!p.isEmpty())
    {
      Collections.sort(p);
      i2 = 0;
      if ((i1 < 4) && (i2 < p.size()))
      {
        localObject = (DisplayGenericSearchFilter)p.get(i2);
        if (h.contains(((DisplayGenericSearchFilter)localObject).a())) {
          break label194;
        }
        e.d(localObject);
        h.add(((DisplayGenericSearchFilter)localObject).a());
        i1 += 1;
      }
    }
    label194:
    for (;;)
    {
      i2 += 1;
      break;
      c.a(2131166181, aj.c.a(e).b());
      if (t)
      {
        localObject = new PanelLoading(getActivity());
        ((PanelLoading)localObject).setSpinner(CommonLoadingSpinner.SMALL);
        x localx = new x();
        localx.b((View)localObject);
        c.a(2131689517, aj.c.a(localx).b());
      }
      return;
    }
  }
  
  private void g()
  {
    f = new c(((FragmentActivity)l).getSupportFragmentManager());
    Iterator localIterator = p.iterator();
    while (localIterator.hasNext())
    {
      DisplayGenericSearchFilter localDisplayGenericSearchFilter = (DisplayGenericSearchFilter)localIterator.next();
      if (!h.contains(localDisplayGenericSearchFilter.h().e())) {
        f.d(localDisplayGenericSearchFilter);
      }
    }
    c.a(2131165958, aj.c.a(getString(2131165958), f).b());
  }
  
  private void h()
  {
    PlatformDisambiguatedAddress localPlatformDisambiguatedAddress = null;
    r = ((ReservationSearchController)getFragmentManager().a("RESERVATION_VIEW_CONTROLLER"));
    if (r == null)
    {
      r = ReservationSearchController.a();
      getFragmentManager().a().a(r, "RESERVATION_VIEW_CONTROLLER").a();
    }
    s = ((DeliveryPickupViewController)getFragmentManager().a("DELIVERY_PICKUP_VIEW_CONTROLLER"));
    DisplayGenericSearchFilter localDisplayGenericSearchFilter;
    PlatformFilter localPlatformFilter;
    if (s == null)
    {
      localDisplayGenericSearchFilter = com.yelp.android.ui.activities.search.d.a(p, GenericSearchFilter.FilterType.Platform);
      if (localDisplayGenericSearchFilter == null) {
        break label206;
      }
      localPlatformFilter = ((PlatformGenericSearchFilter)localDisplayGenericSearchFilter.h()).f();
      if (localDisplayGenericSearchFilter.i() == null) {
        break label203;
      }
      localPlatformDisambiguatedAddress = localDisplayGenericSearchFilter.i().e();
    }
    for (;;)
    {
      if ((localPlatformFilter != null) && ("pickup".equalsIgnoreCase(localPlatformFilter.a()))) {}
      for (int i1 = 1;; i1 = 0)
      {
        s = DeliveryPickupViewController.a("filter", localPlatformDisambiguatedAddress, false, Integer.valueOf(i1));
        a(localDisplayGenericSearchFilter);
        getFragmentManager().a().a(s, "DELIVERY_PICKUP_VIEW_CONTROLLER").a();
        s.a(u);
        return;
      }
      label203:
      continue;
      label206:
      localPlatformFilter = null;
    }
  }
  
  public void a(List<DisplayGenericSearchFilter> paramList)
  {
    t = false;
    if ((p != null) && (p.isEmpty()))
    {
      if (paramList != null) {
        p = new ArrayList(paramList);
      }
      a(com.yelp.android.ui.activities.search.d.a(p, GenericSearchFilter.FilterType.Platform));
      paramList = e.b();
      paramList.addAll(g.a());
      a(paramList, null);
      d.f();
      b();
    }
  }
  
  public void dismiss()
  {
    super.dismiss();
    if ((s != null) && (s.isAdded())) {
      getFragmentManager().a().a(s).a();
    }
    if ((r != null) && (r.isAdded())) {
      getFragmentManager().a().a(r).a();
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    l = getActivity();
    if (paramBundle != null) {}
    for (Bundle localBundle = paramBundle;; localBundle = getArguments())
    {
      m = ((Calendar)localBundle.getSerializable("TIME"));
      i = localBundle.getString("DISTANCE");
      j = localBundle.getString("SORT");
      t = localBundle.getBoolean("SEARCHING");
      p = localBundle.getParcelableArrayList("FILTER");
      h();
      View localView = LayoutInflater.from(l).inflate(2130903210, null);
      d = ((ScrollToLoadListView)localView.findViewById(2131689771));
      if (t)
      {
        Handler localHandler = new Handler();
        d.e();
        localHandler.postDelayed(a, 5000L);
      }
      a(com.yelp.android.util.d.a(localBundle.getStringArray("CHANGED_IDS")), paramBundle);
      paramBundle = new d(l);
      paramBundle.a(localView);
      paramBundle.a(2131165900);
      paramBundle.a(2131166496, null);
      paramBundle.b(2131166925, new FiltersDialog.1(this));
      return paramBundle.a();
    }
  }
  
  public void onPause()
  {
    o.onDetachedFromWindow();
    n.onDetachedFromWindow();
    super.onPause();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putSerializable("TIME", e.c());
    paramBundle.putString("DISTANCE", i);
    paramBundle.putString("SORT", j);
    paramBundle.putBoolean("SEARCHING", t);
    paramBundle.putParcelableArrayList("FILTER", p);
    paramBundle.putBoolean("RESERVATION_FILTER_SET", q);
    HashSet localHashSet = e.b();
    if (g != null) {
      localHashSet.addAll(g.a());
    }
    paramBundle.putStringArray("CHANGED_IDS", (String[])localHashSet.toArray(new String[localHashSet.size()]));
  }
  
  public void onStart()
  {
    super.onStart();
    ((android.support.v7.app.d)getDialog()).a(-1).setOnClickListener(new FiltersDialog.2(this));
    ar.a(getDialog());
  }
  
  public static abstract interface a
  {
    public abstract void a(Filter paramFilter, SearchLocation paramSearchLocation);
    
    public abstract String k();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FiltersDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */