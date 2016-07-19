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
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.as.c;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Complimentable;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b.b;
import com.yelp.android.ui.util.as;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class SendCompliment
  extends YelpActivity
  implements ApiRequest.b<Compliment>
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
      paramComplimentType = (CompoundButton)((ViewGroup)findViewById(2131689953)).findViewWithTag(paramComplimentType.name());
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
    for (paramUser = paramUser.ae();; paramUser = a)
    {
      a = paramUser;
      return;
      localComplimentable = b;
      break;
    }
  }
  
  private void b()
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131689953);
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
      localRadioGroup.setOnCheckedChangeListener(new b((Set)localObject3));
    }
    localObject1 = new a((EditText)findViewById(2131689503), findViewById(2131689954));
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
    final EditText localEditText = (EditText)findViewById(2131689503);
    Object localObject = (Compliment.ComplimentType)localEditText.getTag();
    if (localObject == null)
    {
      showDialog(2131166159);
      return;
    }
    String str = String.valueOf(localEditText.getText()).trim();
    if (TextUtils.isEmpty(str))
    {
      showDialog(2131166160);
      return;
    }
    User localUser = AppData.b().q().p();
    localObject = new Compliment(str, (Compliment.ComplimentType)localObject, b, localUser);
    localEditText.setEnabled(false);
    updateOptionsMenu();
    localObject = new as.c(this, (Compliment)localObject, a);
    ((as.c)localObject).f(new Void[0]);
    showLoadingDialog((ApiRequest)localObject, new b.b()
    {
      public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest)
      {
        localEditText.setEnabled(true);
        updateOptionsMenu();
      }
    });
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Compliment paramCompliment)
  {
    if (isFinishing()) {
      return;
    }
    hideLoadingDialog();
    as.a(getString(2131165683), 0);
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("extra.compliment", paramCompliment);
    setResult(-1, paramApiRequest);
    finish();
  }
  
  public void a(Complimentable paramComplimentable)
  {
    b = paramComplimentable;
    if (paramComplimentable != null) {}
    for (paramComplimentable = paramComplimentable.b();; paramComplimentable = a)
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
    setContentView(2130903123);
    paramBundle = getIntent();
    a((User)paramBundle.getParcelableExtra("extra.user"));
    a((Complimentable)paramBundle.getParcelableExtra("extra.complimentable"));
    co localco = AppData.b().q();
    if ((!TextUtils.isEmpty(a)) && (a.equals(localco.a())))
    {
      as.a(2131165590, 1);
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
    case 2131166159: 
      return new AlertDialog.Builder(this).setMessage(2131166159).setPositiveButton(2131166290, null).setIcon(17301543).setTitle(2131165847).create();
    }
    return new AlertDialog.Builder(this).setMessage(2131166160).setPositiveButton(2131166290, null).setIcon(17301543).setTitle(2131165847).create();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755021, paramMenu);
    paramMenu.findItem(2131691015).setTitle(2131166542);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (isFinishing()) {
      return;
    }
    hideLoadingDialog();
    findViewById(2131689503).setEnabled(true);
    as.a(paramYelpException.getMessage(this), 0);
    updateOptionsMenu();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691015) {
      a();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2131691015).setEnabled(findViewById(2131689503).isEnabled());
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  public static final class a
    implements CompoundButton.OnCheckedChangeListener
  {
    private final EditText a;
    private final View b;
    
    public a(EditText paramEditText, View paramView)
    {
      a = paramEditText;
      b = paramView;
    }
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (paramBoolean) {}
      try
      {
        Compliment.ComplimentType localComplimentType = Compliment.ComplimentType.valueOf((String)paramCompoundButton.getTag());
        a.setTag(localComplimentType);
        Context localContext = a.getContext();
        paramCompoundButton = "";
        if (!localComplimentType.equals(Compliment.ComplimentType.NOTE)) {
          paramCompoundButton = localContext.getString(2131165882, new Object[] { localContext.getString(mDescription) });
        }
        a.setHint(paramCompoundButton);
        b.requestFocus();
        return;
      }
      catch (IllegalArgumentException paramCompoundButton) {}
    }
  }
  
  public static final class b
    implements RadioGroup.OnCheckedChangeListener
  {
    private final Set<RadioGroup> a;
    
    public b(Set<RadioGroup> paramSet)
    {
      a = paramSet;
    }
    
    public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
    {
      if ((paramInt != -1) && (((RadioButton)paramRadioGroup.findViewById(paramInt)).isChecked()))
      {
        paramRadioGroup = a.iterator();
        while (paramRadioGroup.hasNext()) {
          ((RadioGroup)paramRadioGroup.next()).clearCheck();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.SendCompliment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */