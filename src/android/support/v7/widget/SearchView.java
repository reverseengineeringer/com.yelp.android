package android.support.v7.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.v;
import android.support.v4.widget.i;
import android.support.v7.internal.widget.bd;
import android.support.v7.internal.widget.bg;
import android.support.v7.internal.widget.bm;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.g.b;
import com.yelp.android.g.e;
import com.yelp.android.g.g;
import com.yelp.android.g.l;
import com.yelp.android.m.c;
import java.util.WeakHashMap;

public class SearchView
  extends LinearLayoutCompat
  implements c
{
  static final cu a;
  private static final boolean c;
  private boolean A;
  private CharSequence B;
  private boolean C;
  private boolean D;
  private int E;
  private boolean F;
  private CharSequence G;
  private CharSequence H;
  private boolean I;
  private int J;
  private SearchableInfo K;
  private Bundle L;
  private final bd M;
  private Runnable N = new ci(this);
  private final Runnable O = new cm(this);
  private Runnable P = new cn(this);
  private final WeakHashMap<String, Drawable.ConstantState> Q = new WeakHashMap();
  private final View.OnClickListener R = new cr(this);
  private final TextView.OnEditorActionListener S = new ct(this);
  private final AdapterView.OnItemClickListener T = new cj(this);
  private final AdapterView.OnItemSelectedListener U = new ck(this);
  private TextWatcher V = new cl(this);
  View.OnKeyListener b = new cs(this);
  private final SearchView.SearchAutoComplete d;
  private final View e;
  private final View f;
  private final View g;
  private final ImageView h;
  private final ImageView i;
  private final ImageView j;
  private final ImageView k;
  private final ImageView l;
  private final View m;
  private final int n;
  private final int o;
  private final int p;
  private final Intent q;
  private final Intent r;
  private cw s;
  private cv t;
  private View.OnFocusChangeListener u;
  private cx v;
  private View.OnClickListener w;
  private boolean x;
  private boolean y;
  private i z;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 8) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      a = new cu();
      return;
    }
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.searchViewStyle);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = bg.a(paramContext, paramAttributeSet, l.SearchView, paramInt, 0);
    M = paramAttributeSet.c();
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(paramAttributeSet.f(l.SearchView_layout, 0), this, true);
    d = ((SearchView.SearchAutoComplete)findViewById(g.search_src_text));
    d.setSearchView(this);
    e = findViewById(g.search_edit_frame);
    f = findViewById(g.search_plate);
    g = findViewById(g.submit_area);
    h = ((ImageView)findViewById(g.search_button));
    i = ((ImageView)findViewById(g.search_go_btn));
    j = ((ImageView)findViewById(g.search_close_btn));
    k = ((ImageView)findViewById(g.search_voice_btn));
    l = ((ImageView)findViewById(g.search_mag_icon));
    f.setBackgroundDrawable(paramAttributeSet.a(l.SearchView_queryBackground));
    g.setBackgroundDrawable(paramAttributeSet.a(l.SearchView_submitBackground));
    n = paramAttributeSet.f(l.SearchView_searchIcon, 0);
    h.setImageResource(n);
    i.setImageDrawable(paramAttributeSet.a(l.SearchView_goIcon));
    j.setImageDrawable(paramAttributeSet.a(l.SearchView_closeIcon));
    k.setImageDrawable(paramAttributeSet.a(l.SearchView_voiceIcon));
    l.setImageDrawable(paramAttributeSet.a(l.SearchView_searchIcon));
    o = paramAttributeSet.f(l.SearchView_suggestionRowLayout, 0);
    p = paramAttributeSet.f(l.SearchView_commitIcon, 0);
    h.setOnClickListener(R);
    j.setOnClickListener(R);
    i.setOnClickListener(R);
    k.setOnClickListener(R);
    d.setOnClickListener(R);
    d.addTextChangedListener(V);
    d.setOnEditorActionListener(S);
    d.setOnItemClickListener(T);
    d.setOnItemSelectedListener(U);
    d.setOnKeyListener(b);
    d.setOnFocusChangeListener(new co(this));
    setIconifiedByDefault(paramAttributeSet.a(l.SearchView_iconifiedByDefault, true));
    paramInt = paramAttributeSet.d(l.SearchView_android_maxWidth, -1);
    if (paramInt != -1) {
      setMaxWidth(paramInt);
    }
    paramContext = paramAttributeSet.b(l.SearchView_queryHint);
    if (!TextUtils.isEmpty(paramContext)) {
      setQueryHint(paramContext);
    }
    paramInt = paramAttributeSet.a(l.SearchView_android_imeOptions, -1);
    if (paramInt != -1) {
      setImeOptions(paramInt);
    }
    paramInt = paramAttributeSet.a(l.SearchView_android_inputType, -1);
    if (paramInt != -1) {
      setInputType(paramInt);
    }
    setFocusable(paramAttributeSet.a(l.SearchView_android_focusable, true));
    paramAttributeSet.b();
    q = new Intent("android.speech.action.WEB_SEARCH");
    q.addFlags(268435456);
    q.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    r = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    r.addFlags(268435456);
    m = findViewById(d.getDropDownAnchor());
    if (m != null)
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label765;
      }
      f();
    }
    for (;;)
    {
      a(x);
      o();
      return;
      label765:
      g();
    }
  }
  
  @TargetApi(8)
  private Intent a(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Intent localIntent = new Intent(paramIntent);
    paramIntent = paramSearchableInfo.getSearchActivity();
    if (paramIntent == null) {}
    for (paramIntent = null;; paramIntent = paramIntent.flattenToShortString())
    {
      localIntent.putExtra("calling_package", paramIntent);
      return localIntent;
    }
  }
  
  private Intent a(Cursor paramCursor, int paramInt, String paramString)
  {
    try
    {
      localObject2 = dc.a(paramCursor, "suggest_intent_action");
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label229;
      }
      localObject1 = localObject2;
      if (Build.VERSION.SDK_INT < 8) {
        break label229;
      }
      localObject1 = K.getSuggestIntentAction();
    }
    catch (RuntimeException paramString)
    {
      for (;;)
      {
        Object localObject1;
        Object localObject3;
        try
        {
          String str;
          paramInt = paramCursor.getPosition();
          Log.w("SearchView", "Search suggestions cursor at row " + paramInt + " returned exception.", paramString);
          return null;
        }
        catch (RuntimeException paramCursor)
        {
          paramInt = -1;
          continue;
        }
        label229:
        Object localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = "android.intent.action.SEARCH";
          continue;
          label246:
          if (localObject3 == null) {
            localObject1 = null;
          }
        }
      }
    }
    localObject3 = dc.a(paramCursor, "suggest_intent_data");
    localObject1 = localObject3;
    if (c)
    {
      localObject1 = localObject3;
      if (localObject3 == null) {
        localObject1 = K.getSuggestIntentData();
      }
    }
    localObject3 = localObject1;
    if (localObject1 != null)
    {
      str = dc.a(paramCursor, "suggest_intent_data_id");
      localObject3 = localObject1;
      if (str != null)
      {
        localObject3 = (String)localObject1 + "/" + Uri.encode(str);
        break label246;
        for (;;)
        {
          localObject3 = dc.a(paramCursor, "suggest_intent_query");
          return a((String)localObject2, (Uri)localObject1, dc.a(paramCursor, "suggest_intent_extra_data"), (String)localObject3, paramInt, paramString);
          localObject1 = Uri.parse((String)localObject3);
        }
      }
    }
  }
  
  private Intent a(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", H);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    if (L != null) {
      paramString1.putExtra("app_data", L);
    }
    if (paramInt != 0)
    {
      paramString1.putExtra("action_key", paramInt);
      paramString1.putExtra("action_msg", paramString4);
    }
    if (c) {
      paramString1.setComponent(K.getSearchActivity());
    }
    return paramString1;
  }
  
  private void a(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = a("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(paramString1);
  }
  
  private void a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      getContext().startActivity(paramIntent);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("SearchView", "Failed launch activity: " + paramIntent, localRuntimeException);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    boolean bool2 = true;
    int i2 = 8;
    y = paramBoolean;
    int i1;
    boolean bool1;
    if (paramBoolean)
    {
      i1 = 0;
      if (TextUtils.isEmpty(d.getText())) {
        break label115;
      }
      bool1 = true;
      label33:
      h.setVisibility(i1);
      b(bool1);
      Object localObject = e;
      if (!paramBoolean) {
        break label121;
      }
      i1 = 8;
      label60:
      ((View)localObject).setVisibility(i1);
      localObject = l;
      if (!x) {
        break label126;
      }
      i1 = i2;
      label81:
      ((ImageView)localObject).setVisibility(i1);
      l();
      if (bool1) {
        break label131;
      }
    }
    label115:
    label121:
    label126:
    label131:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      c(paramBoolean);
      k();
      return;
      i1 = 8;
      break;
      bool1 = false;
      break label33;
      i1 = 0;
      break label60;
      i1 = 0;
      break label81;
    }
  }
  
  private boolean a(int paramInt)
  {
    if ((v == null) || (!v.a(paramInt)))
    {
      e(paramInt);
      return true;
    }
    return false;
  }
  
  private boolean a(int paramInt1, int paramInt2, String paramString)
  {
    boolean bool = false;
    if ((v == null) || (!v.b(paramInt1)))
    {
      b(paramInt1, 0, null);
      setImeVisibility(false);
      r();
      bool = true;
    }
    return bool;
  }
  
  static boolean a(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 2;
  }
  
  private boolean a(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (K == null) {}
    do
    {
      do
      {
        return false;
      } while ((z == null) || (paramKeyEvent.getAction() != 0) || (!v.a(paramKeyEvent)));
      if ((paramInt == 66) || (paramInt == 84) || (paramInt == 61)) {
        return a(d.getListSelection(), 0, null);
      }
      if ((paramInt == 21) || (paramInt == 22))
      {
        if (paramInt == 21) {}
        for (paramInt = 0;; paramInt = d.length())
        {
          d.setSelection(paramInt);
          d.setListSelection(0);
          d.clearListSelection();
          a.a(d, true);
          return true;
        }
      }
    } while ((paramInt != 19) || (d.getListSelection() != 0));
    return false;
  }
  
  @TargetApi(8)
  private Intent b(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Object localObject3 = null;
    ComponentName localComponentName = paramSearchableInfo.getSearchActivity();
    Object localObject1 = new Intent("android.intent.action.SEARCH");
    ((Intent)localObject1).setComponent(localComponentName);
    PendingIntent localPendingIntent = PendingIntent.getActivity(getContext(), 0, (Intent)localObject1, 1073741824);
    Bundle localBundle = new Bundle();
    if (L != null) {
      localBundle.putParcelable("app_data", L);
    }
    Intent localIntent = new Intent(paramIntent);
    paramIntent = "free_form";
    Object localObject2;
    label153:
    int i1;
    if (Build.VERSION.SDK_INT >= 8)
    {
      localObject2 = getResources();
      if (paramSearchableInfo.getVoiceLanguageModeId() != 0) {
        paramIntent = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageModeId());
      }
      if (paramSearchableInfo.getVoicePromptTextId() != 0)
      {
        localObject1 = ((Resources)localObject2).getString(paramSearchableInfo.getVoicePromptTextId());
        if (paramSearchableInfo.getVoiceLanguageId() != 0)
        {
          localObject2 = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageId());
          if (paramSearchableInfo.getVoiceMaxResults() != 0) {
            i1 = paramSearchableInfo.getVoiceMaxResults();
          }
        }
      }
    }
    for (;;)
    {
      localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", paramIntent);
      localIntent.putExtra("android.speech.extra.PROMPT", (String)localObject1);
      localIntent.putExtra("android.speech.extra.LANGUAGE", (String)localObject2);
      localIntent.putExtra("android.speech.extra.MAX_RESULTS", i1);
      if (localComponentName == null) {}
      for (paramIntent = (Intent)localObject3;; paramIntent = localComponentName.flattenToShortString())
      {
        localIntent.putExtra("calling_package", paramIntent);
        localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
        localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
        return localIntent;
      }
      i1 = 1;
      continue;
      localObject2 = null;
      break label153;
      localObject1 = null;
      break;
      localObject2 = null;
      localObject1 = null;
      paramIntent = "free_form";
      i1 = 1;
    }
  }
  
  private CharSequence b(CharSequence paramCharSequence)
  {
    if (!x) {
      return paramCharSequence;
    }
    Drawable localDrawable = M.a(n);
    int i1 = (int)(d.getTextSize() * 1.25D);
    localDrawable.setBounds(0, 0, i1, i1);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.append(paramCharSequence);
    localSpannableStringBuilder.setSpan(new ImageSpan(localDrawable), 1, 2, 33);
    return localSpannableStringBuilder;
  }
  
  private void b(boolean paramBoolean)
  {
    int i2 = 8;
    int i1 = i2;
    if (A)
    {
      i1 = i2;
      if (i())
      {
        i1 = i2;
        if (hasFocus()) {
          if (!paramBoolean)
          {
            i1 = i2;
            if (F) {}
          }
          else
          {
            i1 = 0;
          }
        }
      }
    }
    i.setVisibility(i1);
  }
  
  private boolean b(int paramInt1, int paramInt2, String paramString)
  {
    Cursor localCursor = z.a();
    if ((localCursor != null) && (localCursor.moveToPosition(paramInt1)))
    {
      a(a(localCursor, paramInt2, paramString));
      return true;
    }
    return false;
  }
  
  private void c(CharSequence paramCharSequence)
  {
    boolean bool2 = true;
    Editable localEditable = d.getText();
    H = localEditable;
    if (!TextUtils.isEmpty(localEditable))
    {
      bool1 = true;
      b(bool1);
      if (bool1) {
        break label101;
      }
    }
    label101:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      c(bool1);
      l();
      k();
      if ((s != null) && (!TextUtils.equals(paramCharSequence, G))) {
        s.b(paramCharSequence.toString());
      }
      G = paramCharSequence.toString();
      return;
      bool1 = false;
      break;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    int i1;
    if ((F) && (!c()) && (paramBoolean))
    {
      i1 = 0;
      i.setVisibility(8);
    }
    for (;;)
    {
      k.setVisibility(i1);
      return;
      i1 = 8;
    }
  }
  
  private void e(int paramInt)
  {
    Editable localEditable = d.getText();
    Object localObject = z.a();
    if (localObject == null) {
      return;
    }
    if (((Cursor)localObject).moveToPosition(paramInt))
    {
      localObject = z.c((Cursor)localObject);
      if (localObject != null)
      {
        setQuery((CharSequence)localObject);
        return;
      }
      setQuery(localEditable);
      return;
    }
    setQuery(localEditable);
  }
  
  @TargetApi(11)
  private void f()
  {
    m.addOnLayoutChangeListener(new cp(this));
  }
  
  private void g()
  {
    m.getViewTreeObserver().addOnGlobalLayoutListener(new cq(this));
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(e.abc_search_view_preferred_width);
  }
  
  @TargetApi(8)
  private boolean h()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Intent localIntent;
    if (K != null)
    {
      bool1 = bool2;
      if (K.getVoiceSearchEnabled())
      {
        localIntent = null;
        if (!K.getVoiceSearchLaunchWebSearch()) {
          break label69;
        }
        localIntent = q;
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (localIntent != null)
      {
        bool1 = bool2;
        if (getContext().getPackageManager().resolveActivity(localIntent, 65536) != null) {
          bool1 = true;
        }
      }
      return bool1;
      label69:
      if (K.getVoiceSearchLaunchRecognizer()) {
        localIntent = r;
      }
    }
  }
  
  private boolean i()
  {
    return ((A) || (F)) && (!c());
  }
  
  private void k()
  {
    int i2 = 8;
    int i1 = i2;
    if (i()) {
      if (i.getVisibility() != 0)
      {
        i1 = i2;
        if (k.getVisibility() != 0) {}
      }
      else
      {
        i1 = 0;
      }
    }
    g.setVisibility(i1);
  }
  
  private void l()
  {
    int i4 = 1;
    int i3 = 0;
    int i1;
    int i2;
    label44:
    label56:
    Drawable localDrawable;
    if (!TextUtils.isEmpty(d.getText()))
    {
      i1 = 1;
      i2 = i4;
      if (i1 == 0)
      {
        if ((!x) || (I)) {
          break label94;
        }
        i2 = i4;
      }
      localObject = j;
      if (i2 == 0) {
        break label99;
      }
      i2 = i3;
      ((ImageView)localObject).setVisibility(i2);
      localDrawable = j.getDrawable();
      if (i1 == 0) {
        break label105;
      }
    }
    label94:
    label99:
    label105:
    for (Object localObject = ENABLED_STATE_SET;; localObject = EMPTY_STATE_SET)
    {
      localDrawable.setState((int[])localObject);
      return;
      i1 = 0;
      break;
      i2 = 0;
      break label44;
      i2 = 8;
      break label56;
    }
  }
  
  private void m()
  {
    post(O);
  }
  
  private void n()
  {
    boolean bool = d.hasFocus();
    Drawable localDrawable = f.getBackground();
    if (bool)
    {
      arrayOfInt = ENABLED_FOCUSED_STATE_SET;
      localDrawable.setState(arrayOfInt);
      localDrawable = g.getBackground();
      if (!bool) {
        break label64;
      }
    }
    label64:
    for (int[] arrayOfInt = ENABLED_FOCUSED_STATE_SET;; arrayOfInt = EMPTY_STATE_SET)
    {
      localDrawable.setState(arrayOfInt);
      invalidate();
      return;
      arrayOfInt = EMPTY_STATE_SET;
      break;
    }
  }
  
  private void o()
  {
    if (B != null) {
      d.setHint(b(B));
    }
    String str;
    do
    {
      return;
      if ((!c) || (K == null)) {
        break;
      }
      str = null;
      int i1 = K.getHintId();
      if (i1 != 0) {
        str = getContext().getString(i1);
      }
    } while (str == null);
    d.setHint(b(str));
    return;
    d.setHint(b(""));
  }
  
  @TargetApi(8)
  private void p()
  {
    int i2 = 1;
    d.setThreshold(K.getSuggestThreshold());
    d.setImeOptions(K.getImeOptions());
    int i3 = K.getInputType();
    int i1 = i3;
    if ((i3 & 0xF) == 1)
    {
      i3 &= 0xFFFEFFFF;
      i1 = i3;
      if (K.getSuggestAuthority() != null) {
        i1 = i3 | 0x10000 | 0x80000;
      }
    }
    d.setInputType(i1);
    if (z != null) {
      z.a(null);
    }
    if (K.getSuggestAuthority() != null)
    {
      z = new dc(getContext(), this, K, Q);
      d.setAdapter(z);
      dc localdc = (dc)z;
      i1 = i2;
      if (C) {
        i1 = 2;
      }
      localdc.a(i1);
    }
  }
  
  private void q()
  {
    Editable localEditable = d.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0) && ((s == null) || (!s.a(localEditable.toString()))))
    {
      if (K != null) {
        a(0, null, localEditable.toString());
      }
      setImeVisibility(false);
      r();
    }
  }
  
  private void r()
  {
    d.dismissDropDown();
  }
  
  private void s()
  {
    if (TextUtils.isEmpty(d.getText()))
    {
      if ((x) && ((t == null) || (!t.a())))
      {
        clearFocus();
        a(true);
      }
      return;
    }
    d.setText("");
    d.requestFocus();
    setImeVisibility(true);
  }
  
  private void setImeVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {
      post(N);
    }
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(N);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  private void setQuery(CharSequence paramCharSequence)
  {
    d.setText(paramCharSequence);
    SearchView.SearchAutoComplete localSearchAutoComplete = d;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i1 = 0;; i1 = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i1);
      return;
    }
  }
  
  private void t()
  {
    a(false);
    d.requestFocus();
    setImeVisibility(true);
    if (w != null) {
      w.onClick(this);
    }
  }
  
  @TargetApi(8)
  private void u()
  {
    if (K == null) {}
    do
    {
      return;
      Object localObject = K;
      try
      {
        if (((SearchableInfo)localObject).getVoiceSearchLaunchWebSearch())
        {
          localObject = a(q, (SearchableInfo)localObject);
          getContext().startActivity((Intent)localObject);
          return;
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.w("SearchView", "Could not find voice search activity");
        return;
      }
    } while (!localActivityNotFoundException.getVoiceSearchLaunchRecognizer());
    Intent localIntent = b(r, localActivityNotFoundException);
    getContext().startActivity(localIntent);
  }
  
  private void v()
  {
    int i3;
    Rect localRect;
    int i1;
    if (m.getWidth() > 1)
    {
      Resources localResources = getContext().getResources();
      i3 = f.getPaddingLeft();
      localRect = new Rect();
      boolean bool = bm.a(this);
      if (!x) {
        break label144;
      }
      i1 = localResources.getDimensionPixelSize(e.abc_dropdownitem_icon_width);
      i1 = localResources.getDimensionPixelSize(e.abc_dropdownitem_text_padding_left) + i1;
      d.getDropDownBackground().getPadding(localRect);
      if (!bool) {
        break label149;
      }
    }
    label144:
    label149:
    for (int i2 = -left;; i2 = i3 - (left + i1))
    {
      d.setDropDownHorizontalOffset(i2);
      i2 = m.getWidth();
      int i4 = left;
      int i5 = right;
      d.setDropDownWidth(i1 + (i2 + i4 + i5) - i3);
      return;
      i1 = 0;
      break;
    }
  }
  
  private void w()
  {
    a.a(d);
    a.b(d);
  }
  
  public void a()
  {
    if (I) {
      return;
    }
    I = true;
    J = d.getImeOptions();
    d.setImeOptions(J | 0x2000000);
    d.setText("");
    setIconified(false);
  }
  
  void a(CharSequence paramCharSequence)
  {
    setQuery(paramCharSequence);
  }
  
  public void a(CharSequence paramCharSequence, boolean paramBoolean)
  {
    d.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      d.setSelection(d.length());
      H = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      q();
    }
  }
  
  public void b()
  {
    a("", false);
    clearFocus();
    a(true);
    d.setImeOptions(J);
    I = false;
  }
  
  public boolean c()
  {
    return y;
  }
  
  public void clearFocus()
  {
    D = true;
    setImeVisibility(false);
    super.clearFocus();
    d.clearFocus();
    D = false;
  }
  
  void d()
  {
    a(c());
    m();
    if (d.hasFocus()) {
      w();
    }
  }
  
  public int getImeOptions()
  {
    return d.getImeOptions();
  }
  
  public int getInputType()
  {
    return d.getInputType();
  }
  
  public int getMaxWidth()
  {
    return E;
  }
  
  public CharSequence getQuery()
  {
    return d.getText();
  }
  
  public CharSequence getQueryHint()
  {
    Object localObject2 = null;
    Object localObject1;
    if (B != null) {
      localObject1 = B;
    }
    int i1;
    do
    {
      do
      {
        do
        {
          return (CharSequence)localObject1;
          localObject1 = localObject2;
        } while (!c);
        localObject1 = localObject2;
      } while (K == null);
      i1 = K.getHintId();
      localObject1 = localObject2;
    } while (i1 == 0);
    return getContext().getString(i1);
  }
  
  int getSuggestionCommitIconResId()
  {
    return p;
  }
  
  int getSuggestionRowLayout()
  {
    return o;
  }
  
  public i getSuggestionsAdapter()
  {
    return z;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(O);
    post(P);
    super.onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (c())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    switch (i2)
    {
    default: 
      paramInt1 = i1;
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      return;
      if (E > 0)
      {
        paramInt1 = Math.min(E, i1);
      }
      else
      {
        paramInt1 = Math.min(getPreferredWidth(), i1);
        continue;
        paramInt1 = i1;
        if (E > 0)
        {
          paramInt1 = Math.min(E, i1);
          continue;
          if (E > 0) {
            paramInt1 = E;
          } else {
            paramInt1 = getPreferredWidth();
          }
        }
      }
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    m();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (D) {}
    while (!isFocusable()) {
      return false;
    }
    if (!c())
    {
      boolean bool = d.requestFocus(paramInt, paramRect);
      if (bool) {
        a(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    L = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      s();
      return;
    }
    t();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (x == paramBoolean) {
      return;
    }
    x = paramBoolean;
    a(paramBoolean);
    o();
  }
  
  public void setImeOptions(int paramInt)
  {
    d.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    d.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    E = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(cv paramcv)
  {
    t = paramcv;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    u = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(cw paramcw)
  {
    s = paramcw;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    w = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(cx paramcx)
  {
    v = paramcx;
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    B = paramCharSequence;
    o();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    C = paramBoolean;
    dc localdc;
    if ((z instanceof dc))
    {
      localdc = (dc)z;
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i1 = 2;; i1 = 1)
    {
      localdc.a(i1);
      return;
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    K = paramSearchableInfo;
    if (K != null)
    {
      if (c) {
        p();
      }
      o();
    }
    if ((c) && (h())) {}
    for (boolean bool = true;; bool = false)
    {
      F = bool;
      if (F) {
        d.setPrivateImeOptions("nm");
      }
      a(c());
      return;
    }
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    A = paramBoolean;
    a(c());
  }
  
  public void setSuggestionsAdapter(i parami)
  {
    z = parami;
    d.setAdapter(z);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SearchView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */