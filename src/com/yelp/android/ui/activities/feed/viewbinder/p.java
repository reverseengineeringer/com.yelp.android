package com.yelp.android.ui.activities.feed.viewbinder;

import android.text.Html;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.cg.f;
import com.yelp.android.serializable.TalkMessage;
import com.yelp.android.serializable.TalkTopic;

public class p
  extends f
{
  private final TextView a;
  private final TextView b;
  
  public p(View paramView)
  {
    super(paramView);
    a = ((TextView)paramView.findViewById(2131690492));
    b = ((TextView)paramView.findViewById(2131690493));
  }
  
  public void a(TalkTopic paramTalkTopic, TalkMessage paramTalkMessage)
  {
    a.setText(Html.fromHtml(paramTalkTopic.o()));
    b.setText(Html.fromHtml(paramTalkMessage.d()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.viewbinder.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */