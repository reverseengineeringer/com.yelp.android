package com.yelp.android.ui.activities.events;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.util.PullDownListView;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.widgets.RoundedImageView;
import com.yelp.android.ui.widgets.k;
import com.yelp.android.ui.widgets.o;

@SuppressLint({"ViewConstructor"})
public class ba
  extends k
{
  private final RoundedImageView a;
  private final TextView b;
  private final TextView c;
  private final TextView d;
  private final j e;
  
  public ba(ScrollToLoadListView paramScrollToLoadListView, o paramo, View.OnClickListener paramOnClickListener)
  {
    super(paramScrollToLoadListView.getContext(), 2130903304, paramo, paramScrollToLoadListView);
    setPulledPhotoAlpha(0);
    a = ((RoundedImageView)getPanel().findViewById(2131493830));
    a.setOnClickListener(paramOnClickListener);
    b = ((TextView)getPanel().findViewById(2131493831));
    c = ((TextView)getPanel().findViewById(2131493832));
    d = ((TextView)getPanel().findViewById(2131493970));
    e = h.c(paramScrollToLoadListView.getContext());
  }
  
  public void a(Event paramEvent, PullDownListView paramPullDownListView)
  {
    Context localContext = getContext();
    if (paramEvent.getPhoto() != null)
    {
      e.a(paramEvent.getPhoto().getThumbnailUrl()).b(2130837655).a(a);
      setPulledPhotoUrl(paramEvent.getPhoto().getLargeUrl());
      a(paramPullDownListView);
      b.setText(paramEvent.getName());
      if (paramEvent.getType() != Event.EventType.ELITE) {
        break label109;
      }
      d.setVisibility(0);
    }
    label109:
    while (!paramEvent.isYelpCommunity())
    {
      return;
      a.setImageDrawable(getResources().getDrawable(2130837655));
      setPulledPhotoUrl(null);
      break;
    }
    c.setVisibility(0);
    paramEvent = localContext.getString(2131165961, new Object[] { paramEvent.getCategoryName(), localContext.getString(2131166893) });
    c.setText(paramEvent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */