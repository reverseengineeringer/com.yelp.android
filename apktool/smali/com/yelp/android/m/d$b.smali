.class final Lcom/yelp/android/m/d$b;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/d;


# direct methods
.method private constructor <init>(Lcom/yelp/android/m/d;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/yelp/android/m/d$b;->a:Lcom/yelp/android/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/m/d;Lcom/yelp/android/m/d$1;)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/yelp/android/m/d$b;-><init>(Lcom/yelp/android/m/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/f;)V
    .locals 4

    .prologue
    const/16 v3, 0x6c

    .line 639
    iget-object v0, p0, Lcom/yelp/android/m/d$b;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/yelp/android/m/d$b;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->c(Lcom/yelp/android/m/d;)Landroid/support/v7/internal/widget/f;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/yelp/android/m/d$b;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/m/d$b;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/yelp/android/m/d$b;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method
