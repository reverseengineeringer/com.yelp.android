package com.yelp.android.ui.activities.categorypicker;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.co.a.f;
import com.yelp.android.co.a.h;
import com.yelp.android.co.a.j;
import com.yelp.android.serializable.CategorySuggestion;
import com.yelp.android.ui.activities.support.YelpApiFragment;
import java.util.ArrayList;
import java.util.List;

public abstract class AddNewCategoryAbstractFragment<ApiResult extends CategorySuggestion>
  extends YelpApiFragment
{
  private a<ApiResult> a;
  private b.a b;
  private String c;
  private EditText d;
  private View e;
  private TextView f;
  private ApiRequest<Void, Void, List<ApiResult>> g;
  private final ApiRequest.b<List<ApiResult>> h = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<ApiResult> paramAnonymousList)
    {
      if (paramAnonymousList.isEmpty()) {
        AddNewCategoryAbstractFragment.b(AddNewCategoryAbstractFragment.this).a(AddNewCategoryAbstractFragment.a(AddNewCategoryAbstractFragment.this).getText().toString());
      }
      a(paramAnonymousList);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      a(paramAnonymousYelpException.getMessage(getActivity()));
    }
  };
  private final TextWatcher i = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      if ((AddNewCategoryAbstractFragment.c(AddNewCategoryAbstractFragment.this) != null) && (AddNewCategoryAbstractFragment.c(AddNewCategoryAbstractFragment.this).u()))
      {
        AddNewCategoryAbstractFragment.c(AddNewCategoryAbstractFragment.this).a(true);
        AddNewCategoryAbstractFragment.d(AddNewCategoryAbstractFragment.this).setVisibility(8);
      }
      if (TextUtils.isEmpty(paramAnonymousCharSequence)) {
        a(new ArrayList());
      }
      while (paramAnonymousCharSequence.length() < 3) {
        return;
      }
      AddNewCategoryAbstractFragment.a(AddNewCategoryAbstractFragment.this, a(paramAnonymousCharSequence, AddNewCategoryAbstractFragment.e(AddNewCategoryAbstractFragment.this), AddNewCategoryAbstractFragment.f(AddNewCategoryAbstractFragment.this)));
      AddNewCategoryAbstractFragment.c(AddNewCategoryAbstractFragment.this).f(new Void[0]);
      AddNewCategoryAbstractFragment.d(AddNewCategoryAbstractFragment.this).setVisibility(0);
    }
  };
  @SuppressLint({"ClickableViewAccessibility"})
  private final View.OnTouchListener j = new View.OnTouchListener()
  {
    public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      if (paramAnonymousMotionEvent.getAction() == 0) {
        AddNewCategoryAbstractFragment.b(AddNewCategoryAbstractFragment.this).z_();
      }
      return false;
    }
  };
  
  protected static void a(boolean paramBoolean, String paramString, Fragment paramFragment)
  {
    Bundle localBundle2 = paramFragment.getArguments();
    Bundle localBundle1 = localBundle2;
    if (localBundle2 == null) {
      localBundle1 = new Bundle();
    }
    localBundle1.putBoolean("args_show_header", paramBoolean);
    localBundle1.putString("args_country_code", paramString);
    paramFragment.setArguments(localBundle1);
  }
  
  protected abstract ApiRequest<Void, Void, List<ApiResult>> a(CharSequence paramCharSequence, String paramString, ApiRequest.b<List<ApiResult>> paramb);
  
  protected final void a(String paramString)
  {
    f.setVisibility(0);
    f.setText(paramString);
    e.setVisibility(8);
  }
  
  protected final void a(List<ApiResult> paramList)
  {
    a.a(paramList);
    if ((TextUtils.isEmpty(d.getText())) || ((f.getVisibility() == 0) && (!paramList.isEmpty()))) {
      f.setVisibility(8);
    }
    for (;;)
    {
      e.setVisibility(8);
      return;
      if ((f.getVisibility() == 8) && (paramList.isEmpty())) {
        a(getString(a.j.no_matching_categories));
      }
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    try
    {
      paramBundle = ((b.b)getActivity()).a();
      a = paramBundle;
      b = paramBundle.a();
      return;
    }
    catch (ClassCastException paramBundle)
    {
      throw new ClassCastException("The corresponding activity must implement CategoryPickerHelperInterface and the helper must implement AddCategoriesSuggestListener.");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = getArguments().getString("args_country_code");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = (ViewGroup)paramLayoutInflater.inflate(a.h.category_picker_add_category_fragment, paramViewGroup);
    f = ((TextView)paramLayoutInflater.findViewById(a.f.error));
    d = ((EditText)paramLayoutInflater.findViewById(a.f.search_for_category));
    d.addTextChangedListener(i);
    d.setOnTouchListener(j);
    d.requestFocus();
    e = paramLayoutInflater.findViewById(a.f.search_loading_spinner);
    if (!getArguments().getBoolean("args_show_header")) {
      paramLayoutInflater.findViewById(a.f.header_text).setVisibility(8);
    }
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    a("business_category_suggest_request_tag", g);
  }
  
  public void onResume()
  {
    super.onResume();
    g = a("business_category_suggest_request_tag", g, h);
  }
  
  public static abstract interface a<ApiResult extends CategorySuggestion>
  {
    public abstract void a(List<ApiResult> paramList);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.AddNewCategoryAbstractFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */