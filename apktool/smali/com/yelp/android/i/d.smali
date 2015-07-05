.class final Lcom/yelp/android/i/d;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field final synthetic a:Lcom/yelp/android/i/a;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/yelp/android/i/a;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/yelp/android/i/d;->a:Lcom/yelp/android/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/b;)V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/yelp/android/i/d;-><init>(Lcom/yelp/android/i/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 2

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/yelp/android/i/d;->b:Z

    if-eqz v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 600
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/i/d;->b:Z

    .line 601
    iget-object v0, p0, Lcom/yelp/android/i/d;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->c(Lcom/yelp/android/i/a;)Landroid/support/v7/internal/widget/ah;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->o()V

    .line 602
    iget-object v0, p0, Lcom/yelp/android/i/d;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/yelp/android/i/d;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/i/h;->b(ILandroid/view/Menu;)V

    .line 605
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/i/d;->b:Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/yelp/android/i/d;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/yelp/android/i/d;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    .line 589
    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
