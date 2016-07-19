.class final Lcom/yelp/android/m/d$c;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/d;


# direct methods
.method private constructor <init>(Lcom/yelp/android/m/d;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/yelp/android/m/d$c;->a:Lcom/yelp/android/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/m/d;Lcom/yelp/android/m/d$1;)V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/yelp/android/m/d$c;-><init>(Lcom/yelp/android/m/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/f;Z)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/yelp/android/m/d$c;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/yelp/android/m/d$c;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 619
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;)Z
    .locals 2

    .prologue
    .line 623
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/m/d$c;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/yelp/android/m/d$c;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 626
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
