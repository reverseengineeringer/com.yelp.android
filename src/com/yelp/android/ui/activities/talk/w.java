package com.yelp.android.ui.activities.talk;

import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;

public class w
  extends au<TalkTopic>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903370, paramViewGroup, false);
      localView.setTag(new x(this, localView));
    }
    paramView = (x)localView.getTag();
    TalkTopic localTalkTopic = (TalkTopic)getItem(paramInt);
    c.setText(localTalkTopic.getCategoryName());
    a.setImageUrl(localTalkTopic.getUserPhotoUrl());
    b.setText(Html.fromHtml(localTalkTopic.getTitle()));
    f.setText(Html.fromHtml(localTalkTopic.getText()));
    e.setText(StringUtils.a(paramViewGroup.getContext(), StringUtils.Format.ABBREVIATED, localTalkTopic.getTimeModified()));
    d.setText(StringUtils.a(paramViewGroup.getContext(), 2131623987, localTalkTopic.getReplyCount(), new Object[] { Boolean.valueOf(true) }));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */