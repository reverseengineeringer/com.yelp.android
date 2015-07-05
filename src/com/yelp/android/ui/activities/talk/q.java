package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.method.LinkMovementMethod;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.aw.f;
import com.yelp.android.aw.h;
import com.yelp.android.serializable.TalkMessage;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.bv;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class q
  extends au<TalkMessage>
  implements l
{
  private final v a;
  private final Context b;
  private final Set<Integer> c;
  private final j d;
  private f e;
  private q f;
  private bv<?> g;
  private String h;
  private int i;
  private boolean j;
  private m<h> k = new t(this);
  
  public q(v paramv, Context paramContext)
  {
    a = paramv;
    b = paramContext;
    c = new HashSet();
    d = new j(this);
    j = true;
  }
  
  private CharSequence a(String paramString, CharSequence paramCharSequence)
  {
    paramString = SpannableString.valueOf(paramString.substring(0, paramString.length() - 1));
    paramString.setSpan(new StyleSpan(1), 0, paramString.length(), 18);
    paramCharSequence = SpannableString.valueOf(Html.fromHtml(paramCharSequence.toString()));
    return TextUtils.expandTemplate(b.getText(2131166607), new CharSequence[] { paramString, paramCharSequence });
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    List localList = f.a();
    int m = paramInt1;
    if (paramInt2 < localList.size())
    {
      localList = localList.subList(paramInt2 + 1, localList.size());
      a(localList);
      m = paramInt1 - localList.size();
    }
    h = ((TalkMessage)a().get(a().size() - 1)).getId();
    c.addAll(f.h());
    c(Math.max(f.e(), m));
    f.c();
    f = null;
  }
  
  private void a(int paramInt, View paramView, ViewGroup paramViewGroup, TextView paramTextView)
  {
    paramTextView.setMovementMethod(null);
    paramTextView.setClickable(true);
    paramTextView.setFocusable(true);
    paramTextView.setText(paramTextView.getText());
    paramTextView.setMaxLines(Integer.MAX_VALUE);
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramViewGroup.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramViewGroup.getHeight(), 0));
    if ((!c.contains(Integer.valueOf(paramInt))) && (paramTextView.getLineCount() > b.getResources().getInteger(2131558421)))
    {
      paramTextView.setMaxLines(b.getResources().getInteger(2131558421));
      paramTextView.setEllipsize(TextUtils.TruncateAt.END);
      return;
    }
    paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  private int b(int paramInt)
  {
    int m = 0;
    if (f == null) {
      m = -1;
    }
    while ((f.getCount() == 0) && (paramInt < 25)) {
      return m;
    }
    List localList = f.a();
    paramInt = 0;
    while (paramInt < localList.size())
    {
      if (((TalkMessage)localList.get(paramInt)).getId().equals(h)) {
        return paramInt;
      }
      paramInt += 1;
    }
    return -1;
  }
  
  private void c(int paramInt)
  {
    i = paramInt;
    d.a(i);
    notifyDataSetChanged();
  }
  
  private void d(int paramInt)
  {
    if (g != null) {
      g.a(b.getString(2131166128, new Object[] { Integer.valueOf(paramInt) }));
    }
  }
  
  public void a(int paramInt)
  {
    i = paramInt;
    e = a.a(f(), i, k);
    e.execute(new Void[0]);
    d.a(true);
  }
  
  void a(h paramh)
  {
    int m = paramh.b();
    if (m > 1)
    {
      c(Math.min(25, m));
      return;
    }
    h = paramh.c();
    a(paramh.a());
    d(getCount());
    notifyDataSetChanged();
  }
  
  void a(q paramq)
  {
    f = paramq;
  }
  
  void a(bv<?> parambv)
  {
    g = parambv;
    d(5);
  }
  
  void b()
  {
    if (e != null)
    {
      e.cancel(true);
      e = null;
    }
  }
  
  void c()
  {
    clear();
    g = null;
    j = false;
  }
  
  public void clear()
  {
    super.clear();
    if (e != null)
    {
      e.cancel(true);
      e = null;
    }
    c.clear();
    d.clear();
  }
  
  j d()
  {
    return d;
  }
  
  int e()
  {
    return i;
  }
  
  String f()
  {
    return h;
  }
  
  boolean g()
  {
    return j;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(b).inflate(2130903368, paramViewGroup, false);
      paramView.setTag(new u(this, paramView));
    }
    for (;;)
    {
      u localu = (u)paramView.getTag();
      TalkMessage localTalkMessage = (TalkMessage)getItem(paramInt);
      c.setText(StringUtils.a(b, StringUtils.Format.ABBREVIATED, localTalkMessage.getTimeModified()));
      if (!TextUtils.isEmpty(localTalkMessage.getRemoved()))
      {
        a.setImageResource(2130837660);
        if (localTalkMessage.getRemoved().equals("BY_ADMIN")) {
          paramInt = 2131166675;
        }
        for (;;)
        {
          b.setText(b.getString(paramInt));
          return paramView;
          if (localTalkMessage.getRemoved().equals("BY_ADMIN_TOS")) {
            paramInt = 2131166676;
          } else {
            paramInt = 2131166704;
          }
        }
      }
      a.setImageUrl(localTalkMessage.getUserPhotoUrl());
      a.setOnClickListener(new r(this, localTalkMessage));
      b.setOnClickListener(new s(this, paramInt, paramView, paramViewGroup, localu));
      b.setText(a(localTalkMessage.getUserName(), localTalkMessage.getText()));
      a(paramInt, paramView, paramViewGroup, b);
      return paramView;
    }
  }
  
  Set<Integer> h()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */