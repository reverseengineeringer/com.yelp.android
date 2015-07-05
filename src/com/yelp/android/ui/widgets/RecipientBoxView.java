package com.yelp.android.ui.widgets;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.yelp.android.appdata.ao;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.cw;
import java.util.ArrayList;

public class RecipientBoxView
  extends LinearLayout
{
  private User a;
  private EditText b;
  private WebImageView c;
  private z d;
  private boolean e = true;
  private boolean f;
  
  public RecipientBoxView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    inflate(paramContext, 2130903403, this);
    b = ((EditText)findViewById(2131494000));
    c = ((WebImageView)findViewById(2131493999));
    d();
  }
  
  private void a(String paramString)
  {
    if (e)
    {
      c.setVisibility(8);
      return;
    }
    c.setVisibility(0);
    c.setImageUrl(paramString, 2130837659);
  }
  
  private void b(User paramUser)
  {
    if ((paramUser == null) && (!e)) {
      return;
    }
    ViewGroup.LayoutParams localLayoutParams = b.getLayoutParams();
    if (e)
    {
      width = -1;
      b.setFocusableInTouchMode(e);
      b.setText("");
      b.requestFocus();
    }
    for (;;)
    {
      b.setLayoutParams(localLayoutParams);
      return;
      b.setText(paramUser.getUserName());
      width = -2;
      b.setFocusable(e);
      b.setPadding(ao.h, 0, ao.a, 0);
    }
  }
  
  private void c(User paramUser)
  {
    a = paramUser;
    if (e)
    {
      if (f)
      {
        startAnimation(e());
        return;
      }
      b(null);
      a(null);
      return;
    }
    b(paramUser);
    if (!f) {
      startAnimation(d(paramUser));
    }
    for (;;)
    {
      d.b(paramUser);
      return;
      a(paramUser.getUserPhotoUrl());
    }
  }
  
  private AlphaAnimation d(User paramUser)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setAnimationListener(new x(this, paramUser));
    localAlphaAnimation.setDuration(cw.a);
    return localAlphaAnimation;
  }
  
  private void d()
  {
    b.setOnTouchListener(new v(this));
    b.addTextChangedListener(new w(this));
  }
  
  private AlphaAnimation e()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setAnimationListener(new y(this));
    localAlphaAnimation.setDuration(cw.c);
    return localAlphaAnimation;
  }
  
  private void f()
  {
    d.b();
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putBoolean("is_editable", e);
    paramBundle.putBoolean("animation_performed", f);
    paramBundle.putParcelable("last_clicked_user", a);
  }
  
  public void a(User paramUser)
  {
    setRecipient(paramUser);
    b();
    d.c();
  }
  
  public void a(ArrayList<User> paramArrayList)
  {
    if (a != null)
    {
      b();
      return;
    }
    f();
  }
  
  public boolean a()
  {
    return a != null;
  }
  
  public void b()
  {
    c(a);
  }
  
  public void b(Bundle paramBundle)
  {
    e = paramBundle.getBoolean("is_editable");
    f = paramBundle.getBoolean("animation_performed", f);
    a = ((User)paramBundle.getParcelable("last_clicked_user"));
    b();
  }
  
  public void c()
  {
    b.setVisibility(8);
  }
  
  public User getRecipient()
  {
    return a;
  }
  
  public View getRecipientView()
  {
    return b;
  }
  
  public void setOnRecipientBoxListener(z paramz)
  {
    d = paramz;
  }
  
  public void setRecipient(User paramUser)
  {
    a = paramUser;
    f = false;
    e = false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.RecipientBoxView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */