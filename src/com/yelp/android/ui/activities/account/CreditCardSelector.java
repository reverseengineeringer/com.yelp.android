package com.yelp.android.ui.activities.account;

import android.content.Context;
import android.content.Intent;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.bl;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.services.x;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.dialogs.ChoiceDialog;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.dialogs.SingleChoiceListDialogFragment;
import com.yelp.android.ui.panels.ButtonWithIcon;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public class CreditCardSelector
  extends YelpListActivity
{
  private ArrayList<PaymentMethod> a;
  private e b;
  private boolean c;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, CreditCardSelector.class);
  }
  
  public static Intent a(Context paramContext, ArrayList<PaymentMethod> paramArrayList)
  {
    paramContext = new Intent(paramContext, CreditCardSelector.class);
    paramContext.putExtra("extra.cards", paramArrayList);
    return paramContext;
  }
  
  public static Pair<PaymentMethod, ArrayList<PaymentMethod>> a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return Pair.create(null, new ArrayList());
    }
    paramIntent = paramIntent.getParcelableArrayListExtra("extra.cards");
    if ((paramIntent == null) || (paramIntent.isEmpty())) {
      return Pair.create(null, new ArrayList());
    }
    return Pair.create(paramIntent.get(0), paramIntent);
  }
  
  private void a(int paramInt)
  {
    new bl((PaymentMethod)a.remove(paramInt)).execute(new Void[0]);
    if (a.isEmpty())
    {
      setResult(-1);
      f();
      return;
    }
    b.a(a);
    b.notifyDataSetChanged();
  }
  
  private void a(PaymentMethod paramPaymentMethod)
  {
    a.remove(paramPaymentMethod);
    a.add(0, paramPaymentMethod);
    f();
  }
  
  public static boolean b(Intent paramIntent)
  {
    boolean bool = false;
    if (paramIntent != null) {
      bool = paramIntent.getBooleanExtra("extra.card_added", false);
    }
    return bool;
  }
  
  private void c()
  {
    if (WebViewActivity.isEventsFeatureSupported())
    {
      startActivityForResult(WebViewActivity.getWebIntent(this, new Uri.Builder().scheme("https").authority(x.a(this)).path("user_credit_card/add").appendQueryParameter("webview_flow", "add_cc").build(), getString(2131165326), ViewIri.AccountAddCreditCard, EnumSet.of(WebViewActivity.Feature.LOGIN, WebViewActivity.Feature.EVENTS)), 1032);
      return;
    }
    q().setVisibility(8);
    populateError(ErrorType.ADD_CREDIT_CARD_NOT_SUPPORTED, new b(this));
  }
  
  private void f()
  {
    Intent localIntent = new Intent(getIntent());
    if (!a.isEmpty()) {
      localIntent.putExtra("extra.cards", a);
    }
    localIntent.putExtra("extra.card_added", c);
    setResult(-1, localIntent);
    finish();
  }
  
  private void g()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < a.size())
    {
      localObject = (PaymentMethod)a.get(i);
      localArrayList.add(new Pair(((PaymentMethod)localObject).getDescription(), localObject));
      i += 1;
    }
    new SingleChoiceListDialogFragment();
    Object localObject = SingleChoiceListDialogFragment.b(2131165687, localArrayList);
    ((ListDialogFragment)localObject).a(getString(2131166344));
    ((ListDialogFragment)localObject).a(new d(this, localArrayList));
    ((ListDialogFragment)localObject).show(getSupportFragmentManager(), "dialog");
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (PaymentMethod)paramListView.getAdapter().getItem(paramInt);
    if (paramListView != null) {
      a(paramListView);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.AccountPaymentMethods;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      do
      {
        return;
        if (paramInt2 == 0)
        {
          if (!a.isEmpty()) {
            break;
          }
          f();
          break;
        }
        c = true;
        f();
        break;
      } while (paramInt2 == 0);
      a(ChoiceDialog.a(paramIntent));
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ButtonWithIcon localButtonWithIcon = e.a(q());
    localButtonWithIcon.getTextView().setText(2131165336);
    localButtonWithIcon.getImageView().setImageResource(2130838118);
    localButtonWithIcon.setOnClickListener(new a(this));
    c = false;
    q().addFooterView(localButtonWithIcon, null, true);
    if (paramBundle == null) {}
    for (a = getIntent().getParcelableArrayListExtra("extra.cards");; a = paramBundle.getParcelableArrayList("extra.cards"))
    {
      if (a == null) {
        a = new ArrayList();
      }
      b = new e(a);
      q().setAdapter(b);
      registerForContextMenu(q());
      q().f();
      if (a.isEmpty()) {
        c();
      }
      return;
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i = position;
    PaymentMethod localPaymentMethod = (PaymentMethod)((AdapterView)paramView).getAdapter().getItem(i);
    if (localPaymentMethod != null)
    {
      paramContextMenu.setHeaderTitle(localPaymentMethod.getDescription());
      paramContextMenu.setHeaderIcon(17301543);
      paramContextMenu.add(0, 2131494140, 0, 2131165686).setOnMenuItemClickListener(new c(this, i));
    }
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755018, paramMenu);
    return true;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      f();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332: 
      f();
      return true;
    case 2131494139: 
      c();
      return true;
    }
    g();
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return true;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("extra.cards", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.CreditCardSelector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */