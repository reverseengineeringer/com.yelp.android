package com.yelp.android.ui.activities.talk;

import android.content.res.Resources;
import android.text.method.LinkMovementMethod;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.Button;
import android.widget.TextView;

class TalkViewPost$5
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  TalkViewPost$5(TalkViewPost paramTalkViewPost, TextView paramTextView, Button paramButton) {}
  
  public void onGlobalLayout()
  {
    if (TalkViewPost.c(c)) {}
    int i;
    do
    {
      return;
      i = c.getResources().getInteger(2131492896);
    } while (a.getLineCount() <= i);
    TalkViewPost.a(c, a, i);
    a.setMovementMethod(LinkMovementMethod.getInstance());
    b.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkViewPost.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */