.class final Lcom/yelp/android/m/d$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/d;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/yelp/android/m/d;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/yelp/android/m/d$a;->a:Lcom/yelp/android/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/m/d;Lcom/yelp/android/m/d$1;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/yelp/android/m/d$a;-><init>(Lcom/yelp/android/m/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/f;Z)V
    .locals 2

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/yelp/android/m/d$a;->b:Z

    if-eqz v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/m/d$a;->b:Z

    .line 605
    iget-object v0, p0, Lcom/yelp/android/m/d$a;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->c(Lcom/yelp/android/m/d;)Landroid/support/v7/internal/widget/f;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->n()V

    .line 606
    iget-object v0, p0, Lcom/yelp/android/m/d$a;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/yelp/android/m/d$a;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 609
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/m/d$a;->b:Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;)Z
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/yelp/android/m/d$a;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/yelp/android/m/d$a;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 593
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
