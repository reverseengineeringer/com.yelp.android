.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Lcom/yelp/android/m/c;


# static fields
.field static final a:Landroid/support/v7/widget/cu;

.field private static final c:Z


# instance fields
.field private A:Z

.field private B:Ljava/lang/CharSequence;

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Ljava/lang/CharSequence;

.field private H:Ljava/lang/CharSequence;

.field private I:Z

.field private J:I

.field private K:Landroid/app/SearchableInfo;

.field private L:Landroid/os/Bundle;

.field private final M:Landroid/support/v7/internal/widget/bd;

.field private N:Ljava/lang/Runnable;

.field private final O:Ljava/lang/Runnable;

.field private P:Ljava/lang/Runnable;

.field private final Q:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final R:Landroid/view/View$OnClickListener;

.field private final S:Landroid/widget/TextView$OnEditorActionListener;

.field private final T:Landroid/widget/AdapterView$OnItemClickListener;

.field private final U:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private V:Landroid/text/TextWatcher;

.field b:Landroid/view/View$OnKeyListener;

.field private final d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/widget/ImageView;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/view/View;

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:Landroid/content/Intent;

.field private final r:Landroid/content/Intent;

.field private s:Landroid/support/v7/widget/cw;

.field private t:Landroid/support/v7/widget/cv;

.field private u:Landroid/view/View$OnFocusChangeListener;

.field private v:Landroid/support/v7/widget/cx;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Z

.field private y:Z

