package com.yelp.android.ui.activities.account;

import android.content.Context;
import android.content.Intent;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AbsListView.LayoutParams;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.bc;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.services.i;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.dialogs.ListDialogFragment.a;
import com.yelp.android.ui.dialogs.SingleChoiceListDialogFragment;
import com.yelp.android.ui.panels.ButtonWithIcon;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public class CreditCardSelector
  extends YelpListActivity
{
  private ArrayList<PaymentMethod> a;
  private a b;
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
    new bc((PaymentMethod)a.remove(paramInt)).f(new Void[0]);
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
  
  private void b()
  {
    startActivityForResult(WebViewActivity.getWebIntent(this, new Uri.Builder().scheme("https").authority(i.a(this)).path("user_credit_card/add").appendQueryParameter("webview_flow", "add_cc").build(), getString(2131165451), ViewIri.AccountAddCreditCard, EnumSet.of(WebViewActivity.Feature.LOGIN, WebViewActivity.Feature.EVENTS), WebViewActivity.BackBehavior.NONE), 1036);
  }
  
  public static boolean b(Intent paramIntent)
  {
    boolean bool = false;
    if (paramIntent != null) {
      bool = paramIntent.getBooleanExtra("extra.card_added", false);
    }
    return bool;
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
    final ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < a.size())
    {
      localObject = (PaymentMethod)a.get(i);
      localArrayList.add(new Pair(((PaymentMethod)localObject).c(), localObject));
      i += 1;
    }
    Object localObject = SingleChoiceListDialogFragment.b(2131165761, localArrayList);
    ((ListDialogFragment)localObject).a(getString(2131166365));
    ((ListDialogFragment)localObject).a(new ListDialogFragment.a()
    {
      public void a(String paramAnonymousString, Parcelable paramAnonymousParcelable)
      {
        paramAnonymousString = new Pair(paramAnonymousString, paramAnonymousParcelable);
        CreditCardSelector.a(CreditCardSelector.this, localArrayList.indexOf(paramAnonymousString));
      }
    });
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
      return;
      if (paramInt2 == 0)
      {
        if (a.isEmpty()) {
          f();
        }
      }
      else
      {
        c = true;
        f();
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setFlags(8192, 8192);
    ButtonWithIcon localButtonWithIcon = a.a(r());
    localButtonWithIcon.getTextView().setText(2131165462);
    localButtonWithIcon.getImageView().setImageResource(2130838323);
    localButtonWithIcon.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CreditCardSelector.a(CreditCardSelector.this);
      }
    });
    c = false;
    r().addFooterView(localButtonWithIcon, null, true);
    if (paramBundle == null) {}
    for (a = getIntent().getParcelableArrayListExtra("extra.cards");; a = paramBundle.getParcelableArrayList("extra.cards"))
    {
      if (a == null) {
        a = new ArrayList();
      }
      b = new a(a);
      r().setAdapter(b);
      registerForContextMenu(r());
      r().f();
      if (a.isEmpty()) {
        b();
      }
      return;
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    final int i = position;
    PaymentMethod localPaymentMethod = (PaymentMethod)((AdapterView)paramView).getAdapter().getItem(i);
    if (localPaymentMethod != null)
    {
      paramContextMenu.setHeaderTitle(localPaymentMethod.c());
      paramContextMenu.setHeaderIcon(17301543);
      paramContextMenu.add(0, 2131691014, 0, 2131165760).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
      {
        public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          CreditCardSelector.a(CreditCardSelector.this, i);
          return true;
        }
      });
    }
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755020, paramMenu);
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
    case 2131691013: 
      b();
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
  
  public static final class a
    extends w<PaymentMethod>
  {
    private static final AbsListView.LayoutParams a = new AbsListView.LayoutParams(-1, -2);
    
    public a(ArrayList<PaymentMethod> paramArrayList)
    {
      a(paramArrayList);
    }
    
    public static final ButtonWithIcon a(ViewGroup paramViewGroup)
    {
      paramViewGroup = new ButtonWithIcon(paramViewGroup.getContext());
      paramViewGroup.setLayoutParams(a);
      return paramViewGroup;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        paramView = a(paramViewGroup);
      }
      for (;;)
      {
        paramViewGroup = (ButtonWithIcon)paramView;
        PaymentMethod localPaymentMethod = (PaymentMethod)getItem(paramInt);
        if (!ar.a(paramView.getContext(), paramViewGroup.getImageView(), localPaymentMethod.a())) {
          paramViewGroup.getImageView().setImageUrl(localPaymentMethod.b(), 2130837813);
        }
        paramViewGroup.getTextView().setText(localPaymentMethod.c());
        return paramViewGroup;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.CreditCardSelector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */