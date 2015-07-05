package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteType;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteValue;
import com.yelp.android.az.c;

class bc
  implements View.OnClickListener
{
  bc(bb parambb) {}
  
  public void onClick(View paramView)
  {
    ReviewVoteRequest.VoteType localVoteType;
    ReviewVoteRequest.VoteValue localVoteValue;
    if (paramView.isSelected())
    {
      localVoteType = ReviewVoteRequest.VoteType.REMOVE;
      switch (paramView.getId())
      {
      default: 
        localVoteValue = ReviewVoteRequest.VoteValue.COOL;
        if (paramView.isSelected())
        {
          bb.i(a);
          label59:
          bb.l(a).a(bb.a(a, paramView.getContext(), 2131165656, bb.k(a)));
          if (paramView.isSelected()) {
            break label288;
          }
        }
        break;
      }
    }
    label288:
    for (boolean bool = true;; bool = false)
    {
      paramView.setSelected(bool);
      ba.a(a.a).a(localVoteValue, localVoteType, bb.m(a));
      return;
      localVoteType = ReviewVoteRequest.VoteType.ADD;
      break;
      localVoteValue = ReviewVoteRequest.VoteValue.USEFUL;
      if (paramView.isSelected()) {
        bb.a(a);
      }
      for (;;)
      {
        bb.d(a).a(bb.a(a, paramView.getContext(), 2131166803, bb.c(a)));
        break;
        bb.b(a);
      }
      localVoteValue = ReviewVoteRequest.VoteValue.FUNNY;
      if (paramView.isSelected()) {
        bb.e(a);
      }
      for (;;)
      {
        bb.h(a).a(bb.a(a, paramView.getContext(), 2131165877, bb.g(a)));
        break;
        if (!paramView.isSelected()) {
          bb.f(a);
        }
      }
      if (paramView.isSelected()) {
        break label59;
      }
      bb.j(a);
      break label59;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */