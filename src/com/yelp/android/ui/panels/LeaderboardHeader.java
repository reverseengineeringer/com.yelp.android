package com.yelp.android.ui.panels;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yelp.android.util.StringUtils;

public class LeaderboardHeader
  extends TitleWithSubTitleView
{
  private int c;
  private int d;
  private int e;
  
  public LeaderboardHeader(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LeaderboardHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772334);
  }
  
  public LeaderboardHeader(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a.setText(2131166000);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    b.setVisibility(8);
    String str;
    if ((paramInt1 != -1) && (paramInt2 != -1))
    {
      localObject = StringUtils.a(getContext(), paramInt1);
      str = StringUtils.a(getContext(), paramInt2);
      if (paramInt3 <= 0) {
        break label101;
      }
    }
    label101:
    for (Object localObject = StringUtils.a(getContext(), 2131166001, new Object[] { localObject, str });; localObject = StringUtils.a(getContext(), 2131166384, new Object[] { localObject }))
    {
      b.setText((CharSequence)localObject);
      b.setVisibility(0);
      return;
    }
  }
  
  public int getFriendsActiveCount()
  {
    return e;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (Bundle)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getParcelable("super"));
    c = paramParcelable.getInt("weekly");
    d = paramParcelable.getInt("friend_rank");
    e = paramParcelable.getInt("friend_active");
    a(c, d, e);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("super", super.onSaveInstanceState());
    localBundle.putInt("weekly", c);
    localBundle.putInt("friend_rank", d);
    localBundle.putInt("friend_active", e);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.LeaderboardHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */