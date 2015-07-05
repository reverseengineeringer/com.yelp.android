package com.yelp.android.ui.activities.events;

import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.Map;

public class EventDetailFragment
  extends YelpFragment
{
  public static EventDetailFragment a(Event paramEvent)
  {
    EventDetailFragment localEventDetailFragment = new EventDetailFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("args_event", paramEvent);
    localEventDetailFragment.setArguments(localBundle);
    return localEventDetailFragment;
  }
  
  private void a(View paramView, Event paramEvent)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131493276);
    localTextView.setText(Html.fromHtml(paramEvent.getDescription()));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    if ((!TextUtils.isEmpty(paramEvent.getTicketsUrl())) || (!TextUtils.isEmpty(paramEvent.getEventUrl())))
    {
      paramView.findViewById(2131493050).setVisibility(0);
      localTextView = (TextView)paramView.findViewById(2131493505);
      if (!TextUtils.isEmpty(paramEvent.getTicketsUrl()))
      {
        StringUtils.a(localTextView, 2131166706, paramEvent.getTicketsUrl());
        localTextView.setVisibility(0);
      }
      if (!TextUtils.isEmpty(paramEvent.getEventUrl()))
      {
        paramView = (TextView)paramView.findViewById(2131493504);
        StringUtils.a(paramView, 2131166232, paramEvent.getEventUrl());
        paramView.setVisibility(0);
      }
    }
    else
    {
      return;
    }
    localTextView.setPadding(0, 0, 0, 0);
  }
  
  public b getIri()
  {
    return ViewIri.EventDetails;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.singletonMap("event_id", ((Event)getArguments().getParcelable("args_event")).getId());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903196, paramViewGroup);
    a(paramViewGroup, (Event)getArguments().getParcelable("args_event"));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventDetailFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */