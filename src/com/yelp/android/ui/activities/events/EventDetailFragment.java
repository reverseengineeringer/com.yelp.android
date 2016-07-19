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
import com.yelp.android.analytics.iris.a;
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
    TextView localTextView = (TextView)paramView.findViewById(2131689933);
    localTextView.setText(Html.fromHtml(paramEvent.B()));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    if ((!TextUtils.isEmpty(paramEvent.D())) || (!TextUtils.isEmpty(paramEvent.F())))
    {
      paramView.findViewById(2131689719).setVisibility(0);
      localTextView = (TextView)paramView.findViewById(2131690200);
      if (!TextUtils.isEmpty(paramEvent.D()))
      {
        StringUtils.a(localTextView, 2131166684, paramEvent.D());
        localTextView.setVisibility(0);
      }
      if (!TextUtils.isEmpty(paramEvent.F()))
      {
        paramView = (TextView)paramView.findViewById(2131690199);
        StringUtils.a(paramView, 2131166286, paramEvent.F());
        paramView.setVisibility(0);
      }
    }
    else
    {
      return;
    }
    localTextView.setPadding(0, 0, 0, 0);
  }
  
  public a getIri()
  {
    return ViewIri.EventDetails;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.singletonMap("event_id", ((Event)getArguments().getParcelable("args_event")).I());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903220, paramViewGroup);
    a(paramViewGroup, (Event)getArguments().getParcelable("args_event"));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventDetailFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */