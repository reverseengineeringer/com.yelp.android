package com.yelp.android.ui.activities.friendcheckins;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.CheckIn;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.ExternalCheckIn;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.j;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.List;

public class a
  extends au<CheckIn>
  implements j
{
  private final SparseArray<String> a;
  private final SparseArray<CharSequence> b;
  private final SparseArray<CharSequence> c;
  private final SparseArray<CharSequence> d;
  private final SparseArray<CharSequence> e;
  private final boolean f;
  private final boolean g;
  private r h;
  private r i;
  private r j;
  private Location k;
  
  public a(boolean paramBoolean1, boolean paramBoolean2)
  {
    f = paramBoolean1;
    g = paramBoolean2;
    a = new SparseArray();
    b = new SparseArray();
    c = new SparseArray();
    d = new SparseArray();
    e = new SparseArray();
  }
  
  private void a(int paramInt, YelpCheckIn paramYelpCheckIn, b paramb, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    int m = paramYelpCheckIn.getTotalCount();
    CharSequence localCharSequence = (CharSequence)b.get(paramInt);
    paramViewGroup = localCharSequence;
    if (localCharSequence == null)
    {
      paramViewGroup = StringUtils.a(localContext, 2131623942, m, new String[0]);
      b.put(paramInt, paramViewGroup);
    }
    l.setOnCheckedChangeListener(null);
    l.setChecked(paramYelpCheckIn.getFeedback().isLikedByUser());
    l.setOnCheckedChangeListener(h);
    l.setTag(paramYelpCheckIn);
    m.setTag(paramYelpCheckIn);
    k.setTag(paramYelpCheckIn);
    if (paramYelpCheckIn.getLocationRankTitle().greaterThan(RankTitle.Rank.USER))
    {
      h.setText(paramViewGroup);
      h.setCompoundDrawablesWithIntrinsicBounds(paramYelpCheckIn.getLocationRankTitle().getRankIcon(), 0, 0, 0);
    }
    if (paramYelpCheckIn.getPrimaryComment() != null) {
      i.setText(paramYelpCheckIn.getPrimaryComment().getText());
    }
    paramViewGroup = (CharSequence)e.get(paramInt);
    if (TextUtils.isEmpty(paramViewGroup))
    {
      paramYelpCheckIn = paramYelpCheckIn.getCommentCountLikeCountText(localContext);
      if (!TextUtils.isEmpty(paramYelpCheckIn))
      {
        paramViewGroup = new StyleSpan(1);
        paramYelpCheckIn = new SpannableStringBuilder(paramYelpCheckIn);
        ((SpannableStringBuilder)paramYelpCheckIn).setSpan(paramViewGroup, 0, paramYelpCheckIn.length(), 18);
        e.put(paramInt, paramYelpCheckIn);
      }
    }
    for (;;)
    {
      k.setText(paramYelpCheckIn);
      return;
      break;
      paramYelpCheckIn = paramViewGroup;
    }
  }
  
  private void c()
  {
    k = null;
    a.clear();
    b.clear();
    c.clear();
    d.clear();
    e.clear();
  }
  
  public void a(PendingIntent paramPendingIntent)
  {
    h = new r(paramPendingIntent, "extra.data", "extra.checked");
  }
  
  public List<CheckIn> b()
  {
    return a();
  }
  
  public void b(PendingIntent paramPendingIntent)
  {
    i = new r(paramPendingIntent, "extra.data", "extra.checked");
  }
  
  public void c(PendingIntent paramPendingIntent)
  {
    j = new r(paramPendingIntent, "extra.data", "extra.checked");
  }
  
  public int getItemViewType(int paramInt)
  {
    int m = 0;
    CheckIn localCheckIn = (CheckIn)getItem(paramInt);
    if (localCheckIn == null) {
      return -1;
    }
    if ((localCheckIn instanceof ExternalCheckIn)) {
      return 0;
    }
    boolean bool = ((YelpCheckIn)localCheckIn).getLocationRankTitle().greaterThan(RankTitle.Rank.USER);
    paramInt = m;
    if (((YelpCheckIn)localCheckIn).getPrimaryComment() != null) {
      paramInt = 1;
    }
    if ((bool) && (paramInt == 0)) {
      return 3;
    }
    if ((!bool) && (paramInt != 0)) {
      return 2;
    }
    if ((bool) && (paramInt != 0)) {
      return 4;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    Object localObject;
    if (paramView == null)
    {
      int m = 2130903384;
      if (getItemViewType(paramInt) == 0) {
        m = 2130903312;
      }
      paramView = LayoutInflater.from(localContext).inflate(m, paramViewGroup, false);
      localObject = new b(getItemViewType(paramInt), paramView);
      paramView.setTag(localObject);
      localView = paramView;
      if (getItemViewType(paramInt) != 0)
      {
        k.setOnClickListener(j);
        m.setOnClickListener(i);
        localView = paramView;
      }
    }
    b localb;
    CheckIn localCheckIn;
    if (k == null)
    {
      paramView = AppData.b().n().c();
      k = paramView;
      localb = (b)localView.getTag();
      localCheckIn = (CheckIn)getItem(paramInt);
      localObject = (CharSequence)c.get(paramInt);
      paramView = (View)localObject;
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        paramView = StringUtils.a(localContext, 2131623970, localCheckIn.getBusiness().getReviewCount(), new String[0]);
        c.put(paramInt, paramView);
      }
      b.setText(paramView);
      cp.a(b, localCheckIn.getBusiness().getAvgRating());
      a.setImageUrl(localCheckIn.getUserPhotoUrl(), 2130837659);
      if (!g) {
        break label464;
      }
      c.setText(localContext.getString(2131166224, new Object[] { Integer.valueOf(paramInt + 1), localCheckIn.getUserName() }));
      label290:
      paramView = localCheckIn.getBusiness();
      d.setText(paramView.getDisplayName());
      if (!f) {
        break label482;
      }
      e.setText(localCheckIn.getLocation());
    }
    for (;;)
    {
      localObject = (CharSequence)d.get(paramInt);
      paramView = (View)localObject;
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        paramView = StringUtils.a(paramViewGroup.getContext(), StringUtils.Format.LONG, localCheckIn.getDateCreated());
        d.put(paramInt, paramView);
      }
      f.setText(paramView);
      if (localCheckIn.getAppName() != null) {
        g.setText(localContext.getString(2131166813, new Object[] { localCheckIn.getAppName() }));
      }
      if ((localCheckIn instanceof YelpCheckIn)) {
        a(paramInt, (YelpCheckIn)localCheckIn, localb, paramViewGroup);
      }
      return localView;
      paramView = k;
      break;
      label464:
      c.setText(localCheckIn.getUserName());
      break label290;
      label482:
      if (a != null)
      {
        paramView = (String)a.get(paramInt);
        if (a.indexOfKey(paramInt) < 0)
        {
          paramView = localCheckIn.getBusiness().getDistanceFormatted(k, localContext, StringUtils.Format.ABBREVIATED);
          a.append(paramInt, paramView);
        }
        e.setText(paramView);
      }
    }
  }
  
  public int getViewTypeCount()
  {
    return 5;
  }
  
  public void notifyDataSetChanged()
  {
    c();
    super.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */