package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Passport;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

public class cn
{
  private CharSequence a;
  public final WebImageView c;
  public final TextView d;
  public final TextView e;
  public final TextView f;
  public final TextView g;
  public final TextView h;
  public Map<String, ContactsFetcher.Contact> i;
  public ImageView j;
  public TextView k;
  public TextView l;
  public CompoundButton m;
  public TextView n;
  public ImageButton o;
  
  public cn(View paramView, boolean paramBoolean)
  {
    c = ((WebImageView)paramView.findViewById(2131493446));
    d = ((TextView)paramView.findViewById(2131493907));
    f = ((TextView)paramView.findViewById(2131493908));
    g = ((TextView)paramView.findViewById(2131493909));
    m = ((CompoundButton)paramView.findViewById(16908308));
    n = ((TextView)paramView.findViewById(2131493911));
    h = ((TextView)paramView.findViewById(2131493910));
    o = ((ImageButton)paramView.findViewById(2131493858));
    e = ((TextView)paramView.findViewById(2131493730));
    if (paramBoolean)
    {
      j = ((ImageView)paramView.findViewById(2131493522));
      k = ((TextView)paramView.findViewById(2131493523));
      l = ((TextView)paramView.findViewById(2131493521));
    }
    a = paramView.getContext().getString(2131165744);
    a = DateFormat.format(a, new Date());
    i = Collections.emptyMap();
  }
  
  public void a(Context paramContext, CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString, boolean paramBoolean)
  {
    paramContext = paramContext.getResources();
    d.setText(paramCharSequence);
    if (e != null)
    {
      if (!paramBoolean) {
        break label189;
      }
      e.setText(a);
      e.setVisibility(0);
      e.setContentDescription(paramContext.getString(2131166593, new Object[] { paramCharSequence }));
    }
    for (;;)
    {
      f.setText(Integer.toString(paramInt1));
      f.setContentDescription(paramContext.getQuantityString(2131623952, paramInt1, new Object[] { Integer.valueOf(paramInt1) }));
      g.setText(Integer.toString(paramInt2));
      g.setContentDescription(paramContext.getQuantityString(2131623970, paramInt2, new Object[] { Integer.valueOf(paramInt2) }));
      h.setText(Integer.toString(paramInt5));
      h.setContentDescription(Passport.getMediaQuantityString(true, paramInt3, paramInt4, paramInt5, paramContext));
      c.reset();
      c.setImageUrl(paramString, 2130837659);
      return;
      label189:
      e.setVisibility(8);
    }
  }
  
  public void a(DisplayableAsUserBadge paramDisplayableAsUserBadge)
  {
    String str = null;
    Object localObject1 = paramDisplayableAsUserBadge.getUserName();
    Context localContext = d.getContext();
    ContactsFetcher.Contact localContact = (ContactsFetcher.Contact)i.get(paramDisplayableAsUserBadge.getUserId());
    if (localContact != null)
    {
      localObject2 = localContact.getName(localContext);
      localObject1 = localObject2;
      if (TextUtils.equals((CharSequence)localObject2, localContact.getEmail(localContext))) {
        localObject1 = paramDisplayableAsUserBadge.getUserName();
      }
    }
    for (Object localObject2 = localContact.getPhoto(localContext);; localObject2 = null)
    {
      int i1 = paramDisplayableAsUserBadge.getFriendCount();
      int i2 = paramDisplayableAsUserBadge.getReviewCount();
      int i3 = paramDisplayableAsUserBadge.getPhotoCount();
      int i4 = paramDisplayableAsUserBadge.getVideoCount();
      int i5 = paramDisplayableAsUserBadge.getMediaCount();
      if (localObject2 == null) {
        str = paramDisplayableAsUserBadge.getUserPhotoUrl();
      }
      a(localContext, (CharSequence)localObject1, i1, i2, i3, i4, i5, str, paramDisplayableAsUserBadge.isEliteUser());
      if (localObject2 != null) {
        c.setImageBitmap((Bitmap)localObject2, true);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */