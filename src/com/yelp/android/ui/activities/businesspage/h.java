package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.view.ViewStub.OnInflateListener;

class h
  implements ViewStub.OnInflateListener
{
  final Context a = b;
  
  h(ActivityBusinessPage paramActivityBusinessPage) {}
  
  public void onInflate(ViewStub paramViewStub, View paramView)
  {
    paramView.findViewById(2131493401).setOnClickListener(new i(this));
    paramView.findViewById(2131493402).setOnClickListener(new j(this));
    paramView.findViewById(2131493238).setOnTouchListener(new k(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */