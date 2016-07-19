package com.yelp.android.ui.activities.friendcheckins;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;

public class b
  extends w<Comment>
{
  private static String a = "key.state";
  private Animation b;
  
  public void a(Context paramContext)
  {
    b = AnimationUtils.loadAnimation(paramContext, 17432576);
    b.setDuration(1000L);
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle = paramBundle.getParcelableArrayList(a);
    if (paramBundle != null) {
      a(paramBundle);
    }
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList(a, new ArrayList(super.a()));
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    Comment localComment = (Comment)getItem(paramInt);
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(localContext).inflate(2130903378, paramViewGroup, false);
      localView.setTag(new b.a(localView));
    }
    paramView = (b.a)localView.getTag();
    c.setText(StringUtils.a(localContext, StringUtils.Format.LONG, localComment.e()));
    paramViewGroup = SpannableString.valueOf(localComment.b().ac());
    paramViewGroup.setSpan(new StyleSpan(1), 0, paramViewGroup.length(), 18);
    SpannableString localSpannableString = SpannableString.valueOf(localComment.c());
    paramViewGroup = TextUtils.expandTemplate(localContext.getText(2131166622), new CharSequence[] { paramViewGroup, localSpannableString });
    b.setText(paramViewGroup);
    a.setImageUrl(localComment.b().c(), 2130837703);
    if ((paramInt == getCount() - 1) && (AppData.b().q().a(localComment.b())))
    {
      paramView = b;
      b = null;
    }
    for (;;)
    {
      localView.setAnimation(paramView);
      return localView;
      paramView = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */