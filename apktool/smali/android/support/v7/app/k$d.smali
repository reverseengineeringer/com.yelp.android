.class final Landroid/support/v7/app/k$d;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/support/v7/internal/view/menu/f;

.field k:Landroid/support/v7/internal/view/menu/e;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1798
    iput p1, p0, Landroid/support/v7/app/k$d;->a:I

    .line 1800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/k$d;->q:Z

    .line 1801
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/internal/view/menu/l$a;)Landroid/support/v7/internal/view/menu/m;
    .locals 3

    .prologue
    .line 1865
    iget-object v0, p0, Landroid/support/v7/app/k$d;->j:Landroid/support/v7/internal/view/menu/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1876
    :goto_0
    return-object v0

    .line 1867
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    if-nez v0, :cond_1

    .line 1868
    new-instance v0, Landroid/support/v7/internal/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/app/k$d;->l:Landroid/content/Context;

    sget v2, Lcom/yelp/android/j/a$h;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    .line 1870
    iget-object v0, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/l$a;)V

    .line 1871
    iget-object v0, p0, Landroid/support/v7/app/k$d;->j:Landroid/support/v7/internal/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/l;)V

    .line 1874
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/app/k$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/m;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1821
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1822
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1823
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1826
    sget v2, Lcom/yelp/android/j/a$a;->actionBarPopupTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1827
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 1828
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1832
    :cond_0
    sget v2, Lcom/yelp/android/j/a$a;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1833
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1834
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1839
    :goto_0
    new-instance v0, Lcom/yelp/android/p/b;

    invoke-direct {v0, p1, v4}, Lcom/yelp/android/p/b;-><init>(Landroid/content/Context;I)V

    .line 1840
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1842
    iput-object v0, p0, Landroid/support/v7/app/k$d;->l:Landroid/content/Context;

    .line 1844
    sget-object v1, Lcom/yelp/android/j/a$k;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1845
    sget v1, Lcom/yelp/android/j/a$k;->Theme_panelBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/k$d;->b:I

    .line 1847
    sget v1, Lcom/yelp/android/j/a$k;->Theme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/k$d;->f:I

    .line 1849
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1850
    return-void

    .line 1836
    :cond_1
    sget v0, Lcom/yelp/android/j/a$j;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/internal/view/menu/f;)V
    .locals 2

    .prologue
    .line 1853
    iget-object v0, p0, Landroid/support/v7/app/k$d;->j:Landroid/support/v7/internal/view/menu/f;

    if-ne p1, v0, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$d;->j:Landroid/support/v7/internal/view/menu/f;

    if-eqz v0, :cond_2

    .line 1856
    iget-object v0, p0, Landroid/support/v7/app/k$d;->j:Landroid/support/v7/internal/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/f;->b(Landroid/support/v7/internal/view/menu/l;)V

    .line 1858
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/k$d;->j:Landroid/support/v7/internal/view/menu/f;

    .line 1859
    if-eqz p1, :cond_0

    .line 1860
    iget-object v0, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/l;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1804
    iget-object v2, p0, Landroid/support/v7/app/k$d;->h:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1807
    :cond_0
    :goto_0
    return v0

    .line 1805
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/k$d;->i:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1807
    iget-object v2, p0, Landroid/support/v7/app/k$d;->k:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/e;->d()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
