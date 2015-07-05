.class final Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"


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

.field j:Landroid/support/v7/internal/view/menu/i;

.field k:Landroid/support/v7/internal/view/menu/g;

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
    .line 1599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1600
    iput p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->a:I

    .line 1602
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->q:Z

    .line 1603
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/internal/view/menu/y;)Landroid/support/v7/internal/view/menu/z;
    .locals 3

    .prologue
    .line 1667
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1678
    :goto_0
    return-object v0

    .line 1669
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    if-nez v0, :cond_1

    .line 1670
    new-instance v0, Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->l:Landroid/content/Context;

    sget v2, Lcom/yelp/android/g/i;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    .line 1672
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 1673
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 1676
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1623
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1624
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1625
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1628
    sget v2, Lcom/yelp/android/g/b;->actionBarPopupTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1629
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 1630
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1634
    :cond_0
    sget v2, Lcom/yelp/android/g/b;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1635
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1636
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1641
    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1642
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1644
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->l:Landroid/content/Context;

    .line 1646
    sget-object v1, Lcom/yelp/android/g/l;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1647
    sget v1, Lcom/yelp/android/g/l;->Theme_panelBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->b:I

    .line 1649
    sget v1, Lcom/yelp/android/g/l;->Theme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->f:I

    .line 1651
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1652
    return-void

    .line 1638
    :cond_1
    sget v0, Lcom/yelp/android/g/k;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-ne p1, v0, :cond_1

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_2

    .line 1658
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/x;)V

    .line 1660
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/i;

    .line 1661
    if-eqz p1, :cond_0

    .line 1662
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1606
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->h:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1609
    :cond_0
    :goto_0
    return v0

    .line 1607
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->i:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1609
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->k:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/g;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