.field private z:Landroid/support/v4/widget/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SearchView;->c:Z

    .line 161
    new-instance v0, Landroid/support/v7/widget/cu;

    invoke-direct {v0}, Landroid/support/v7/widget/cu;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/cu;

    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 269
    sget v0, Lcom/yelp/android/g/b;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/high16 v6, 0x10000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 273
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    new-instance v0, Landroid/support/v7/widget/ci;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ci;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Landroid/support/v7/widget/cm;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cm;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Landroid/support/v7/widget/cn;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cn;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->P:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->Q:Ljava/util/WeakHashMap;

    .line 905
    new-instance v0, Landroid/support/v7/widget/cr;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cr;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/view/View$OnClickListener;

    .line 929
    new-instance v0, Landroid/support/v7/widget/cs;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cs;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/view/View$OnKeyListener;

    .line 1104
    new-instance v0, Landroid/support/v7/widget/ct;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ct;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/TextView$OnEditorActionListener;

    .line 1288
    new-instance v0, Landroid/support/v7/widget/cj;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cj;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->T:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1299
    new-instance v0, Landroid/support/v7/widget/ck;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ck;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->U:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1592
    new-instance v0, Landroid/support/v7/widget/cl;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cl;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->V:Landroid/text/TextWatcher;

    .line 275
    sget-object v0, Lcom/yelp/android/g/l;->SearchView:[I

    invoke-static {p1, p2, v0, p3, v4}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/support/v7/internal/widget/bd;

    .line 280
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 282
    sget v2, Lcom/yelp/android/g/l;->SearchView_layout:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v2

    .line 283
    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 284
    sget v0, Lcom/yelp/android/g/g;->search_src_text:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 287
    sget v0, Lcom/yelp/android/g/g;->search_edit_frame:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View;

    .line 288
    sget v0, Lcom/yelp/android/g/g;->search_plate:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    .line 289
    sget v0, Lcom/yelp/android/g/g;->submit_area:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/view/View;

    .line 290
    sget v0, Lcom/yelp/android/g/g;->search_button:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 291
    sget v0, Lcom/yelp/android/g/g;->search_go_btn:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    .line 292
    sget v0, Lcom/yelp/android/g/g;->search_close_btn:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    .line 293
    sget v0, Lcom/yelp/android/g/g;->search_voice_btn:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    .line 294
    sget v0, Lcom/yelp/android/g/g;->search_mag_icon:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    .line 296
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    sget v2, Lcom/yelp/android/g/l;->SearchView_queryBackground:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/view/View;

    sget v2, Lcom/yelp/android/g/l;->SearchView_submitBackground:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    sget v0, Lcom/yelp/android/g/l;->SearchView_searchIcon:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->n:I

    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    iget v2, p0, Landroid/support/v7/widget/SearchView;->n:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    sget v2, Lcom/yelp/android/g/l;->SearchView_goIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    sget v2, Lcom/yelp/android/g/l;->SearchView_closeIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    sget v2, Lcom/yelp/android/g/l;->SearchView_voiceIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    sget v2, Lcom/yelp/android/g/l;->SearchView_searchIcon:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    sget v0, Lcom/yelp/android/g/l;->SearchView_suggestionRowLayout:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->o:I

    .line 307
    sget v0, Lcom/yelp/android/g/l;->SearchView_commitIcon:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->p:I

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->V:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 317
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->T:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 318
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->U:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 321
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v2, Landroid/support/v7/widget/co;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/co;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 329
    sget v0, Lcom/yelp/android/g/l;->SearchView_iconifiedByDefault:I

    invoke-virtual {v1, v0, v5}, Landroid/support/v7/internal/widget/bg;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 331
    sget v0, Lcom/yelp/android/g/l;->SearchView_android_maxWidth:I

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v0

    .line 332
    if-eq v0, v3, :cond_0

    .line 333
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 335
    :cond_0
    sget v0, Lcom/yelp/android/g/l;->SearchView_queryHint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 337
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 339
    :cond_1
    sget v0, Lcom/yelp/android/g/l;->SearchView_android_imeOptions:I

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/internal/widget/bg;->a(II)I

    move-result v0

    .line 340
    if-eq v0, v3, :cond_2

    .line 341
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 343
    :cond_2
    sget v0, Lcom/yelp/android/g/l;->SearchView_android_inputType:I

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/internal/widget/bg;->a(II)I

    move-result v0

    .line 344
    if-eq v0, v3, :cond_3

    .line 345
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 349
    :cond_3
    sget v0, Lcom/yelp/android/g/l;->SearchView_android_focusable:I

    invoke-virtual {v1, v0, v5}, Landroid/support/v7/internal/widget/bg;->a(IZ)Z

    move-result v0

    .line 350
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 352
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/content/Intent;

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 366
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    .line 372
    :cond_4
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 373
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->o()V

    .line 374
    return-void

    .line 368
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 1448
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1449
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1450
    const-string/jumbo v2, "calling_package"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    return-object v1

    .line 1450
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1539
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/support/v7/widget/dc;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1541
    if-nez v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 1542
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1544
    :cond_0
    if-nez v1, :cond_1

    .line 1545
    const-string/jumbo v1, "android.intent.action.SEARCH"

    .line 1549
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/dc;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    sget-boolean v2, Landroid/support/v7/widget/SearchView;->c:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 1551
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    .line 1554
    :cond_2
    if-eqz v0, :cond_3

    .line 1555
    const-string/jumbo v2, "suggest_intent_data_id"

    invoke-static {p1, v2}, Landroid/support/v7/widget/dc;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1556
    if-eqz v2, :cond_3

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1560
    :cond_3
    if-nez v0, :cond_4

    move-object v2, v7

    .line 1562
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/support/v7/widget/dc;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1563
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/dc;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1565
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1575
    :goto_1
    return-object v0

    .line 1560
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1566
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1569
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1573
    :goto_2
    const-string/jumbo v2, "SearchView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " returned exception."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 1575
    goto :goto_1

    .line 1570
    :catch_1
    move-exception v0

    .line 1571
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1416
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1420
    if-eqz p2, :cond_0

    .line 1421
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1423
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1424
    if-eqz p4, :cond_1

    .line 1425
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    :cond_1
    if-eqz p3, :cond_2

    .line 1428
    const-string/jumbo v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1431
    const-string/jumbo v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1433
    :cond_3
    if-eqz p5, :cond_4

    .line 1434
    const-string/jumbo v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1435
    const-string/jumbo v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    :cond_4
    sget-boolean v1, Landroid/support/v7/widget/SearchView;->c:Z

    if-eqz v1, :cond_5

    .line 1438
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1440
    :cond_5
    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1394
    const-string/jumbo v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1395
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1396
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1397
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1372
    if-nez p1, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1378
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    const-string/jumbo v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->n()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Z)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 799
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->y:Z

    .line 801
    if-eqz p1, :cond_0

    move v0, v1

    .line 803
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 805
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 807
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    iget-boolean v5, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->l()V

    .line 810
    if-nez v3, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->c(Z)V

    .line 811
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()V

    .line 812
    return-void

    :cond_0
    move v0, v2

    .line 801
    goto :goto_0

    :cond_1
    move v3, v1

    .line 803
    goto :goto_1

    :cond_2
    move v0, v1

    .line 807
    goto :goto_2

    :cond_3
    move v2, v1

    .line 808
    goto :goto_3

    :cond_4
    move v4, v1

    .line 810
    goto :goto_4
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/cx;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/cx;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1282
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->e(I)V

    .line 1283
    const/4 v0, 0x1

    .line 1285
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IILjava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1269
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/cx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/cx;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/cx;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1271
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/SearchView;->b(IILjava/lang/String;)Z

    .line 1272
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1273
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->r()V

    .line 1274
    const/4 v0, 0x1

    .line 1276
    :cond_1
    return v0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1585
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;I)Z
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;IILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->a(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 973
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    if-nez v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return v1

    .line 976
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/v;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    const/16 v0, 0x54

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_3

    .line 984
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 985
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/SearchView;->a(IILjava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 990
    :cond_3
    if-eq p2, v3, :cond_4

    const/16 v0, 0x16

    if-ne p2, v0, :cond_6

    .line 995
    :cond_4
    if-ne p2, v3, :cond_5

    move v0, v1

    .line 997
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 998
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 999
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1000
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/cu;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/cu;->a(Landroid/widget/AutoCompleteTextView;Z)V

    move v1, v2

    .line 1002
    goto :goto_0

    .line 995
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    goto :goto_1

    .line 1006
    :cond_6
    const/16 v0, 0x13

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1464
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1469
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1471
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1478
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1479
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1480
    const-string/jumbo v0, "app_data"

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1486
    :cond_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1489
    const-string/jumbo v0, "free_form"

    .line 1492
    const/4 v4, 0x1

    .line 1494
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_6

    .line 1495
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1496
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1497
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1499
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1500
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1502
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v9

    if-eqz v9, :cond_4

    .line 1503
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1505
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v9

    if-eqz v9, :cond_3

    .line 1506
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v4

    move v10, v4

    move-object v4, v0

    move v0, v10

    .line 1509
    :goto_2
    const-string/jumbo v9, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const-string/jumbo v4, "android.speech.extra.PROMPT"

    invoke-virtual {v8, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    const-string/jumbo v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    const-string/jumbo v1, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1513
    const-string/jumbo v0, "calling_package"

    if-nez v5, :cond_2

    :goto_3
    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1517
    const-string/jumbo v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1518
    const-string/jumbo v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1520
    return-object v8

    .line 1513
    :cond_2
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move v10, v4

    move-object v4, v0

    move v0, v10

    goto :goto_2

    :cond_4
    move-object v3, v2

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_0

    :cond_6
    move-object v3, v2

    move-object v1, v2

    move v10, v4

    move-object v4, v0

    move v0, v10

    goto :goto_2
.end method

.method static synthetic b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/i;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1017
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-nez v0, :cond_0

    .line 1028
    :goto_0
    return-object p1

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/support/v7/internal/widget/bd;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->n:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1022
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1023
    invoke-virtual {v1, v6, v6, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1025
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v2, "   "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1026
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1027
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    .line 1028
    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 838
    const/16 v0, 0x8

    .line 839
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->A:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->F:Z

    if-nez v1, :cond_1

    .line 841
    :cond_0
    const/4 v0, 0x0

    .line 843
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 844
    return-void
.end method

.method private b(IILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    invoke-virtual {v0}, Landroid/support/v4/widget/i;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 1356
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1358
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1361
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Intent;)V

    .line 1363
    const/4 v0, 0x1

    .line 1365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1116
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1117
    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Ljava/lang/CharSequence;

    .line 1118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1119
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 1120
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->c(Z)V

    .line 1121
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->l()V

    .line 1122
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()V

    .line 1123
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/support/v7/widget/cw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->G:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/support/v7/widget/cw;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/cw;->b(Ljava/lang/String;)Z

    .line 1126
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->G:Ljava/lang/CharSequence;

    .line 1127
    return-void

    :cond_1
    move v0, v2

    .line 1118
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1120
    goto :goto_1
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1096
    .line 1097
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1098
    const/4 v0, 0x0

    .line 1099
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->v()V

    return-void
.end method

.method static synthetic e(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1323
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    invoke-virtual {v1}, Landroid/support/v4/widget/i;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 1324
    if-nez v1, :cond_0

    .line 1342
    :goto_0
    return-void

    .line 1327
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1329
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/i;->c(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1330
    if-eqz v1, :cond_1

    .line 1333
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1336
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1340
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->c:Z

    return v0
.end method

.method private f()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/cp;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/cp;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 385
    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->t()V

    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/cq;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/cq;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 395
    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 794
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/g/e;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic h(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->s()V

    return-void
.end method

.method private h()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    const/4 v1, 0x0

    .line 819
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 820
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/content/Intent;

    .line 824
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 825
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 827
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 830
    :cond_1
    return v0

    .line 821
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic i(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->q()V

    return-void
.end method

.method static synthetic k(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 847
    const/16 v0, 0x8

    .line 848
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 851
    :cond_0
    const/4 v0, 0x0

    .line 853
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 854
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 857
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 860
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->I:Z

    if-nez v3, :cond_2

    .line 861
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v2, :cond_4

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 863
    return-void

    :cond_1
    move v2, v1

    .line 857
    goto :goto_0

    :cond_2
    move v0, v1

    .line 860
    goto :goto_1

    .line 861
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 862
    :cond_4
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method static synthetic l(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->u()V

    return-void
.end method

.method static synthetic m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 867
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 870
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v1

    .line 871
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_0

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 872
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_1

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 873
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    .line 874
    return-void

    .line 871
    :cond_0
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 872
    :cond_1
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method static synthetic n(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->w()V

    return-void
.end method

.method static synthetic o(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    .line 1035
    const/4 v0, 0x0

    .line 1036
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1037
    if-eqz v1, :cond_2

    .line 1038
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1040
    :cond_2
    if-eqz v0, :cond_0

    .line 1041
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1044
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private p()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1055
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1058
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_0

    .line 1061
    const v2, -0x10001

    and-int/2addr v0, v2

    .line 1062
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1063
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 1070
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 1073
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1074
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/i;->a(Landroid/database/Cursor;)V

    .line 1079
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1080
    new-instance v0, Landroid/support/v7/widget/dc;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->Q:Ljava/util/WeakHashMap;

    invoke-direct {v0, v2, p0, v3, v4}, Landroid/support/v7/widget/dc;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    .line 1082
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1083
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    check-cast v0, Landroid/support/v7/widget/dc;

    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->C:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/dc;->a(I)V

    .line 1087
    :cond_3
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1130
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1132
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/support/v7/widget/cw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/support/v7/widget/cw;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/cw;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1134
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1135
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Landroid/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1137
    :cond_1
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1138
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->r()V

    .line 1141
    :cond_2
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1145
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1148
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/support/v7/widget/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/support/v7/widget/cv;

    invoke-interface {v0}, Landroid/support/v7/widget/cv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1154
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1156
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1165
    :cond_1
    :goto_0
    return-void

    .line 1160
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1162
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3

    .prologue
    .line 884
    if-eqz p1, :cond_1

    .line 885
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 888
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 891
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1391
    return-void

    .line 1390
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1169
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1171
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1174
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 1179
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    if-nez v0, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    .line 1184
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1187
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1196
    const-string/jumbo v0, "SearchView"

    const-string/jumbo v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1188
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1191
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private v()V
    .locals 6

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1246
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1247
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1248
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1249
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v1

    .line 1250
    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/yelp/android/g/e;->abc_dropdownitem_icon_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/yelp/android/g/e;->abc_dropdownitem_text_padding_left:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 1254
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1256
    if-eqz v1, :cond_2

    .line 1257
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    .line 1261
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1262
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 1264
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1266
    :cond_0
    return-void

    .line 1250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1259
    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    sub-int v1, v2, v1

    goto :goto_1
.end method

.method private w()V
    .locals 2

    .prologue
    .line 1580
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/cu;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cu;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1581
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/cu;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cu;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 1582
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1234
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->I:Z

    if-eqz v0, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1236
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->I:Z

    .line 1237
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->J:I

    .line 1238
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->J:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1239
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 903
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 575
    if-eqz p1, :cond_0

    .line 576
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 577
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->H:Ljava/lang/CharSequence;

    .line 581
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->q()V

    .line 584
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1222
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 1223
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1225
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->J:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1226
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->I:Z

    .line 1227
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->y:Z

    return v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->D:Z

    .line 501
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 502
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 503
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 504
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->D:Z

    .line 505
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 1201
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1204
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->m()V

    .line 1205
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->w()V

    .line 1208
    :cond_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Landroid/support/v7/widget/SearchView;->E:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 602
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/CharSequence;

    .line 612
    :cond_0
    :goto_0
    return-object v0

    .line 604
    :cond_1
    sget-boolean v1, Landroid/support/v7/widget/SearchView;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 607
    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Landroid/support/v7/widget/SearchView;->p:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Landroid/support/v7/widget/SearchView;->o:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/i;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 879
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 880
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 881
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 791
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 767
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 769
    sparse-switch v1, :sswitch_data_0

    .line 789
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 790
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_0

    .line 772
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->E:I

    if-lez v1, :cond_2

    .line 773
    iget v1, p0, Landroid/support/v7/widget/SearchView;->E:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 775
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 780
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->E:I

    if-lez v1, :cond_1

    .line 781
    iget v1, p0, Landroid/support/v7/widget/SearchView;->E:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 786
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->E:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->E:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 769
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1212
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1214
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->m()V

    .line 1215
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 482
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->D:Z

    if-eqz v1, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 487
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 488
    if-eqz v1, :cond_2

    .line 489
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_2
    move v0, v1

    .line 491
    goto :goto_0

    .line 493
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/os/Bundle;

    .line 439
    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    .prologue
    .line 651
    if-eqz p1, :cond_0

    .line 652
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->s()V

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->t()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-ne v0, p1, :cond_0

    .line 630
    :goto_0
    return-void

    .line 627
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->x:Z

    .line 628
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 629
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->o()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 449
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 468
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 744
    iput p1, p0, Landroid/support/v7/widget/SearchView;->E:I

    .line 746
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 747
    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/cv;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/support/v7/widget/cv;

    .line 524
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View$OnFocusChangeListener;

    .line 533
    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/cw;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/support/v7/widget/cw;

    .line 515
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View$OnClickListener;

    .line 554
    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/cx;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/cx;

    .line 542
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/CharSequence;

    .line 594
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->o()V

    .line 595
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .prologue
    .line 705
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->C:Z

    .line 706
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    instance-of v0, v0, Landroid/support/v7/widget/dc;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    check-cast v0, Landroid/support/v7/widget/dc;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/dc;->a(I)V

    .line 710
    :cond_0
    return-void

    .line 707
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2

    .prologue
    .line 414
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    .line 416
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->c:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()V

    .line 419
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->o()V

    .line 422
    :cond_1
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z

    .line 424
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 429
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 430
    return-void

    .line 422
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 677
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 678
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 679
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/i;)V
    .locals 2

    .prologue
    .line 727
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    .line 729
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/support/v4/widget/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 730
    return-void
.end method
