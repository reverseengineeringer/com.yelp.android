package com.yelp.android.ui.activities.events;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.c.e;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.Event.SubscriptionStatus;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.photoviewer.ActivityEventMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.dialogs.FlagContentDialog;
import com.yelp.android.ui.dialogs.UserFeedbackDialog;
import com.yelp.android.ui.dialogs.b;
import com.yelp.android.ui.map.MapSpannableLinearLayout;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.e.a;
import com.yelp.android.ui.map.k;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.ap;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.h;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.RoundedImageView;
import com.yelp.android.ui.widgets.SpannableLinearLayout;
import com.yelp.android.ui.widgets.SpannableRelativeLayout;
import com.yelp.android.ui.widgets.d.a;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

public class EventFragment
  extends YelpListFragment
{
  private g a;
  private aj b;
  private YelpMap<com.yelp.android.serializable.f> c;
  private EventRequestFragment d;
  private d e;
  private c f;
  private Event g;
  private EventAttendees i;
  private IriSource j;
  private boolean k;
  private boolean l;
  private final d.a m = new EventFragment.14(this);
  private final View.OnClickListener n = new EventFragment.15(this);
  private final e.a<com.yelp.android.serializable.f> o = new EventFragment.2(this);
  private final View.OnClickListener p = new EventFragment.3(this);
  private final c.e q = new EventFragment.4(this);
  private final View.OnClickListener r = new EventFragment.5(this);
  private final b s = new EventFragment.6(this);
  
  private void H()
  {
    if (g.J() == null) {
      return;
    }
    List localList = Collections.singletonList(g.J());
    startActivity(ActivityEventMediaViewer.a(getActivity(), g.I(), localList, 0));
    AppData.a(EventIri.EventPullOpenPhoto, "event_id", g.I());
  }
  
  public static EventFragment a(Event paramEvent, Event.EventType paramEventType, IriSource paramIriSource)
  {
    EventFragment localEventFragment = new EventFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("args_event", paramEvent);
    localBundle.putSerializable("event_type", paramEventType);
    localBundle.putSerializable("event_source", paramIriSource);
    localEventFragment.setArguments(localBundle);
    return localEventFragment;
  }
  
  public static EventFragment a(Event paramEvent, String paramString)
  {
    EventFragment localEventFragment = new EventFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("args_event", paramEvent);
    localBundle.putSerializable("event_source", IriSource.EventsSections);
    localBundle.putString("section_alias", paramString);
    localEventFragment.setArguments(localBundle);
    return localEventFragment;
  }
  
  public static EventFragment a(String paramString, Event.EventType paramEventType, IriSource paramIriSource)
  {
    EventFragment localEventFragment = new EventFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("event_id_or_alias", paramString);
    localBundle.putSerializable("event_type", paramEventType);
    localBundle.putSerializable("event_source", paramIriSource);
    localEventFragment.setArguments(localBundle);
    return localEventFragment;
  }
  
  private void a(Bundle paramBundle)
  {
    b = new aj();
    getActivity().setTitle(g.G());
    k();
    e.a(b, m());
    f.a(b, m());
    t();
    b(paramBundle);
    u();
    v();
    w();
    m().setAdapter(b);
    m().setSelector(2131624229);
    if (i()) {
      m().f();
    }
    k = true;
    y();
  }
  
  private void a(IriSource paramIriSource)
  {
    Object localObject = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra("beginTime", g.e()).putExtra("title", g.G()).putExtra("eventLocation", g.g()).putExtra("description", g.d()).putExtra("eventTimeZone", TimeZone.getTimeZone(g.x()));
    if (g.k() != 0L) {
      ((Intent)localObject).putExtra("endTime", g.f());
    }
    startActivity((Intent)localObject);
    localObject = new HashMap();
    ((Map)localObject).put("event_id", g.I());
    paramIriSource.addParameter((Map)localObject);
    AppData.a(EventIri.EventAddToCalendar, (Map)localObject);
  }
  
  private void b(Bundle paramBundle)
  {
    View localView1 = getActivity().getLayoutInflater().inflate(2130903401, m(), false);
    View localView2 = localView1.findViewById(2131690016);
    c = ((MapSpannableLinearLayout)localView2).getYelpMap();
    SpannableRelativeLayout localSpannableRelativeLayout = (SpannableRelativeLayout)localView1.findViewById(2131690053);
    TextView localTextView1 = (TextView)localSpannableRelativeLayout.findViewById(2131690670);
    TextView localTextView2 = (TextView)localSpannableRelativeLayout.findViewById(2131690671);
    if (g.c())
    {
      MapSpannableLinearLayout localMapSpannableLinearLayout = (MapSpannableLinearLayout)localView2;
      k localk = new k(getActivity(), g.t());
      localMapSpannableLinearLayout.b(g.t(), localk, g.t().B(), paramBundle, com.yelp.android.util.f.a());
      if (c.h())
      {
        c.setInfoWindowListener(o);
        paramBundle = new EventFragment.9(this);
        c.getMapView().a(new EventFragment.10(this, paramBundle));
        c.c();
      }
      localTextView1.setText(g.A().replace("\n", ", "));
      localTextView2.setText(g.t().l());
      if (TextUtils.isEmpty(localTextView2.getText())) {
        localTextView2.setVisibility(8);
      }
      if (!c.h())
      {
        localView2.setVisibility(8);
        if (!g.c()) {
          break label462;
        }
        paramBundle = (SpannableRelativeLayout)localView1.findViewById(2131690669);
        f(paramBundle);
        paramBundle.setLeft(true);
      }
    }
    for (;;)
    {
      h.a(localSpannableRelativeLayout, 2131165472, g.A());
      localSpannableRelativeLayout.setOnClickListener(r);
      b.a(2130903401, aj.c.a(new com.yelp.android.ui.util.e(new View[] { localView1 })).a(2130772428).b());
      return;
      ((MapSpannableLinearLayout)localView2).a(g, new com.yelp.android.ui.map.d(getActivity()), 2130838393, paramBundle, com.yelp.android.util.f.a());
      if (c.h())
      {
        localView2.setOnClickListener(r);
        c.c();
      }
      localTextView1.setText(g.y());
      localTextView2.setText(g.A().replace("\n", ", "));
      localTextView2.setTextColor(localTextView1.getCurrentTextColor());
      break;
      label462:
      localSpannableRelativeLayout.setLeft(true);
    }
  }
  
  private void f()
  {
    if (AppData.b().q().d())
    {
      g();
      return;
    }
    startActivityForResult(ActivityLogin.a(getActivity(), 2131165705, 2131166105), 1027);
  }
  
  private void f(View paramView)
  {
    RoundedImageView localRoundedImageView = (RoundedImageView)paramView.findViewById(2131690208);
    TextView localTextView1 = (TextView)paramView.findViewById(2131689684);
    TextView localTextView2 = (TextView)paramView.findViewById(2131690442);
    localTextView1.setText(g.t().z());
    int i1 = g.t().N();
    localTextView2.setText(getResources().getQuantityString(2131230757, i1, new Object[] { Integer.valueOf(i1) }));
    ar.a(localTextView2, g.t().P());
    t.a(this).a(g.t().au()).a(localRoundedImageView);
    paramView.setVisibility(0);
    paramView.setOnClickListener(p);
  }
  
  private void g()
  {
    AppData.a(ViewIri.FlagEvent, "event_id", g.I());
    FlagContentDialog localFlagContentDialog = FlagContentDialog.a(getString(2131166364), getString(2131166454));
    localFlagContentDialog.a(s);
    localFlagContentDialog.show(getActivity().getSupportFragmentManager(), "tag_flag_dialog");
  }
  
  private void h()
  {
    v();
    w();
    m().f();
  }
  
  private boolean i()
  {
    return (i != null) || (l);
  }
  
  private void j()
  {
    a(null, 0);
    ((com.yelp.android.ui.activities.profile.e)b.a(2130903463).a).clear();
    i = null;
    l = false;
    d.a(g);
  }
  
  private void k()
  {
    if (a == null)
    {
      a = new g(m(), m, n);
      m().addHeaderView(a);
    }
    a.a(g, m());
  }
  
  private void t()
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903399, m(), false);
    ((TextView)localView.findViewById(2131690661)).setText(g.a(AppData.b()));
    ((TextView)localView.findViewById(2131690664)).setText(g.b(getActivity()));
    localView.findViewById(2131690658).setOnClickListener(new EventFragment.1(this));
    localView.findViewById(2131689711).setOnClickListener(new EventFragment.8(this));
    b.a(2130903399, aj.c.a(new com.yelp.android.ui.util.e(new View[] { localView })).b());
  }
  
  private void u()
  {
    FragmentActivity localFragmentActivity = getActivity();
    View localView1 = localFragmentActivity.getLayoutInflater().inflate(2130903395, m(), false);
    localView1.findViewById(2131690650).setOnClickListener(new EventFragment.11(this, localFragmentActivity));
    Object localObject = (SpannableLinearLayout)localView1.findViewById(2131690651);
    ((SpannableLinearLayout)localObject).setOnClickListener(new EventFragment.12(this, EventIri.EventAddToCalendar));
    View localView2 = localView1.findViewById(2131690652);
    int i1;
    if ((!TextUtils.isEmpty(g.v())) && (g.K() != Event.EventType.ELITE))
    {
      i1 = g.m();
      localObject = (TextView)localView1.findViewById(2131690653);
      if (i1 == 0)
      {
        ((TextView)localObject).setVisibility(8);
        localObject = new HashMap();
        ((Map)localObject).put("event_id", g.I());
        localView2.setOnClickListener(new EventFragment.13(this, EventIri.EventTalk, (Map)localObject, localFragmentActivity));
      }
    }
    for (;;)
    {
      b.a(2130903395, aj.c.a(new com.yelp.android.ui.util.e(new View[] { localView1 })).a(2130772428).b());
      return;
      ((TextView)localObject).setText(getResources().getQuantityString(2131230730, i1, new Object[] { Integer.valueOf(i1) }));
      break;
      localView2.setVisibility(8);
      ((SpannableLinearLayout)localObject).setRight(true);
      ((SpannableLinearLayout)localObject).refreshDrawableState();
    }
  }
  
  private void v()
  {
    Object localObject1 = b.a(2130903463);
    if (localObject1 == null)
    {
      localObject1 = new e();
      localObject2 = aj.c.a(getString(2131166008), (BaseAdapter)localObject1).a(2130772429).a(2131689503, n.l, n.c).b();
      b.a(2130903463, (aj.b)localObject2);
    }
    while ((!i()) || (!((e)localObject1).isEmpty()) || (i == null) || (i.c().isEmpty()))
    {
      return;
      localObject1 = (e)((com.yelp.android.ui.activities.profile.e)a).a();
    }
    int i2 = Math.min(i.c().size(), 3);
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    while (i1 < i2)
    {
      localArrayList.add(i.c().get(i1));
      i1 += 1;
    }
    if (i.c().size() > 3) {}
    for (Object localObject2 = i.b();; localObject2 = null)
    {
      ((e)localObject1).a(localArrayList, (String)localObject2);
      ((e)localObject1).notifyDataSetChanged();
      return;
    }
  }
  
  private void w()
  {
    Object localObject = b.a(2131690076);
    int i1;
    if (localObject == null)
    {
      localObject = new ap(2130903408);
      if (g.K() == Event.EventType.ELITE)
      {
        i1 = 2131165659;
        aj.b localb = aj.c.a(getString(i1), (BaseAdapter)localObject).a(2131690690, 0, n.c).a(2130772428).b();
        b.a(2131690076, localb);
      }
    }
    for (;;)
    {
      if ((i()) && (((ap)localObject).isEmpty())) {
        ((ap)localObject).a(g.u(), false);
      }
      return;
      i1 = 2131166631;
      break;
      localObject = (ap)((com.yelp.android.ui.activities.profile.e)a).a();
    }
  }
  
  private void x()
  {
    new ObjectDirtyEvent(g, "com.yelp.android.events.update").a(getActivity());
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getAdapter().getItem(paramInt);
    if ((paramListView instanceof User))
    {
      if (paramListView == e.a) {
        startActivity(ActivityEventAttendees.a(getActivity(), g, i));
      }
    }
    else {
      return;
    }
    AppData.a(EventIri.EventUser, "event_id", g.I());
    startActivity(ActivityUserProfile.a(getActivity(), (User)paramListView));
  }
  
  public void a(YelpException paramYelpException, EventRequestFragment.RequestType paramRequestType)
  {
    l();
    switch (EventFragment.7.a[paramRequestType.ordinal()])
    {
    default: 
      as.a(paramYelpException.getMessage(AppData.b()), 1);
    case 1: 
      do
      {
        return;
      } while (!(paramYelpException instanceof ApiException));
      if (((ApiException)paramYelpException).getResultCode() == 12)
      {
        ((YelpActivity)getActivity()).populateError(ErrorType.NO_EVENT);
        return;
      }
      ((YelpActivity)getActivity()).populateError(paramYelpException);
      return;
    case 2: 
      l = true;
      h();
      return;
    case 3: 
      e.a(paramYelpException);
      return;
    }
    f.a(paramYelpException);
  }
  
  public void a(Object paramObject, EventRequestFragment.RequestType paramRequestType)
  {
    boolean bool = true;
    int i1 = 1;
    l();
    switch (EventFragment.7.a[paramRequestType.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        return;
        if (g == null) {}
        for (;;)
        {
          g = ((Event)paramObject);
          if (i1 != 0) {
            G();
          }
          a(null);
          f.b();
          y();
          x();
          if (l) {
            break;
          }
          d.a(g);
          return;
          i1 = 0;
        }
        i = ((EventAttendees)paramObject);
        l = true;
      } while (!isAdded());
      h();
      return;
    case 3: 
      e.a(paramObject);
      y();
      x();
      j();
      return;
    case 5: 
    case 6: 
      if (paramRequestType == EventRequestFragment.RequestType.EVENT_ENABLE_REMINDER_REQUEST) {}
      for (;;)
      {
        g.a(bool);
        e.b();
        x();
        return;
        bool = false;
      }
    case 7: 
      as.a((String)paramObject, 1);
      return;
    case 4: 
    case 8: 
      f.a((EventRsvp)paramObject);
      x();
      j();
      return;
    }
    f.a();
    x();
    j();
  }
  
  public void a(boolean paramBoolean, String paramString, ArrayList<String> paramArrayList)
  {
    if (paramBoolean)
    {
      f.a(paramArrayList);
      return;
    }
    f.a(paramArrayList, paramString);
  }
  
  EventRequestFragment c()
  {
    return d;
  }
  
  Event d()
  {
    return g;
  }
  
  public a getIri()
  {
    if (g == null) {
      return null;
    }
    return ViewIri.Event;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = new HashMap();
    parama.put("event_id", g.I());
    if (j == IriSource.EventsSections) {
      parama.put("section_alias", getArguments().getString("section_alias"));
    }
    j.addParameter(parama);
    return parama;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (g != null) {
      a(paramBundle);
    }
    for (;;)
    {
      if (d.a()) {
        a(null, 0);
      }
      if ((k) && (!l)) {
        d.a(g);
      }
      return;
      paramBundle = getArguments().getString("event_id_or_alias");
      if (!TextUtils.isEmpty(paramBundle))
      {
        if (!d.a())
        {
          Event.EventType localEventType = (Event.EventType)getArguments().getSerializable("event_type");
          d.a(paramBundle, localEventType);
        }
      }
      else {
        ((YelpActivity)getActivity()).populateError(ErrorType.NO_EVENT);
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {}
    switch (paramInt1)
    {
    default: 
      return;
    case 1027: 
      g();
      return;
    case 1059: 
      e.a();
      return;
    }
    a(null, 0);
    d.a(g.I(), g.K());
  }
  
  @SuppressLint({"CommitTransaction"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      g = ((Event)paramBundle.getParcelable("saved_event"));
      j = ((IriSource)paramBundle.getSerializable("saved_event_source"));
      i = ((EventAttendees)paramBundle.getParcelable("saved_event_attendees"));
      l = paramBundle.getBoolean("saved_event_attendees_request_done");
    }
    for (;;)
    {
      d = ((EventRequestFragment)getFragmentManager().a("tag_request_fragment"));
      if (d == null)
      {
        d = new EventRequestFragment();
        getFragmentManager().a().a(d, "tag_request_fragment").a();
      }
      d.setTargetFragment(this, 0);
      FlagContentDialog localFlagContentDialog = (FlagContentDialog)getFragmentManager().a("tag_flag_dialog");
      if (localFlagContentDialog != null) {
        localFlagContentDialog.a(s);
      }
      e = new d(this, paramBundle);
      f = new c(this, paramBundle);
      setHasOptionsMenu(true);
      return;
      g = ((Event)getArguments().getParcelable("args_event"));
      j = ((IriSource)getArguments().getSerializable("event_source"));
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = true;
    if (!k) {
      return;
    }
    paramMenuInflater.inflate(2131755022, paramMenu);
    paramMenuInflater = paramMenu.findItem(2131691016);
    if (g.h() != Event.SubscriptionStatus.Unassigned)
    {
      bool1 = true;
      paramMenuInflater.setVisible(bool1);
      paramMenu = paramMenu.findItem(2131691017);
      if (g.K() == Event.EventType.ELITE) {
        break label92;
      }
    }
    label92:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramMenu.setVisible(bool1);
      return;
      bool1 = false;
      break;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (c != null) {
      c.d();
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    a = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131691002: 
      a(new EventShareFormatter(g));
      return true;
    case 2131691016: 
      e.a(Event.SubscriptionStatus.Unassigned);
      return true;
    case 2131690651: 
      a(IriSource.Menu);
      return true;
    }
    f();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    if (c != null) {
      c.b();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (k) {
      a.b(m());
    }
    if (c != null) {
      c.c();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("saved_event", g);
    paramBundle.putSerializable("saved_event_source", j);
    paramBundle.putBoolean("saved_event_attendees_request_done", l);
    if (i != null) {
      paramBundle.putParcelable("saved_event_attendees", i);
    }
    if (c != null) {
      c.a(paramBundle);
    }
    e.a(paramBundle);
    f.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */