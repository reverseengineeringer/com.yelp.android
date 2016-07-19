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
import com.yelp.android.serializable.User;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.util.Collections;
import java.util.Map;

public class ap$b
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
  
  public ap$b(View paramView, boolean paramBoolean)
  {
    c = ((WebImageView)paramView.findViewById(2131690074));
    d = ((TextView)paramView.findViewById(2131690076));
    f = ((TextView)paramView.findViewById(2131690064));
    g = ((TextView)paramView.findViewById(2131690746));
    m = ((CompoundButton)paramView.findViewById(16908308));
    n = ((TextView)paramView.findViewById(2131690748));
    h = ((TextView)paramView.findViewById(2131690747));
    o = ((ImageButton)paramView.findViewById(2131690697));
    e = ((TextView)paramView.findViewById(2131690556));
    if (paramBoolean)
    {
      j = ((ImageView)paramView.findViewById(2131690217));
      k = ((TextView)paramView.findViewById(2131690218));
      l = ((TextView)paramView.findViewById(2131690216));
    }
    a = paramView.getContext().getString(2131165825);
    a = DateFormat.format(a, User.j());
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
      e.setContentDescription(paramContext.getString(2131166601, new Object[] { paramCharSequence }));
    }
    for (;;)
    {
      f.setText(Integer.toString(paramInt1));
      f.setContentDescription(paramContext.getQuantityString(2131230736, paramInt1, new Object[] { Integer.valueOf(paramInt1) }));
      g.setText(Integer.toString(paramInt2));
      g.setContentDescription(paramContext.getQuantityString(2131230757, paramInt2, new Object[] { Integer.valueOf(paramInt2) }));
      h.setText(Integer.toString(paramInt5));
      h.setContentDescription(Passport.a(true, paramInt3, paramInt4, paramInt5, paramContext));
      c.reset();
      c.setImageUrl(paramString, 2130837702);
      return;
      label189:
      e.setVisibility(8);
    }
  }
  
  public void a(DisplayableAsUserBadge paramDisplayableAsUserBadge)
  {
    String str = null;
    Object localObject1 = paramDisplayableAsUserBadge.a();
    Context localContext = d.getContext();
    ContactsFetcher.Contact localContact = (ContactsFetcher.Contact)i.get(paramDisplayableAsUserBadge.i());
    if (localContact != null)
    {
      localObject2 = localContact.a(localContext);
      localObject1 = localObject2;
      if (TextUtils.equals((CharSequence)localObject2, localContact.c(localContext))) {
        localObject1 = paramDisplayableAsUserBadge.a();
      }
    }
    for (Object localObject2 = localContact.e(localContext);; localObject2 = null)
    {
      int i1 = paramDisplayableAsUserBadge.k_();
      int i2 = paramDisplayableAsUserBadge.j_();
      int i3 = paramDisplayableAsUserBadge.l_();
      int i4 = paramDisplayableAsUserBadge.m_();
      int i5 = paramDisplayableAsUserBadge.n_();
      if (localObject2 == null) {
        str = paramDisplayableAsUserBadge.c();
      }
      a(localContext, (CharSequence)localObject1, i1, i2, i3, i4, i5, str, paramDisplayableAsUserBadge.h());
      if (localObject2 != null) {
        c.setImageBitmap((Bitmap)localObject2, true);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ap.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */