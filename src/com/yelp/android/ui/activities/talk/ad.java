package com.yelp.android.ui.activities.talk;

import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.yelp.android.serializable.TalkTopic;

class ad
  implements View.OnClickListener
{
  ad(TalkViewPost paramTalkViewPost, Button paramButton, TextView paramTextView) {}
  
  public void onClick(View paramView)
  {
    TalkViewPost.a(c, true);
    a.setVisibility(8);
    b.setText(Html.fromHtml(TalkViewPost.d(c).getText()));
    b.setMovementMethod(LinkMovementMethod.getInstance());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */