package com.yelp.android.bb;

import android.content.Context;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.List;

public class d
  extends au<ConversationMessage>
{
  private final LayoutInflater a;
  private final Context b;
  private Conversation c;
  
  public d(Context paramContext)
  {
    a = LayoutInflater.from(paramContext);
    b = paramContext;
  }
  
  public void a(Conversation paramConversation)
  {
    c = paramConversation;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = a.inflate(g.a(), paramViewGroup, false);
      paramViewGroup = new g(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      localObject2 = paramView.getContext();
      if ((paramInt != 0) || (c.getBizUser() == null) || (c.getReviewId() == null)) {
        break;
      }
      localObject1 = (bg)c.getUsers().get(0);
      g.a(paramViewGroup).setVisibility(0);
      g.a(paramViewGroup).setOnClickListener(new e(this, (Context)localObject2));
      g.b(paramViewGroup).setVisibility(8);
      g.c(paramViewGroup).setText(Html.fromHtml(b.getString(2131166616, new Object[] { ((bg)localObject1).getName() })));
      paramViewGroup.a((bg)localObject1);
      paramViewGroup.c().setClickable(false);
      localObject1 = paramView.getContext().getString(2131166806, new Object[] { ((bg)localObject1).getName() });
      paramViewGroup.c().setContentDescription((CharSequence)localObject1);
      return paramView;
      paramViewGroup = (g)paramView.getTag();
    }
    g.a(paramViewGroup).setVisibility(8);
    g.a(paramViewGroup).setOnClickListener(null);
    g.b(paramViewGroup).setVisibility(0);
    Object localObject2 = (ConversationMessage)getItem(paramInt);
    Object localObject1 = ((ConversationMessage)localObject2).getMessagingUser();
    paramViewGroup.a((bg)localObject1);
    paramViewGroup.a(new f(this, (ConversationMessage)localObject2, (bg)localObject1));
    if (((ConversationMessage)localObject2).getMessage().contains("href")) {
      g.c(paramViewGroup).setAutoLinkMask(0);
    }
    Object localObject3 = new SpannableStringBuilder(Html.fromHtml(((ConversationMessage)localObject2).getFormattedMessage(b)));
    g.c(paramViewGroup).setText((CharSequence)localObject3, TextView.BufferType.EDITABLE);
    g.c(paramViewGroup).setMovementMethod(LinkMovementMethod.getInstance());
    g.c(paramViewGroup).setKeyListener(null);
    g.b(paramViewGroup).setText(StringUtils.a(b, StringUtils.Format.ABBREVIATED, ((ConversationMessage)localObject2).getTimeSent()));
    localObject3 = paramViewGroup.c();
    if ((((ConversationMessage)localObject2).getBizUser() == null) || (!TextUtils.isEmpty(c.getBusinessId()))) {}
    for (boolean bool = true;; bool = false)
    {
      ((WebImageView)localObject3).setClickable(bool);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bb.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */