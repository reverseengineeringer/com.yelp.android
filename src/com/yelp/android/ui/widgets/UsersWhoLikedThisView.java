package com.yelp.android.ui.widgets;

import android.content.Context;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.util.StringUtils;
import java.util.List;

public class UsersWhoLikedThisView
  extends RelativeLayout
{
  WebImageView a;
  TextView b;
  
  public UsersWhoLikedThisView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public UsersWhoLikedThisView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public UsersWhoLikedThisView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    LayoutInflater.from(getContext()).inflate(2130903273, this);
    a = ((WebImageView)findViewById(2131690074));
    b = ((TextView)findViewById(2131690333));
  }
  
  public void a(boolean paramBoolean, List<? extends DisplayableAsUserBadge> paramList, int paramInt)
  {
    Context localContext = getContext();
    if ((paramList == null) || (paramList.isEmpty()) || (paramInt == 0))
    {
      setVisibility(8);
      return;
    }
    if (paramBoolean)
    {
      if (paramInt == 1) {}
      for (paramList = StringUtils.a(localContext, 2131166869, new Object[] { ((DisplayableAsUserBadge)paramList.get(0)).a() });; paramList = StringUtils.a(localContext, 2131230794, paramInt - 1, new String[0]))
      {
        a.setImageUrl(AppData.b().q().r());
        paramList = StringUtils.a(paramList, 2131623980, localContext);
        b.setText(paramList);
        setVisibility(0);
        return;
      }
    }
    if (paramInt == 1) {}
    for (Spanned localSpanned = StringUtils.a(localContext, 2131166833, new Object[] { ((DisplayableAsUserBadge)paramList.get(0)).a() });; localSpanned = StringUtils.a(localContext, 2131230775, paramInt - 1, new String[] { ((DisplayableAsUserBadge)paramList.get(0)).a() }))
    {
      a.setImageUrl(((DisplayableAsUserBadge)paramList.get(0)).c());
      paramList = localSpanned;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.UsersWhoLikedThisView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */