package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;

public abstract class c
  extends av
{
  public WebImageView a;
  public ImageView b;
  public TextView c;
  public TextView d;
  public TextView e;
  public int f;
  protected SparseArray<CharSequence> g;
  
  public c(FeedType paramFeedType, View paramView)
  {
    super(paramFeedType, paramView);
  }
  
  public void a(FeedEntry paramFeedEntry, int paramInt, Context paramContext)
  {
    f = paramInt;
    a(paramContext, paramInt, paramFeedEntry);
    a(paramFeedEntry.getPhotoURL(u), paramFeedEntry.getRating(), paramFeedEntry.getPhotoCount(), paramFeedEntry.getReviewCount(), paramFeedEntry.getInfoString());
    paramInt = paramFeedEntry.getTextMaxLineCount();
    e.setMaxLines(paramInt);
    if (paramInt == Integer.MAX_VALUE)
    {
      e.setEllipsize(null);
      return;
    }
    e.setEllipsize(TextUtils.TruncateAt.END);
  }
  
  public void a(String paramString, float paramFloat, int paramInt1, int paramInt2, CharSequence paramCharSequence)
  {
    a.reset();
    a.setImageUrl(paramString, 2130837648);
    if (paramFloat != -1.0F)
    {
      b.setVisibility(0);
      cp.a(b, paramFloat);
      if (paramInt1 <= 0) {
        break label194;
      }
      c.setText(StringUtils.a(t.getContext(), 2131623965, paramInt1, new String[0]));
      c.setVisibility(0);
      label76:
      if (paramInt2 == -1) {
        break label206;
      }
      CharSequence localCharSequence = (CharSequence)g.get(paramInt2);
      paramString = localCharSequence;
      if (TextUtils.isEmpty(localCharSequence))
      {
        paramString = t.getContext().getResources().getQuantityString(2131623970, paramInt2, new Object[] { Integer.valueOf(paramInt2) });
        g.put(paramInt2, paramString);
      }
      d.setVisibility(0);
      d.setText(paramString);
    }
    for (;;)
    {
      e.setText(paramCharSequence);
      return;
      b.setVisibility(8);
      d.setVisibility(8);
      break;
      label194:
      c.setVisibility(8);
      break label76;
      label206:
      d.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */