.class public Lcom/yelp/android/m/d;
.super Landroid/support/v7/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/m/d$b;,
        Lcom/yelp/android/m/d$c;,
        Lcom/yelp/android/m/d$a;,
        Lcom/yelp/android/m/d$d;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/internal/widget/f;

.field private b:Z

.field private c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v7/internal/view/menu/e;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/support/v7/widget/Toolbar$b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/m/d;->f:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/yelp/android/m/d$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/d$1;-><init>(Lcom/yelp/android/m/d;)V

    iput-object v0, p0, Lcom/yelp/android/m/d;->h:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/yelp/android/m/d$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/d$2;-><init>(Lcom/yelp/android/m/d;)V

    iput-object v0, p0, Lcom/yelp/android/m/d;->i:Landroid/support/v7/widget/Toolbar$b;

    .line 78
    new-instance v0, Landroid/support/v7/internal/widget/q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    .line 79
    new-instance v0, Lcom/yelp/android/m/d$d;

    invoke-direct {v0, p0, p3}, Lcom/yelp/android/m/d$d;-><init>(Lcom/yelp/android/m/d;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lcom/yelp/android/m/d;->c:Landroid/view/Window$Callback;

    .line 80
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    iget-object v1, p0, Lcom/yelp/android/m/d;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/f;->a(Landroid/view/Window$Callback;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/m/d;->i:Landroid/support/v7/widget/Toolbar$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$b;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/widget/f;->a(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-direct {p0, p1}, Lcom/yelp/android/m/d;->b(Landroid/view/Menu;)V

    .line 505
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/m/d;->g:Landroid/support/v7/internal/view/menu/e;

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-object v0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/m/d;->g:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/e;->d()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/yelp/android/m/d;->g:Landroid/support/v7/internal/view/menu/e;

    iget-object v1, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/f;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/m;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/m/d;Landroid/view/Menu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/yelp/android/m/d;->a(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/m/d;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/m/d;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/yelp/android/m/d;->b:Z

    return p1
.end method

.method private b(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 516
    iget-object v0, p0, Lcom/yelp/android/m/d;->g:Landroid/support/v7/internal/view/menu/e;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/f;

    if-eqz v0, :cond_1

    .line 517
    check-cast p1, Landroid/support/v7/internal/view/menu/f;

    .line 519
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->b()Landroid/content/Context;

    move-result-object v0

    .line 520
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 521
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 522
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 525
    sget v3, Lcom/yelp/android/j/a$a;->actionBarPopupTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 526
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    .line 527
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 531
    :cond_0
    sget v3, Lcom/yelp/android/j/a$a;->panelMenuListTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 532
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2

    .line 533
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 538
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 539
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 542
    new-instance v0, Landroid/support/v7/internal/view/menu/e;

    sget v2, Lcom/yelp/android/j/a$h;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yelp/android/m/d;->g:Landroid/support/v7/internal/view/menu/e;

    .line 543
    iget-object v0, p0, Lcom/yelp/android/m/d;->g:Landroid/support/v7/internal/view/menu/e;

    new-instance v1, Lcom/yelp/android/m/d$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/m/d$c;-><init>(Lcom/yelp/android/m/d;Lcom/yelp/android/m/d$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/l$a;)V

    .line 544
    iget-object v0, p0, Lcom/yelp/android/m/d;->g:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/l;)V

    .line 546
    :cond_1
    return-void

    .line 535
    :cond_2
    sget v1, Lcom/yelp/android/j/a$j;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/m/d;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/yelp/android/m/d;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/m/d;)Landroid/support/v7/internal/widget/f;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    return-object v0
.end method

.method private k()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 578
    iget-boolean v0, p0, Lcom/yelp/android/m/d;->d:Z

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    new-instance v1, Lcom/yelp/android/m/d$a;

    invoke-direct {v1, p0, v3}, Lcom/yelp/android/m/d$a;-><init>(Lcom/yelp/android/m/d;Lcom/yelp/android/m/d$1;)V

    new-instance v2, Lcom/yelp/android/m/d$b;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/m/d$b;-><init>(Lcom/yelp/android/m/d;Lcom/yelp/android/m/d$1;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/f;->a(Landroid/support/v7/internal/view/menu/l$a;Landroid/support/v7/internal/view/menu/f$a;)V

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/m/d;->d:Z

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->s()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->q()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    .line 146
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/f;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/m/d;->a(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->o()I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/f;->c(I)V

    .line 259
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    .line 196
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->b(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public a(Landroid/support/v7/app/ActionBar$a;)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yelp/android/m/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 91
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/m/d;->a(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 92
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 1

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->a(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->b(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 273
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/m/d;->a(II)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 469
    invoke-direct {p0}, Lcom/yelp/android/m/d;->k()Landroid/view/Menu;

    move-result-object v3

    .line 470
    if-eqz v3, :cond_0

    .line 471
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 474
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 479
    :cond_0
    return v1

    .line 471
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 473
    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->o()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/f;->b(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->a(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 278
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/m/d;->a(II)V

    .line 279
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->r()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->d(I)V

    .line 186
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 283
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/m/d;->a(II)V

    .line 284
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/f;->e(I)V

    .line 405
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/f;->e(I)V

    .line 412
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/m/d;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 427
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/m/d;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public h(Z)V
    .locals 3

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/yelp/android/m/d;->e:Z

    if-ne p1, v0, :cond_1

    .line 500
    :cond_0
    return-void

    .line 494
    :cond_1
    iput-boolean p1, p0, Lcom/yelp/android/m/d;->e:Z

    .line 496
    iget-object v0, p0, Lcom/yelp/android/m/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 497
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 498
    iget-object v0, p0, Lcom/yelp/android/m/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBar$a;->a(Z)V

    .line 497
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/yelp/android/m/d;->a:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->d()V

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/m/d;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method j()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Lcom/yelp/android/m/d;->k()Landroid/view/Menu;

    move-result-object v1

    .line 442
    instance-of v2, v1, Landroid/support/v7/internal/view/menu/f;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/f;

    move-object v2, v0

    .line 443
    :goto_0
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/f;->g()V

    .line 447
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 448
    iget-object v0, p0, Lcom/yelp/android/m/d;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/m/d;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_2
    if-eqz v2, :cond_3

    .line 454
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/f;->h()V

    .line 457
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 442
    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 454
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/f;->h()V

    :cond_5
    throw v0
.end method
