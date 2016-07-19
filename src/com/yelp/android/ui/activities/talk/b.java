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
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.bv.c.b;
import com.yelp.android.serializable.TalkMessage;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class b
  extends w<TalkMessage>
  implements a.a
{
  private final c a;
  private final Context b;
  private final Set<Integer> c;
  private final a d;
  private com.yelp.android.bv.c e;
  private b f;
  private aj.b<?> g;
  private String h;
  private int i;
  private boolean j;
  private ApiRequest.b<c.b> k = new b.3(this);
  
  public b(c paramc, Context paramContext)
  {
    a = paramc;
    b = paramContext;
    c = new HashSet();
    d = new a(this);
    j = true;
  }
  
  private CharSequence a(String paramString, CharSequence paramCharSequence)
  {
    paramString = SpannableString.valueOf(paramString.substring(0, paramString.length() - 1));
    paramString.setSpan(new StyleSpan(1), 0, paramString.length(), 18);
    paramCharSequence = SpannableString.valueOf(Html.fromHtml(paramCharSequence.toString()));
    return TextUtils.expandTemplate(b.getText(2131166622), new CharSequence[] { paramString, paramCharSequence });
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
    h = ((TalkMessage)a().get(a().size() - 1)).f();
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
    if ((!c.contains(Integer.valueOf(paramInt))) && (paramTextView.getLineCount() > b.getResources().getInteger(2131492896)))
    {
      paramTextView.setMaxLines(b.getResources().getInteger(2131492896));
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
      if (((TalkMessage)localList.get(paramInt)).f().equals(h)) {
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
      g.a(b.getString(2131166182, new Object[] { Integer.valueOf(paramInt) }));
    }
  }
  
  public void a(int paramInt)
  {
    i = paramInt;
    e = a.a(f(), i, k);
    e.f(new Void[0]);
    d.a(true);
  }
  
  void a(c.b paramb)
  {
    int m = paramb.b();
    if (m > 1)
    {
      c(Math.min(25, m));
      return;
    }
    h = paramb.c();
    a(paramb.a());
    d(getCount());
    notifyDataSetChanged();
  }
  
  void a(b paramb)
  {
    f = paramb;
  }
  
  void a(aj.b<?> paramb)
  {
    g = paramb;
    d(5);
  }
  
  void b()
  {
    if (e != null)
    {
      e.a(true);
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
      e.a(true);
      e = null;
    }
    c.clear();
    d.clear();
  }
  
  a d()
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
      paramView = LayoutInflater.from(b).inflate(2130903467, paramViewGroup, false);
      paramView.setTag(new b.a(this, paramView));
    }
    for (;;)
    {
      b.a locala = (b.a)paramView.getTag();
      TalkMessage localTalkMessage = (TalkMessage)getItem(paramInt);
      c.setText(StringUtils.a(b, StringUtils.Format.ABBREVIATED, localTalkMessage.g()));
      if (!TextUtils.isEmpty(localTalkMessage.c()))
      {
        a.setImageResource(2130837703);
        if (localTalkMessage.c().equals("BY_ADMIN")) {
          paramInt = 2131166651;
        }
        for (;;)
        {
          b.setText(b.getString(paramInt));
          return paramView;
          if (localTalkMessage.c().equals("BY_ADMIN_TOS")) {
            paramInt = 2131166652;
          } else {
            paramInt = 2131166682;
          }
        }
      }
      a.setImageUrl(localTalkMessage.a());
      a.setOnClickListener(new b.1(this, localTalkMessage));
      b.setOnClickListener(new b.2(this, paramInt, paramView, paramViewGroup, locala));
      b.setText(a(localTalkMessage.b(), localTalkMessage.d()));
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
 * Qualified Name:     com.yelp.android.ui.activities.talk.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */