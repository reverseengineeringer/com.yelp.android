package com.yelp.android.ui.activities.deals;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.ui.activities.account.a;
import com.yelp.android.ui.activities.account.a.a;
import com.yelp.android.ui.activities.account.a.b;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.w;
import com.yelp.android.util.ContactsFetcher;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public class AddGiftRecipient
  extends YelpActivity
{
  private static String i = "friend.xtra";
  private static String j = "valid.xtra";
  private AutoCompleteTextView a;
  private EditText b;
  private EditText c;
  private EditText d;
  private View e;
  private CheckBox f;
  private Button g;
  private View h;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, AddGiftRecipient.class);
  }
  
  public static Intent a(Context paramContext, GiftRecipient paramGiftRecipient)
  {
    paramContext = new Intent(paramContext, AddGiftRecipient.class);
    paramContext.putExtra(i, paramGiftRecipient);
    paramContext.setData(Uri.fromParts("data", "", paramGiftRecipient.a().toString()));
    return paramContext;
  }
  
  public static Pair<Boolean, GiftRecipient> a(Intent paramIntent)
  {
    return Pair.create(Boolean.valueOf(paramIntent.getBooleanExtra(j, false)), paramIntent.getParcelableExtra(i));
  }
  
  private void a(GiftRecipient paramGiftRecipient)
  {
    getWindow().setSoftInputMode(1);
    setTitle(2131165816);
    g.setText(2131166484);
    h.setVisibility(0);
    b.setText(paramGiftRecipient.d());
    a.setText(paramGiftRecipient.e());
    if (!TextUtils.isEmpty(paramGiftRecipient.c()))
    {
      d.setText(paramGiftRecipient.c());
      c.setText(paramGiftRecipient.b());
      f.setChecked(true);
    }
  }
  
  private void a(ContactsFetcher.Contact paramContact)
  {
    if (paramContact != null)
    {
      a.setText(paramContact.a(this));
      paramContact = paramContact.c(this);
      d.setText(paramContact);
      if ((!TextUtils.isEmpty(paramContact)) && (!f.isChecked())) {
        f.setChecked(true);
      }
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.DealAddGiftRecipient;
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
      if (paramInt2 == -1) {
        a(ContactsFetcher.b().a(this, paramIntent));
      }
    }
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    final View localView = findViewById(2131689694);
    c = ((EditText)localView.findViewById(2131689696));
    paramBundle = c.getFilters();
    c localc = new c();
    if ((paramBundle == null) || (paramBundle.length == 0))
    {
      paramBundle = new InputFilter[1];
      paramBundle[0] = localc;
    }
    for (;;)
    {
      c.setFilters(paramBundle);
      d = ((EditText)localView.findViewById(2131689695));
      b = ((EditText)findViewById(2131689691));
      paramBundle = AppData.b().q().o();
      b.setText(paramBundle);
      a = ((AutoCompleteTextView)findViewById(2131689693));
      paramBundle = new a(this);
      a.setAdapter(paramBundle);
      a.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          if ((paramAnonymousCharSequence instanceof Spanned))
          {
            paramAnonymousCharSequence = (Spanned)paramAnonymousCharSequence;
            paramAnonymousCharSequence = (ContactsFetcher.Contact[])paramAnonymousCharSequence.getSpans(0, paramAnonymousCharSequence.length(), ContactsFetcher.Contact.class);
            if (paramAnonymousCharSequence.length > 0) {
              AddGiftRecipient.a(AddGiftRecipient.this, paramAnonymousCharSequence[0]);
            }
            return;
          }
          paramBundle.getFilter().filter(paramAnonymousCharSequence);
        }
      });
      e = findViewById(2131689692);
      paramBundle = ContactsFetcher.b().a();
      e.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          startActivityForResult(paramBundle, 100);
        }
      });
      if (paramBundle == null) {
        e.setVisibility(8);
      }
      f = ((CheckBox)findViewById(2131689653));
      g = ((Button)findViewById(2131689697));
      paramBundle = new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          paramAnonymousCompoundButton = localView;
          if (paramAnonymousBoolean)
          {
            i = 0;
            paramAnonymousCompoundButton.setVisibility(i);
            localView.setEnabled(paramAnonymousBoolean);
            paramAnonymousCompoundButton = AddGiftRecipient.c(AddGiftRecipient.this);
            if (!paramAnonymousBoolean) {
              break label77;
            }
            i = AddGiftRecipient.a(AddGiftRecipient.this).getId();
            label47:
            paramAnonymousCompoundButton.setNextFocusDownId(i);
            if (!paramAnonymousBoolean) {
              break label91;
            }
          }
          label77:
          label91:
          for (int i = 268435461;; i = 268435462)
          {
            AddGiftRecipient.c(AddGiftRecipient.this).setImeOptions(i);
            return;
            i = 8;
            break;
            i = AddGiftRecipient.b(AddGiftRecipient.this).getId();
            break label47;
          }
        }
      };
      paramBundle.onCheckedChanged(f, f.isChecked());
      f.setOnCheckedChangeListener(paramBundle);
      g.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          String str1 = null;
          String str2 = String.valueOf(AddGiftRecipient.d(AddGiftRecipient.this).getText());
          String str3 = String.valueOf(AddGiftRecipient.c(AddGiftRecipient.this).getText());
          boolean bool = AddGiftRecipient.e(AddGiftRecipient.this).isChecked();
          if (bool) {}
          for (paramAnonymousView = String.valueOf(AddGiftRecipient.a(AddGiftRecipient.this).getText());; paramAnonymousView = null)
          {
            if (bool) {
              str1 = String.valueOf(AddGiftRecipient.f(AddGiftRecipient.this).getText());
            }
            int j = 0;
            localObject = new a.b();
            int i = j;
            if (bool)
            {
              i = j;
              if (!new a.a().a(AddGiftRecipient.a(AddGiftRecipient.this)))
              {
                AddGiftRecipient.a(AddGiftRecipient.this).setError(getText(2131166356));
                i = 1;
              }
            }
            if (!((a)localObject).a(AddGiftRecipient.c(AddGiftRecipient.this)))
            {
              AddGiftRecipient.c(AddGiftRecipient.this).setError(getText(2131166011));
              i = 1;
            }
            if (i == 0) {
              break;
            }
            return;
          }
          Object localObject = getIntent();
          GiftRecipient localGiftRecipient = (GiftRecipient)((Intent)localObject).getParcelableExtra(AddGiftRecipient.a());
          if (localGiftRecipient == null) {}
          for (paramAnonymousView = new GiftRecipient(str3, str2, str1, paramAnonymousView);; paramAnonymousView = new GiftRecipient(localGiftRecipient, str3, str2, str1, paramAnonymousView))
          {
            ((Intent)localObject).putExtra(AddGiftRecipient.b(), true);
            ((Intent)localObject).putExtra(AddGiftRecipient.a(), paramAnonymousView);
            setResult(-1, (Intent)localObject);
            finish();
            return;
          }
        }
      });
      h = findViewById(2131689698);
      h.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = getIntent();
          paramAnonymousView.putExtra(AddGiftRecipient.b(), false);
          setResult(-1, paramAnonymousView);
          finish();
        }
      });
      paramBundle = (GiftRecipient)getIntent().getParcelableExtra(i);
      if (paramBundle != null) {
        a(paramBundle);
      }
      return;
      int k = paramBundle.length;
      InputFilter[] arrayOfInputFilter = new InputFilter[k + 1];
      System.arraycopy(paramBundle, 0, arrayOfInputFilter, 0, k);
      arrayOfInputFilter[k] = localc;
    }
  }
  
  public static class a
    extends w<ContactsFetcher.Contact>
    implements Filterable
  {
    private final WeakReference<Activity> a;
    
    public a(Activity paramActivity)
    {
      a = new WeakReference(paramActivity);
    }
    
    public Filter getFilter()
    {
      return new AddGiftRecipient.b((Activity)a.get(), this);
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Context localContext = paramViewGroup.getContext();
      View localView = paramView;
      if (paramView == null)
      {
        localView = LayoutInflater.from(localContext).inflate(2130903383, paramViewGroup, false);
        paramView = (TextView)localView.findViewById(2131690328);
        localView.setTag(Pair.create((ImageView)localView.findViewById(2131689637), paramView));
      }
      paramView = (ContactsFetcher.Contact)getItem(paramInt);
      paramViewGroup = (Pair)localView.getTag();
      if (paramViewGroup != null)
      {
        Bitmap localBitmap = paramView.e(localContext);
        if (localBitmap == null) {
          break label123;
        }
        ((ImageView)first).setImageBitmap(localBitmap);
      }
      for (;;)
      {
        ((TextView)second).setText(paramView.a(localContext));
        return localView;
        label123:
        ((ImageView)first).setImageResource(2130837703);
      }
    }
  }
  
  private static final class b
    extends Filter
  {
    private final WeakReference<Activity> a;
    private final AddGiftRecipient.a b;
    
    public b(Activity paramActivity, AddGiftRecipient.a parama)
    {
      a = new WeakReference(paramActivity);
      b = parama;
    }
    
    public CharSequence convertResultToString(Object paramObject)
    {
      Object localObject = (Activity)a.get();
      if ((localObject != null) && ((paramObject instanceof ContactsFetcher.Contact)))
      {
        localObject = new SpannableString(((ContactsFetcher.Contact)paramObject).a((Context)localObject));
        ((SpannableString)localObject).setSpan(paramObject, 0, 0, 17);
        return (CharSequence)localObject;
      }
      return super.convertResultToString(paramObject);
    }
    
    protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      List localList = Collections.emptyList();
      Activity localActivity = (Activity)a.get();
      if ((!TextUtils.isEmpty(paramCharSequence)) && (localActivity != null)) {}
      for (paramCharSequence = ContactsFetcher.b().a((Context)a.get(), paramCharSequence.toString(), 4);; paramCharSequence = localList)
      {
        values = paramCharSequence;
        count = paramCharSequence.size();
        return localFilterResults;
      }
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      paramCharSequence = (List)values;
      b.a(paramCharSequence);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.AddGiftRecipient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */