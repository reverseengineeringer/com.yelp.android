.class public Landroid/support/v7/widget/dl;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Lcom/yelp/android/i/h;


# instance fields
.field private a:Lcom/yelp/android/i/h;


# direct methods
.method public constructor <init>(Lcom/yelp/android/i/h;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Window callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    .line 40
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1}, Lcom/yelp/android/i/h;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1}, Lcom/yelp/android/i/h;->a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/i/h;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/i/h;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/yelp/android/i/h;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public b(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/i/h;->b(ILandroid/view/Menu;)V

    .line 60
    return-void
.end method

.method public c(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/dl;->a:Lcom/yelp/android/i/h;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method
