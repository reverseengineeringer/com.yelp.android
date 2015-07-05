package com.yelp.android.ui.activities.compliments;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.RadioGroup;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ay;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Complimentable;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cr;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class SendCompliment
  extends YelpActivity
  implements m<Compliment>
{
  private String a;
  private Complimentable b;
  
  public static final Intent a(Context paramContext, Complimentable paramComplimentable)
  {
    paramContext = new Intent(paramContext, SendCompliment.class);
    paramContext.putExtra("extra.complimentable", paramComplimentable);
    return paramContext;
  }
  
  public static final Intent a(Context paramContext, Complimentable paramComplimentable, Compliment.ComplimentType paramComplimentType)
  {
    paramContext = a(paramContext, paramComplimentable);
    paramContext.putExtra("extra.compliment_type", paramComplimentType.ordinal());
    return paramContext;
  }
  
  public static final Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, SendCompliment.class);
    paramContext.putExtra("extra.user", paramUser);
    return paramContext;
  }
  
  private void a(Compliment.ComplimentType paramComplimentType)
  {
    if (paramComplimentType != null)
    {
      paramComplimentType = (CompoundButton)((ViewGroup)findViewById(2131493292)).findViewWithTag(paramComplimentType.name());
      if (paramComplimentType != null) {
        paramComplimentType.setChecked(true);
      }
    }
  }
  
  private void a(User paramUser)
  {
    Complimentable localComplimentable;
    if (paramUser != null)
    {
      localComplimentable = null;
      b = localComplimentable;
      if (paramUser == null) {
        break label34;
      }
    }
    label34:
    for (paramUser = paramUser.getId();; paramUser = a)
    {
      a = paramUser;
      return;
      localComplimentable = b;
      break;
    }
  }
  
  private void b()
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131493292);
    Object localObject1 = new LinkedHashSet();
    int j = localViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      ((LinkedHashSet)localObject1).add((RadioGroup)localViewGroup.getChildAt(i));
      i += 1;
    }
    Object localObject2 = ((LinkedHashSet)localObject1).iterator();
    RadioGroup localRadioGroup;
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localRadioGroup = (RadioGroup)((Iterator)localObject2).next();
      localObject3 = new HashSet((Collection)localObject1);
      ((Set)localObject3).remove(localRadioGroup);
      localRadioGroup.setOnCheckedChangeListener(new i((Set)localObject3));
    }
    localObject1 = new h((EditText)findViewById(2131492893), findViewById(2131493293));
    localObject2 = Compliment.ComplimentType.values();
    j = localObject2.length;
    i = 0;
    if (i < j)
    {
      localRadioGroup = localObject2[i];
      localObject3 = (CompoundButton)localViewGroup.findViewWithTag(localRadioGroup.name());
      if (localObject3 == null) {}
      for (;;)
      {
        i += 1;
        break;
        ((CompoundButton)localObject3).setCompoundDrawablesWithIntrinsicBounds(mIcon, 0, 0, 0);
        ((CompoundButton)localObject3).setText(mText);
        ((CompoundButton)localObject3).setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)localObject1);
      }
    }
    localViewGroup.invalidate();
  }
  
  public void a()
  {
    EditText localEditText = (EditText)findViewById(2131492893);
    Object localObject = (Compliment.ComplimentType)localEditText.getTag();
    if (localObject == null)
    {
      showDialog(2131166097);
      return;
    }
    String str = String.valueOf(localEditText.getText()).trim();
    if (TextUtils.isEmpty(str))
    {
      showDialog(2131166098);
      return;
    }
    User localUser = AppData.b().m().s();
    localObject = new Compliment(str, (Compliment.ComplimentType)localObject, b, localUser);
    localEditText.setEnabled(false);
    updateOptionsMenu();
    localObject = new ay(this, (Compliment)localObject, a);
    ((ay)localObject).execute(new Void[0]);
    showLoadingDialog((ApiRequest)localObject, new g(this, localEditText));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Compliment paramCompliment)
  {
    if (isFinishing()) {
      return;
    }
    hideLoadingDialog();
    cr.a(getString(2131165629), 0);
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("extra.compliment", paramCompliment);
    setResult(-1, paramApiRequest);
    finish();
  }
  
  public void a(Complimentable paramComplimentable)
  {
    b = paramComplimentable;
    if (paramComplimentable != null) {}
    for (paramComplimentable = paramComplimentable.getUserId();; paramComplimentable = a)
    {
      a = paramComplimentable;
      return;
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SendCompliment;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903112);
    paramBundle = getIntent();
    a((User)paramBundle.getParcelableExtra("extra.user"));
    a((Complimentable)paramBundle.getParcelableExtra("extra.complimentable"));
    dc localdc = AppData.b().m();
    if ((!TextUtils.isEmpty(a)) && (a.equals(localdc.b())))
    {
      cr.a(2131165463, 1);
      finish();
    }
    b();
    if (paramBundle.hasExtra("extra.compliment_type")) {
      a(Compliment.ComplimentType.values()[paramBundle.getIntExtra("extra.compliment_type", 0)]);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 2131166097: 
      return new AlertDialog.Builder(this).setMessage(2131166097).setPositiveButton(2131166237, null).setIcon(17301543).setTitle(2131165763).create();
    }
    return new AlertDialog.Builder(this).setMessage(2131166098).setPositiveButton(2131166237, null).setIcon(17301543).setTitle(2131165763).create();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    paramMenu.findItem(2131494141).setTitle(2131166542);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (isFinishing()) {
      return;
    }
    hideLoadingDialog();
    findViewById(2131492893).setEnabled(true);
    cr.a(paramYelpException.getMessage(this), 0);
    updateOptionsMenu();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141) {
      a();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2131494141).setEnabled(findViewById(2131492893).isEnabled());
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.SendCompliment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */