package com.yelp.android.ui.activities.events;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.android.serializable.EventRsvp.RsvpStatus;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.dialogs.CompleteRsvpDialog;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.h;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class af
{
  private EventFragment a;
  private ArrayList<String> b;
  private TextView c;
  private ViewGroup d;
  private View e;
  private View f;
  private View g;
  private TextView h;
  private TextView i;
  private Button j;
  private Button k;
  private boolean l = true;
  private boolean m = false;
  private final View.OnClickListener n = new ah(this);
  private final View.OnClickListener o = new ai(this);
  private final View.OnClickListener p = new aj(this);
  
  public af(EventFragment paramEventFragment, Bundle paramBundle)
  {
    a = paramEventFragment;
    if (paramBundle != null)
    {
      l = paramBundle.getBoolean("is_rsvp_button_enabled", true);
      m = paramBundle.getBoolean("should_open_rsvp_flow");
      b = paramBundle.getStringArrayList("saved_new_guests");
    }
  }
  
  private void a(String paramString)
  {
    e = a.getActivity().getLayoutInflater().inflate(2130903198, d, false);
    d.addView(e);
    ((TextView)e.findViewById(2131493033)).setText(paramString);
  }
  
  private void a(List<String> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      g.setVisibility(0);
      i.setText(TextUtils.join("\n", paramList.toArray()));
      paramList = StringUtils.a(a.getActivity(), 2131623955, paramList.size());
      h.setText(paramList);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    CompleteRsvpDialog localCompleteRsvpDialog = CompleteRsvpDialog.a(j().getRsvp(), paramBoolean);
    localCompleteRsvpDialog.setTargetFragment(a, 0);
    localCompleteRsvpDialog.show(a.getFragmentManager(), null);
  }
  
  private boolean c()
  {
    return j().getType() == Event.EventType.ELITE;
  }
  
  private void d()
  {
    if (d.getChildCount() > 0)
    {
      e = null;
      f = null;
      g = null;
      i = null;
      h = null;
      k = null;
      j = null;
      d.removeAllViews();
    }
    if (j().getRsvp().getUserHasReplied()) {
      if (j().hasPartyPass())
      {
        e();
        c.setText(2131165643);
        k.setText(2131165460);
        k.setEnabled(l);
        a(j().getRsvp().getEventRsvpStatusText());
        g();
        h();
      }
    }
    Object localObject;
    do
    {
      return;
      f();
      c.setText(2131166691);
      break;
      localObject = AppData.b().m();
      if ((c()) && (!((dc)localObject).k()))
      {
        c.setText(2131165751);
        a(a.getString(2131165745));
        e.setOnClickListener(new ag(this));
        e.findViewById(2131493345).setVisibility(0);
        return;
      }
      localObject = j().getRsvp().getStatus();
      c.setText(((EventRsvp.RsvpStatus)localObject).getRsvpTitle());
      if (((EventRsvp.RsvpStatus)localObject).canUserRSVP())
      {
        f();
        k.setText(((EventRsvp.RsvpStatus)localObject).getRsvpButtonText());
      }
    } while (localObject == EventRsvp.RsvpStatus.Open);
    a(j().getRsvp().getEventRsvpStatusText());
  }
  
  private void e()
  {
    View localView = a.getActivity().getLayoutInflater().inflate(2130903306, d, false);
    d.addView(localView);
    j = ((Button)localView.findViewById(2131493837));
    j.setOnClickListener(o);
    k = ((Button)localView.findViewById(2131493838));
    k.setOnClickListener(p);
  }
  
  private void f()
  {
    View localView = a.getActivity().getLayoutInflater().inflate(2130903308, d, false);
    d.addView(localView);
    k = ((Button)localView.findViewById(2131493838));
    k.setOnClickListener(p);
  }
  
  private void g()
  {
    f = a.getActivity().getLayoutInflater().inflate(2130903199, d, false);
    d.addView(f);
    ((TextView)f.findViewById(2131493438)).setText(AppData.b().m().t());
  }
  
  private void h()
  {
    FragmentActivity localFragmentActivity = a.getActivity();
    if (!j().getRsvp().getUserGuests().isEmpty())
    {
      g = localFragmentActivity.getLayoutInflater().inflate(2130903197, d, false);
      d.addView(g);
      i = ((TextView)g.findViewById(2131493508));
      h = ((TextView)g.findViewById(2131493507));
      g.setOnClickListener(n);
      a(j().getRsvp().getUserGuests());
    }
  }
  
  private void i()
  {
    m = false;
    if (j().getRsvp().getUserHasReplied())
    {
      a.a(null, 0);
      a.c().b(j());
      return;
    }
    EventRsvp localEventRsvp = j().getRsvp();
    if ((localEventRsvp.getGuestsAllowed() > 0) || (!TextUtils.isEmpty(localEventRsvp.getFreeformQuestion())))
    {
      a(false);
      return;
    }
    a(null, null);
  }
  
  private Event j()
  {
    return a.d();
  }
  
  public void a()
  {
    j().getRsvp().setUserGuests(b);
    a(b);
  }
  
  public void a(Bundle paramBundle)
  {
    if (k != null) {
      paramBundle.putBoolean("is_rsvp_button_enabled", k.isEnabled());
    }
    paramBundle.putBoolean("should_open_rsvp_flow", m);
    paramBundle.putStringArrayList("saved_new_guests", b);
  }
  
  public void a(YelpException paramYelpException)
  {
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 1700)) {
      k.setEnabled(false);
    }
    cr.a(paramYelpException.getMessage(AppData.b()), 1);
  }
  
  public void a(EventRsvp paramEventRsvp)
  {
    j().setRsvp(paramEventRsvp);
    d();
  }
  
  public void a(bs parambs, ViewGroup paramViewGroup)
  {
    FragmentActivity localFragmentActivity = a.getActivity();
    boolean bool = AppData.b().m().a(j().getUser().getUserId());
    if ((j().getRsvp() == null) || (j().getRsvp().getStatus() == EventRsvp.RsvpStatus.Locked) || (bool)) {
      return;
    }
    e = null;
    f = null;
    g = null;
    paramViewGroup = localFragmentActivity.getLayoutInflater().inflate(2130903307, paramViewGroup, false);
    d = ((ViewGroup)paramViewGroup.findViewById(2131493840));
    c = ((TextView)paramViewGroup.findViewById(2131493839));
    d();
    parambs.a(2130903307, bw.a(new h(new View[] { paramViewGroup })).a());
  }
  
  public void a(ArrayList<String> paramArrayList)
  {
    b = paramArrayList;
    a.a(null, 0);
    a.c().a(j(), paramArrayList);
  }
  
  public void a(ArrayList<String> paramArrayList, String paramString)
  {
    a.a(null, 0);
    a.c().a(j(), paramArrayList, paramString);
  }
  
  public void b()
  {
    dc localdc = AppData.b().m();
    boolean bool = localdc.a(j().getUser().getUserId());
    if ((m) && (!j().getRsvp().getUserHasReplied())) {
      if (bool) {
        cr.a(2131165784, 1);
      }
    }
    while ((!m) || (localdc.k()) || (!c()))
    {
      do
      {
        return;
      } while ((!localdc.k()) && (c()));
      i();
      return;
    }
    d();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */