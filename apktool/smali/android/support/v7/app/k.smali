.class Landroid/support/v7/app/k;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Lcom/yelp/android/m/b;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

.field private b:Lcom/yelp/android/m/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Lcom/yelp/android/m/b;)V
    .locals 0

    .prologue
    .line 1446
    iput-object p1, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput-object p2, p0, Landroid/support/v7/app/k;->b:Lcom/yelp/android/m/b;

    .line 1448
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/m/a;)V
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/support/v7/app/k;->b:Lcom/yelp/android/m/b;

    invoke-interface {v0, p1}, Lcom/yelp/android/m/b;->a(Lcom/yelp/android/m/a;)V

    .line 1464
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 1465
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1466
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1473
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1474
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1476
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    if-eqz v0, :cond_2

    .line 1478
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeFinished(Lcom/yelp/android/m/a;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->g:Lcom/yelp/android/m/a;

    .line 1484
    return-void

    .line 1467
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->h:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ce;->t(Landroid/view/View;)V

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Landroid/support/v7/app/k;->b:Lcom/yelp/android/m/b;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/m/b;->a(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/m/a;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Landroid/support/v7/app/k;->b:Lcom/yelp/android/m/b;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/m/b;->a(Lcom/yelp/android/m/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Landroid/support/v7/app/k;->b:Lcom/yelp/android/m/b;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/m/b;->b(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
