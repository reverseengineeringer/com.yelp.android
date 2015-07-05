.class public Lcom/yelp/android/i/a;
.super Landroid/support/v7/app/ActionBar;
.source "ToolbarActionBar.java"


# instance fields
.field private a:Landroid/support/v7/internal/widget/ah;

.field private b:Z

.field private c:Lcom/yelp/android/i/h;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/Window;

.field private h:Landroid/support/v7/internal/view/menu/g;

.field private final i:Ljava/lang/Runnable;

.field private final j:Landroid/support/v7/widget/dj;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Lcom/yelp/android/i/h;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/i/a;->f:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/yelp/android/i/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/i/b;-><init>(Lcom/yelp/android/i/a;)V

    iput-object v0, p0, Lcom/yelp/android/i/a;->i:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/yelp/android/i/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/i/c;-><init>(Lcom/yelp/android/i/a;)V

    iput-object v0, p0, Lcom/yelp/android/i/a;->j:Landroid/support/v7/widget/dj;

    .line 82
    new-instance v0, Landroid/support/v7/internal/widget/bh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/bh;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    .line 83
    new-instance v0, Lcom/yelp/android/i/g;

    invoke-direct {v0, p0, p4}, Lcom/yelp/android/i/g;-><init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/h;)V

    iput-object v0, p0, Lcom/yelp/android/i/a;->c:Lcom/yelp/android/i/h;

    .line 84
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    iget-object v1, p0, Lcom/yelp/android/i/a;->c:Lcom/yelp/android/i/h;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ah;->a(Lcom/yelp/android/i/h;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/i/a;->j:Landroid/support/v7/widget/dj;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/dj;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/widget/ah;->a(Ljava/lang/CharSequence;)V

    .line 88
    iput-object p3, p0, Lcom/yelp/android/i/a;->g:Landroid/view/Window;

    .line 89
    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-direct {p0, p1}, Lcom/yelp/android/i/a;->b(Landroid/view/Menu;)V

    .line 505
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/i/a;->h:Landroid/support/v7/internal/view/menu/g;

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-object v0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/i/a;->h:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/g;->a()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/yelp/android/i/a;->h:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ah;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/i/a;Landroid/view/Menu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yelp/android/i/a;->a(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/i/a;->c:Lcom/yelp/android/i/h;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/i/a;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/yelp/android/i/a;->b:Z

    return p1
.end method

.method private b(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 516
    iget-object v0, p0, Lcom/yelp/android/i/a;->h:Landroid/support/v7/internal/view/menu/g;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    .line 517
    check-cast p1, Landroid/support/v7/internal/view/menu/i;

    .line 519
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->b()Landroid/content/Context;

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
    sget v3, Lcom/yelp/android/g/b;->panelMenuListTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 526
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 527
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 532
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 533
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 536
    new-instance v0, Landroid/support/v7/internal/view/menu/g;

    sget v2, Lcom/yelp/android/g/i;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yelp/android/i/a;->h:Landroid/support/v7/internal/view/menu/g;

    .line 537
    iget-object v0, p0, Lcom/yelp/android/i/a;->h:Landroid/support/v7/internal/view/menu/g;

    new-instance v1, Lcom/yelp/android/i/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/i/f;-><init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 538
    iget-object v0, p0, Lcom/yelp/android/i/a;->h:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 540
    :cond_0
    return-void

    .line 529
    :cond_1
    sget v1, Lcom/yelp/android/g/k;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/i/a;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/i/a;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/i/a;)Landroid/support/v7/internal/widget/ah;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/i/a;)Landroid/view/Window;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/i/a;->g:Landroid/view/Window;

    return-object v0
.end method

.method private k()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 574
    iget-boolean v0, p0, Lcom/yelp/android/i/a;->d:Z

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    new-instance v1, Lcom/yelp/android/i/d;

    invoke-direct {v1, p0, v3}, Lcom/yelp/android/i/d;-><init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/b;)V

    new-instance v2, Lcom/yelp/android/i/e;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/i/e;-><init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/b;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/i/a;->d:Z

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->t()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->r()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yelp/android/i/a;->c:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1}, Lcom/yelp/android/i/h;->a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ce;->f(Landroid/view/View;F)V

    .line 150
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ah;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/i/a;->a(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->p()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/ah;->c(I)V

    .line 268
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    .line 200
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->c(Landroid/graphics/drawable/Drawable;)V

    .line 298
    return-void
.end method

.method public a(Landroid/support/v7/app/a;)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yelp/android/i/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 97
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/i/a;->a(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 98
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->a(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->b(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 282
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/i/a;->a(II)V

    .line 283
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-direct {p0}, Lcom/yelp/android/i/a;->k()Landroid/view/Menu;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->p()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 241
    iget-object v1, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/ah;->b(Ljava/lang/CharSequence;)V

    .line 242
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->b(Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->a(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 287
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/i/a;->a(II)V

    .line 288
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->s()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->e(I)V

    .line 190
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 292
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/i/a;->a(II)V

    .line 293
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ah;->f(I)V

    .line 414
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ah;->f(I)V

    .line 421
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/i/a;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 436
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/i/a;->i:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public h(Z)V
    .locals 3

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/yelp/android/i/a;->e:Z

    if-ne p1, v0, :cond_1

    .line 500
    :cond_0
    return-void

    .line 494
    :cond_1
    iput-boolean p1, p0, Lcom/yelp/android/i/a;->e:Z

    .line 496
    iget-object v0, p0, Lcom/yelp/android/i/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 497
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 498
    iget-object v0, p0, Lcom/yelp/android/i/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/a;->a(Z)V

    .line 497
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/yelp/android/i/a;->a:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->e()V

    .line 444
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/yelp/android/i/h;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/i/a;->c:Lcom/yelp/android/i/h;

    return-object v0
.end method

.method j()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-direct {p0}, Lcom/yelp/android/i/a;->k()Landroid/view/Menu;

    move-result-object v1

    .line 451
    instance-of v2, v1, Landroid/support/v7/internal/view/menu/i;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    move-object v2, v0

    .line 452
    :goto_0
    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 456
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 457
    iget-object v0, p0, Lcom/yelp/android/i/a;->c:Lcom/yelp/android/i/h;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Lcom/yelp/android/i/h;->a(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/i/a;->c:Lcom/yelp/android/i/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Lcom/yelp/android/i/h;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 459
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_2
    if-eqz v2, :cond_3

    .line 463
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->h()V

    .line 466
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 451
    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 463
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->h()V

    :cond_5
    throw v0
.end method
