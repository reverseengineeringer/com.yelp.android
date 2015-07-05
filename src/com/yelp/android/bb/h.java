package com.yelp.android.bb;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class h
  extends au<Conversation>
{
  private final LayoutInflater a;
  private final Context b;
  private String c;
  
  public h(Context paramContext)
  {
    a(new ArrayList());
    a = LayoutInflater.from(paramContext);
    b = paramContext;
  }
  
  private void a(j paramj, boolean paramBoolean)
  {
    if (b.getResources().getConfiguration().orientation == 2)
    {
      paramj = paramj.b();
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i = 2130838353;; i = 2130838358)
    {
      paramj.setBackgroundResource(i);
      return;
    }
  }
  
  private void a(Conversation paramConversation, j paramj)
  {
    if (paramConversation.isRead())
    {
      j.a(paramj).setTextAppearance(b, 2131689724);
      j.b(paramj).setTextAppearance(b, 2131689707);
      if (j.d(paramj) != null) {
        j.d(paramj).setTextAppearance(b, 2131689711);
      }
    }
    do
    {
      return;
      j.a(paramj).setTextAppearance(b, 2131689726);
      j.b(paramj).setTextAppearance(b, 2131689709);
    } while (j.d(paramj) == null);
    j.d(paramj).setTextAppearance(b, 2131689707);
  }
  
  private void b(Conversation paramConversation, j paramj)
  {
    if (!paramConversation.getLatestMessage().getMessagingUser().getId().equals(paramConversation.getOtherUser().getId())) {}
    for (int i = 1; i != 0; i = 0)
    {
      j.a(paramj).setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838170, 0);
      return;
    }
    j.a(paramj).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
  }
  
  public Conversation a(String paramString)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      Conversation localConversation = (Conversation)localIterator.next();
      if (localConversation.getId().equals(paramString)) {
        return localConversation;
      }
    }
    return null;
  }
  
  public void a(Conversation paramConversation)
  {
    paramConversation = a(paramConversation.getId());
    if (paramConversation != null)
    {
      paramConversation.setRead(true);
      notifyDataSetChanged();
    }
  }
  
  public int b(String paramString)
  {
    int i = 0;
    while (i < a().size())
    {
      if (((Conversation)a().get(i)).getId().equals(paramString)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public List<Conversation> b()
  {
    return a();
  }
  
  public void c(String paramString)
  {
    c = paramString;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Conversation localConversation;
    Object localObject;
    if (paramView == null)
    {
      paramView = a.inflate(j.a(), paramViewGroup, false);
      paramViewGroup = new j(paramView);
      paramView.setTag(paramViewGroup);
      localConversation = (Conversation)getItem(paramInt);
      if (localConversation.getSubjectInConversationList() == null) {
        break label305;
      }
      localObject = localConversation.getSubjectInConversationList();
      label56:
      j.a(paramViewGroup).setText(localConversation.getOtherUser().getName());
      j.b(paramViewGroup).setText(Html.fromHtml(((String)localObject).replace("\n", "<br>")));
      j.c(paramViewGroup).setText(StringUtils.a(b, StringUtils.Format.ABBREVIATED, localConversation.getLatestMessage().getTimeSent()));
      if (j.d(paramViewGroup) != null) {
        j.d(paramViewGroup).setText(Html.fromHtml(localConversation.getLatestMessage().getMessage().replace("\n", "<br>")));
      }
      a(localConversation, paramViewGroup);
      b(localConversation, paramViewGroup);
      if ((getCount() != 1) && (!localConversation.getId().equals(c))) {
        break label315;
      }
      bool = true;
      label189:
      a(paramViewGroup, bool);
      paramViewGroup.a(localConversation.getOtherUser());
      paramViewGroup.a(new i(this, localConversation));
      localObject = paramViewGroup.c();
      if ((localConversation.getBizUser() != null) && (TextUtils.isEmpty(localConversation.getBusinessId()))) {
        break label321;
      }
    }
    label305:
    label315:
    label321:
    for (boolean bool = true;; bool = false)
    {
      ((WebImageView)localObject).setClickable(bool);
      localObject = paramView.getContext().getString(2131166806, new Object[] { localConversation.getOtherUser().getName() });
      paramViewGroup.c().setContentDescription((CharSequence)localObject);
      return paramView;
      paramViewGroup = (j)paramView.getTag();
      break;
      localObject = localConversation.getSubject();
      break label56;
      bool = false;
      break label189;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bb.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */