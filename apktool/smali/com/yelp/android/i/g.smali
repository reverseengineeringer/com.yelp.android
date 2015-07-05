.class Lcom/yelp/android/i/g;
.super Landroid/support/v7/widget/dl;
.source "ToolbarActionBar.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/i/a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/i/a;Lcom/yelp/android/i/h;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    .line 544
    invoke-direct {p0, p2}, Landroid/support/v7/widget/dl;-><init>(Lcom/yelp/android/i/h;)V

    .line 545
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 559
    packed-switch p1, :pswitch_data_0

    .line 569
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/dl;->a(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 561
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    invoke-static {v0}, Lcom/yelp/android/i/a;->c(Lcom/yelp/android/i/a;)Landroid/support/v7/internal/widget/ah;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->t()Landroid/view/Menu;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    invoke-static {v1}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    invoke-static {v1}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lcom/yelp/android/i/h;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    invoke-static {v1}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;)Lcom/yelp/android/i/h;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    invoke-static {v1, v0}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 549
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/dl;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 550
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    invoke-static {v1}, Lcom/yelp/android/i/a;->b(Lcom/yelp/android/i/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    invoke-static {v1}, Lcom/yelp/android/i/a;->c(Lcom/yelp/android/i/a;)Landroid/support/v7/internal/widget/ah;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ah;->n()V

    .line 552
    iget-object v1, p0, Lcom/yelp/android/i/g;->a:Lcom/yelp/android/i/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yelp/android/i/a;->a(Lcom/yelp/android/i/a;Z)Z

    .line 554
    :cond_0
    return v0
.end method
