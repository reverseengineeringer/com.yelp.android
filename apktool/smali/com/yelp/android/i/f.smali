.class final Lcom/yelp/android/i/f;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field final synthetic a:Lcom/yelp/android/i/a;


# direct methods
.method private constructor <init>(Lcom/yelp/android/i/a;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/yelp/android/i/f;->a:Lcom/yelp/android/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/b;)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/yelp/android/i/f;-><init>(Lcom/yelp/android/i/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lcom/yelp/android/i/f;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/yelp/android/i/f;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/i/h;->b(ILandroid/view/Menu;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/i/f;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->d(Lcom/yelp/android/i/a;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 618
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 622
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/i/f;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/yelp/android/i/f;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    .line 625
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
