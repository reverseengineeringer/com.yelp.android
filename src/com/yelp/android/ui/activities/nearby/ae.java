package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.NearbyReason;
import com.yelp.android.serializable.NearbyResult;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.YelpLog;
import java.util.List;

public class ae
  extends au<NearbyResult>
{
  private final String a;
  private boolean b;
  
  public ae(String paramString)
  {
    a = paramString;
  }
  
  private void a(af paramaf, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    Object localObject1 = (NearbyResult)getItem(paramInt);
    Object localObject2 = ((NearbyResult)localObject1).getReason();
    paramView = ((NearbyResult)localObject1).getBusiness();
    localObject1 = ((NearbyResult)localObject1).getReason().getUser();
    paramView = paramView.getPhotos();
    if (paramView.isEmpty())
    {
      paramView = null;
      if (paramView != null) {
        break label230;
      }
      paramView = "";
      label63:
      if (!TextUtils.isEmpty(paramView)) {
        break label238;
      }
      a.setImageResource(2130838214);
      c.setVisibility(8);
      label88:
      if (localObject1 == null) {
        break label486;
      }
      e.setVisibility(8);
      l.setVisibility(0);
      localObject2 = ((NearbyReason)localObject2).getUserReason();
      paramView = ((User)localObject1).getPhotos();
      if (!paramView.isEmpty()) {
        break label259;
      }
      paramView = null;
      label134:
      WebImageView localWebImageView = b;
      if (paramView != null) {
        break label273;
      }
      paramView = "";
      label147:
      localWebImageView.setImageUrl(paramView, 2130837660);
      f.setText(((User)localObject1).getName());
      if (!"ROYALTY".equals(localObject2)) {
        break label287;
      }
      paramView = g;
      if (!((User)localObject1).isMale()) {
        break label281;
      }
      paramInt = 2131165947;
      label193:
      paramView.setText(paramViewGroup.getString(paramInt));
      g.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838511, 0);
    }
    label230:
    label238:
    label259:
    label273:
    label281:
    label287:
    do
    {
      return;
      paramView = (Photo)paramView.get(0);
      break;
      paramView = paramView.getLargeUrl();
      break label63;
      a.setImageUrl(paramView, 2130838214);
      c.setVisibility(0);
      break label88;
      paramView = (Photo)paramView.get(0);
      break label134;
      paramView = paramView.getThumbnailUrl();
      break label147;
      paramInt = 2131165946;
      break label193;
      if ("REGULAR".equals(localObject2))
      {
        paramView = g;
        if (((User)localObject1).isMale()) {}
        for (paramInt = 2131165949;; paramInt = 2131165948)
        {
          paramView.setText(paramViewGroup.getString(paramInt));
          g.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838293, 0);
          return;
        }
      }
      if ("FOUR_STAR".equals(localObject2))
      {
        paramView = g;
        if (((User)localObject1).isMale()) {}
        for (paramInt = 2131166389;; paramInt = 2131166388)
        {
          paramView.setText(paramViewGroup.getString(paramInt));
          paramView = paramViewGroup.getResources().getDrawable(2130837700);
          paramView.setLevel(8);
          g.setCompoundDrawablesWithIntrinsicBounds(null, null, paramView, null);
          return;
        }
      }
    } while (!"FIVE_STAR".equals(localObject2));
    paramView = g;
    if (((User)localObject1).isMale()) {}
    for (paramInt = 2131166389;; paramInt = 2131166388)
    {
      paramView.setText(paramViewGroup.getString(paramInt));
      paramView = paramViewGroup.getResources().getDrawable(2130837700);
      paramView.setLevel(10);
      g.setCompoundDrawablesWithIntrinsicBounds(null, null, paramView, null);
      return;
    }
    label486:
    if (((NearbyReason)localObject2).getText() != null)
    {
      l.setVisibility(8);
      e.setVisibility(0);
      e.setText(Html.fromHtml(((NearbyReason)localObject2).getText()));
      return;
    }
    e.setVisibility(8);
    l.setVisibility(8);
  }
  
  private void b(af paramaf, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = paramViewGroup.getContext();
    paramViewGroup = (NearbyResult)getItem(paramInt);
    YelpBusiness localYelpBusiness = paramViewGroup.getBusiness();
    if (d == null) {
      YelpLog.error("NearbyResultAdapter", "bizName is null");
    }
    if (localYelpBusiness == null) {
      YelpLog.error("NearbyResultAdapter", "biz is null");
    }
    d.setText(localYelpBusiness.getDisplayName());
    h.setText(localYelpBusiness.getCategoryForBusinessSearchResult());
    paramInt = localYelpBusiness.getPrice();
    Object localObject = AppData.b().g();
    i.setText(((LocaleSettings)localObject).a(paramInt));
    i.setContentDescription(((LocaleSettings)localObject).a(i.getContext(), paramInt));
    localObject = j;
    paramInt = localYelpBusiness.getReviewCount();
    ((TextView)localObject).setText(paramView.getResources().getQuantityString(2131623970, paramInt, new Object[] { Integer.valueOf(paramInt) }));
    cp.a((TextView)localObject, paramViewGroup.getBusiness().getAvgRating());
    k.setText(localYelpBusiness.getDistanceFormatted(paramView, StringUtils.Format.ABBREVIATED));
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if ((paramView.getTag() instanceof af)) {}
    }
    else
    {
      if (paramView != null) {
        YelpLog.error("NearbyResultAdapter", "Creating view because tag is not a ViewHolder");
      }
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903253, paramViewGroup, false);
      localView.setTag(new af(localView));
    }
    paramView = (af)localView.getTag();
    ((NearbyResult)getItem(paramInt)).setRowId(a);
    b(paramView, paramInt, localView, paramViewGroup);
    a(paramView, paramInt, localView, paramViewGroup);
    if ((!b) && (paramInt == getCount() - 1))
    {
      localView.setPadding(localView.getPaddingLeft(), localView.getPaddingTop(), localView.getPaddingRight(), 0);
      return localView;
    }
    paramInt = cp.a(localView.getContext(), 2130772041);
    localView.setPadding(localView.getPaddingLeft(), localView.getPaddingTop(), localView.getPaddingRight(), paramInt);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */