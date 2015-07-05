package com.yelp.android.ui.activities.events;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
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
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.MapView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.Event.SubscriptionStatus;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.dialogs.FlagContentDialog;
import com.yelp.android.ui.dialogs.UserFeedbackDialog;
import com.yelp.android.ui.map.MapSpannableLinearLayout;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.f;
import com.yelp.android.ui.map.l;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.cj;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.RoundedImageView;
import com.yelp.android.ui.widgets.SpannableLinearLayout;
import com.yelp.android.ui.widgets.SpannableRelativeLayout;
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
  private ba a;
  private bs b;
  private YelpMap<by> c;
  private EventRequestFragment d;
  private al e;
  private af g;
  private Event h;
  private EventAttendees i;
  private IriSource j;
  private boolean k;
  private boolean l;
  private final com.yelp.android.ui.widgets.o m = new q(this);
  private final View.OnClickListener n = new r(this);
  private final f<by> o = new s(this);
  private final View.OnClickListener p = new t(this);
  private final GoogleMap.OnMapClickListener q = new i(this);
  private final View.OnClickListener r = new j(this);
  private final com.yelp.android.ui.dialogs.r s = new k(this);
  
  private void F()
  {
    Object localObject = b.a(2131493907);
    int i1;
    if (localObject == null)
    {
      localObject = new cj(2130903311);
      if (h.getType() == Event.EventType.ELITE)
      {
        i1 = 2131165584;
        bv localbv = bw.a(getString(i1), (BaseAdapter)localObject).a(2131493851, 0, ao.c).a(2130772318).a();
        b.a(2131493907, localbv);
      }
    }
    for (;;)
    {
      if ((h()) && (((cj)localObject).isEmpty())) {
        ((cj)localObject).a(h.getUser(), false);
      }
      return;
      i1 = 2131166618;
      break;
      localObject = (cj)((com.yelp.android.ui.activities.profile.s)a).a();
    }
  }
  
  private void G()
  {
    new ObjectDirtyEvent(h, "com.yelp.android.events.update").a(getActivity());
  }
  
  private void H()
  {
    if (h.getPhoto() == null) {
      return;
    }
    List localList = Collections.singletonList(h.getPhoto());
    startActivity(ActivityMediaViewer.c(getActivity(), h.getId(), localList, 0));
    AppData.a(EventIri.EventPullOpenPhoto, "event_id", h.getId());
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
    b = new bs();
    getActivity().setTitle(h.getName());
    k();
    e.a(b, m());
    g.a(b, m());
    l();
    b(paramBundle);
    u();
    v();
    F();
    m().setAdapter(b);
    m().setSelector(2131362006);
    if (h()) {
      m().f();
    }
    k = true;
    w();
  }
  
  private void a(IriSource paramIriSource)
  {
    Object localObject = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra("beginTime", h.getBeginTime()).putExtra("title", h.getName()).putExtra("eventLocation", h.getFormattedLocation()).putExtra("description", h.getFormattedDescription()).putExtra("eventTimeZone", TimeZone.getTimeZone(h.getTimezone()));
    if (h.getTimeEnd() != 0L) {
      ((Intent)localObject).putExtra("endTime", h.getEndTime());
    }
    startActivity((Intent)localObject);
    localObject = new HashMap();
    ((Map)localObject).put("event_id", h.getId());
    paramIriSource.addParameter((Map)localObject);
    AppData.a(EventIri.EventAddToCalendar, (Map)localObject);
  }
  
  private void b(Bundle paramBundle)
  {
    View localView1 = getActivity().getLayoutInflater().inflate(2130903305, m(), false);
    View localView2 = localView1.findViewById(2131493371);
    MapSpannableLinearLayout localMapSpannableLinearLayout1 = (MapSpannableLinearLayout)localView2;
    c = localMapSpannableLinearLayout1.getYelpMap();
    SpannableRelativeLayout localSpannableRelativeLayout = (SpannableRelativeLayout)localView1.findViewById(2131493372);
    TextView localTextView1 = (TextView)localSpannableRelativeLayout.findViewById(2131493834);
    TextView localTextView2 = (TextView)localSpannableRelativeLayout.findViewById(2131493835);
    MapSpannableLinearLayout localMapSpannableLinearLayout2;
    if (h.hasBusiness())
    {
      localMapSpannableLinearLayout2 = (MapSpannableLinearLayout)localView2;
      l locall = new l(getActivity(), h.getBusiness());
      localMapSpannableLinearLayout2.b(h.getBusiness(), locall, h.getBusiness().getAssetForMap(), paramBundle, true);
      if (localMapSpannableLinearLayout1.a())
      {
        c.setInfoWindowListener(o);
        locall.a(c.getMapView().getMap(), q);
        c.c();
      }
      localTextView1.setText(h.getAddress().replace("\n", ", "));
      localTextView2.setText(h.getBusiness().getGeneralAddress());
      if (TextUtils.isEmpty(localTextView2.getText())) {
        localTextView2.setVisibility(8);
      }
      if (!localMapSpannableLinearLayout1.a())
      {
        localView2.setVisibility(8);
        if (!h.hasBusiness()) {
          break label450;
        }
        paramBundle = (SpannableRelativeLayout)localView1.findViewById(2131493833);
        e(paramBundle);
        paramBundle.setLeft(true);
      }
    }
    for (;;)
    {
      com.yelp.android.ui.util.k.a(localSpannableRelativeLayout, 2131165348, h.getAddress());
      localSpannableRelativeLayout.setOnClickListener(r);
      b.a(2130903305, bw.a(new com.yelp.android.ui.util.h(new View[] { localView1 })).a(2130772318).a());
      return;
      localMapSpannableLinearLayout2 = (MapSpannableLinearLayout)localView2;
      localMapSpannableLinearLayout2.a(h, new com.yelp.android.ui.map.d(getActivity()), 2130838156, paramBundle, true);
      if (localMapSpannableLinearLayout2.a())
      {
        localView2.setOnClickListener(r);
        c.c();
      }
      localTextView1.setText(h.getLocationName());
      localTextView2.setText(h.getAddress().replace("\n", ", "));
      localTextView2.setTextColor(localTextView1.getCurrentTextColor());
      break;
      label450:
      localSpannableRelativeLayout.setLeft(true);
    }
  }
  
  private void e()
  {
    if (AppData.b().m().e())
    {
      f();
      return;
    }
    boolean bool = AppData.b().m().c();
    FragmentActivity localFragmentActivity = getActivity();
    if (bool) {}
    for (int i1 = 2131166781;; i1 = 2131166045)
    {
      startActivityForResult(ActivityLogin.a(localFragmentActivity, i1), 1024);
      return;
    }
  }
  
  private void e(View paramView)
  {
    RoundedImageView localRoundedImageView = (RoundedImageView)paramView.findViewById(2131493648);
    TextView localTextView1 = (TextView)paramView.findViewById(2131493020);
    TextView localTextView2 = (TextView)paramView.findViewById(2131493676);
    localTextView1.setText(h.getBusiness().getDisplayName());
    int i1 = h.getBusiness().getReviewCount();
    localTextView2.setText(getResources().getQuantityString(2131623970, i1, new Object[] { Integer.valueOf(i1) }));
    cp.a(localTextView2, h.getBusiness().getAvgRating());
    com.bumptech.glide.h.a(this).a(h.getBusiness().getPhotoUrl()).a(localRoundedImageView);
    paramView.setVisibility(0);
    paramView.setOnClickListener(p);
  }
  
  private void f()
  {
    AppData.a(ViewIri.FlagEvent, "event_id", h.getId());
    FlagContentDialog localFlagContentDialog = FlagContentDialog.a(getString(2131166343), getString(2131166452));
    localFlagContentDialog.a(s);
    localFlagContentDialog.show(getActivity().getSupportFragmentManager(), "tag_flag_dialog");
  }
  
  private void g()
  {
    v();
    F();
    m().f();
  }
  
  private boolean h()
  {
    return (i != null) || (l);
  }
  
  private void i()
  {
    a(null, 0);
    ((com.yelp.android.ui.activities.profile.s)b.a(2130903364).a).clear();
    i = null;
    l = false;
    d.a(h);
  }
  
  private void k()
  {
    if (a == null)
    {
      a = new ba(m(), m, n);
      m().addHeaderView(a);
    }
    a.a(h, m());
  }
  
  private void l()
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903303, m(), false);
    ((TextView)localView.findViewById(2131493825)).setText(h.getFormattedTimeRange(AppData.b()));
    ((TextView)localView.findViewById(2131493828)).setText(h.getFormattedShortDescription(getActivity()));
    localView.findViewById(2131493822).setOnClickListener(new h(this));
    localView.findViewById(2131493145).setOnClickListener(new m(this));
    b.a(2130903303, bw.a(new com.yelp.android.ui.util.h(new View[] { localView })).a());
  }
  
  private void u()
  {
    FragmentActivity localFragmentActivity = getActivity();
    View localView1 = localFragmentActivity.getLayoutInflater().inflate(2130903299, m(), false);
    localView1.findViewById(2131493814).setOnClickListener(new n(this, localFragmentActivity));
    Object localObject = (SpannableLinearLayout)localView1.findViewById(2131493815);
    ((SpannableLinearLayout)localObject).setOnClickListener(new o(this, EventIri.EventAddToCalendar));
    View localView2 = localView1.findViewById(2131493816);
    int i1;
    if ((!TextUtils.isEmpty(h.getTalkTopicId())) && (h.getType() != Event.EventType.ELITE))
    {
      i1 = h.getTalkTopicUserCount();
      localObject = (TextView)localView1.findViewById(2131493817);
      if (i1 == 0)
      {
        ((TextView)localObject).setVisibility(8);
        localObject = new HashMap();
        ((Map)localObject).put("event_id", h.getId());
        localView2.setOnClickListener(new p(this, EventIri.EventTalk, (Map)localObject, localFragmentActivity));
      }
    }
    for (;;)
    {
      b.a(2130903299, bw.a(new com.yelp.android.ui.util.h(new View[] { localView1 })).a(2130772318).a());
      return;
      ((TextView)localObject).setText(getResources().getQuantityString(2131623946, i1, new Object[] { Integer.valueOf(i1) }));
      break;
      localView2.setVisibility(8);
      ((SpannableLinearLayout)localObject).setRight(true);
      ((SpannableLinearLayout)localObject).refreshDrawableState();
    }
  }
  
  private void v()
  {
    Object localObject1 = b.a(2130903364);
    if (localObject1 == null)
    {
      localObject1 = new aq();
      localObject2 = bw.a(getString(2131165941), (BaseAdapter)localObject1).a(2130772319).a(2131492893, ao.l, ao.c).a();
      b.a(2130903364, (bv)localObject2);
    }
    while ((!h()) || (!((aq)localObject1).isEmpty()) || (i == null) || (i.getAttendees().isEmpty()))
    {
      return;
      localObject1 = (aq)((com.yelp.android.ui.activities.profile.s)a).a();
    }
    int i2 = Math.min(i.getAttendees().size(), 3);
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    while (i1 < i2)
    {
      localArrayList.add(i.getAttendees().get(i1));
      i1 += 1;
    }
    if (i.getAttendees().size() > 3) {}
    for (Object localObject2 = i.getAttendeesText();; localObject2 = null)
    {
      ((aq)localObject1).a(localArrayList, (String)localObject2);
      ((aq)localObject1).notifyDataSetChanged();
      return;
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getAdapter().getItem(paramInt);
    if ((paramListView instanceof User))
    {
      if (paramListView == aq.a) {
        startActivity(ActivityEventAttendees.a(getActivity(), h, i));
      }
    }
    else {
      return;
    }
    AppData.a(EventIri.EventUser, "event_id", h.getId());
    startActivity(ActivityUserProfile.a(getActivity(), (User)paramListView));
  }
  
  public void a(YelpException paramYelpException, EventRequestFragment.RequestType paramRequestType)
  {
    j();
    switch (l.a[paramRequestType.ordinal()])
    {
    default: 
      cr.a(paramYelpException.getMessage(AppData.b()), 1);
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
      g();
      return;
    case 3: 
      e.a(paramYelpException);
      return;
    }
    g.a(paramYelpException);
  }
  
  public void a(Object paramObject, EventRequestFragment.RequestType paramRequestType)
  {
    boolean bool = true;
    int i1 = 1;
    j();
    switch (l.a[paramRequestType.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        return;
        if (h == null) {}
        for (;;)
        {
          h = ((Event)paramObject);
          if (i1 != 0) {
            E();
          }
          a(null);
          g.b();
          w();
          G();
          if (l) {
            break;
          }
          d.a(h);
          return;
          i1 = 0;
        }
        i = ((EventAttendees)paramObject);
        l = true;
      } while (!isAdded());
      g();
      return;
    case 3: 
      e.a(paramObject);
      w();
      G();
      i();
      return;
    case 5: 
    case 6: 
      if (paramRequestType == EventRequestFragment.RequestType.EVENT_ENABLE_REMINDER_REQUEST) {}
      for (;;)
      {
        h.setReminderNotification(bool);
        e.b();
        G();
        return;
        bool = false;
      }
    case 7: 
      cr.a((String)paramObject, 1);
      return;
    case 4: 
    case 8: 
      g.a((EventRsvp)paramObject);
      G();
      i();
      return;
    }
    g.a();
    G();
    i();
  }
  
  public void a(boolean paramBoolean, String paramString, ArrayList<String> paramArrayList)
  {
    if (paramBoolean)
    {
      g.a(paramArrayList);
      return;
    }
    g.a(paramArrayList, paramString);
  }
  
  EventRequestFragment c()
  {
    return d;
  }
  
  Event d()
  {
    return h;
  }
  
  public b getIri()
  {
    if (h == null) {
      return null;
    }
    return ViewIri.Event;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new HashMap();
    paramb.put("event_id", h.getId());
    if (j == IriSource.EventsSections) {
      paramb.put("section_alias", getArguments().getString("section_alias"));
    }
    j.addParameter(paramb);
    return paramb;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (h != null) {
      a(paramBundle);
    }
    for (;;)
    {
      if (d.a()) {
        a(null, 0);
      }
      if ((k) && (!l)) {
        d.a(h);
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
    case 1024: 
      f();
      return;
    case 1050: 
      e.a();
      return;
    }
    a(null, 0);
    d.a(h.getId(), h.getType());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      h = ((Event)paramBundle.getParcelable("saved_event"));
      j = ((IriSource)paramBundle.getSerializable("saved_event_source"));
      i = ((EventAttendees)paramBundle.getParcelable("saved_event_attendees"));
      l = paramBundle.getBoolean("saved_event_attendees_request_done");
    }
    for (;;)
    {
      d = ((EventRequestFragment)getFragmentManager().findFragmentByTag("tag_request_fragment"));
      if (d == null)
      {
        d = new EventRequestFragment();
        getFragmentManager().beginTransaction().add(d, "tag_request_fragment").commit();
      }
      d.setTargetFragment(this, 0);
      FlagContentDialog localFlagContentDialog = (FlagContentDialog)getFragmentManager().findFragmentByTag("tag_flag_dialog");
      if (localFlagContentDialog != null) {
        localFlagContentDialog.a(s);
      }
      e = new al(this, paramBundle);
      g = new af(this, paramBundle);
      setHasOptionsMenu(true);
      return;
      h = ((Event)getArguments().getParcelable("args_event"));
      j = ((IriSource)getArguments().getSerializable("event_source"));
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = true;
    if (!k) {
      return;
    }
    paramMenuInflater.inflate(2131755020, paramMenu);
    paramMenuInflater = paramMenu.findItem(2131494142);
    if (h.getSubscriptionStatusEnum() != Event.SubscriptionStatus.Unassigned)
    {
      bool1 = true;
      paramMenuInflater.setVisible(bool1);
      paramMenu = paramMenu.findItem(2131494143);
      if (h.getType() == Event.EventType.ELITE) {
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
    case 2131494128: 
      getActivity().showDialog(1);
      return true;
    case 2131494142: 
      e.a(Event.SubscriptionStatus.Unassigned);
      return true;
    case 2131493815: 
      a(IriSource.Menu);
      return true;
    }
    e();
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
    paramBundle.putParcelable("saved_event", h);
    paramBundle.putSerializable("saved_event_source", j);
    paramBundle.putBoolean("saved_event_attendees_request_done", l);
    if (i != null) {
      paramBundle.putParcelable("saved_event_attendees", i);
    }
    if (c != null) {
      c.a(paramBundle);
    }
    e.a(paramBundle);
    g.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */