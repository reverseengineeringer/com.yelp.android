package com.yelp.android.ui.activities.talk;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class TalkViewPost$3
  implements TextView.OnEditorActionListener
{
  TalkViewPost$3(TalkViewPost paramTalkViewPost) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) && (paramKeyEvent.getAction() == 0))
    {
      TalkViewPost.b(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkViewPost.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */