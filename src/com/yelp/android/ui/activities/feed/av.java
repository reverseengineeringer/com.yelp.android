package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.Date;

abstract class av
{
  private final SparseArray<Drawable> a;
  private final SparseArray<String> b;
  public WebImageView q;
  public TextView r;
  public TextView s;
  public TextView t;
  protected final FeedType u;
  
  public av(FeedType paramFeedType, View paramView)
  {
    q = ((WebImageView)paramView.findViewById(2131493522));
    r = ((TextView)paramView.findViewById(2131493523));
    s = ((TextView)paramView.findViewById(2131493521));
    t = ((TextView)paramView.findViewById(2131493704));
    a = new SparseArray();
    b = new SparseArray();
    u = paramFeedType;
  }
  
  public void a(int paramInt, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    int i = 8;
    Drawable localDrawable = (Drawable)a.get(paramInt);
    Object localObject = localDrawable;
    if (localDrawable == null)
    {
      localObject = localDrawable;
      if (paramInt != 0)
      {
        localObject = q.getContext().getResources().getDrawable(paramInt);
        a.put(paramInt, localObject);
      }
    }
    q.setImageDrawable((Drawable)localObject);
    localObject = q;
    if (paramInt == 0)
    {
      paramInt = 8;
      ((WebImageView)localObject).setVisibility(paramInt);
      r.setText(paramCharSequence1);
      localObject = r;
      if (!TextUtils.isEmpty(paramCharSequence1)) {
        break label162;
      }
      paramInt = 8;
      label112:
      ((TextView)localObject).setVisibility(paramInt);
      t.setText(paramCharSequence2);
      s.setText(paramCharSequence3);
      paramCharSequence1 = s;
      if (!TextUtils.isEmpty(paramCharSequence3)) {
        break label167;
      }
    }
    label162:
    label167:
    for (paramInt = i;; paramInt = 0)
    {
      paramCharSequence1.setVisibility(paramInt);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label112;
    }
  }
  
  public void a(Context paramContext, int paramInt, FeedEntry paramFeedEntry)
  {
    String str = (String)b.get(paramInt);
    Object localObject = str;
    if (TextUtils.isEmpty(str))
    {
      localObject = paramFeedEntry.getDate();
      if (localObject != null) {
        str = StringUtils.a(paramContext, StringUtils.Format.LONG, (Date)localObject);
      }
      b.append(paramInt, str);
      localObject = str;
    }
    a(0, paramFeedEntry.getSubTitle(paramContext, u), paramFeedEntry.getTitle(), (CharSequence)localObject);
    paramFeedEntry.setHeaderIcon(q);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */