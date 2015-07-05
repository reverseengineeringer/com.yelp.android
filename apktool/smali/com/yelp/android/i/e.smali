.class final Lcom/yelp/android/i/e;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field final synthetic a:Lcom/yelp/android/i/a;


# direct methods
.method private constructor <init>(Lcom/yelp/android/i/a;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/yelp/android/i/e;->a:Lcom/yelp/android/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/b;)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/yelp/android/i/e;-><init>(Lcom/yelp/android/i/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 638
    iget-object v0, p0, Lcom/yelp/android/i/e;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/yelp/android/i/e;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->c(Lcom/yelp/android/i/a;)Landroid/support/v7/internal/widget/ah;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/yelp/android/i/e;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Lcom/yelp/android/i/h;->b(ILandroid/view/Menu;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/i/e;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/yelp/android/i/h;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/yelp/android/i/e;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method
