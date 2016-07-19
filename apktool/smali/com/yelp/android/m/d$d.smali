.class Lcom/yelp/android/m/d$d;
.super Lcom/yelp/android/p/g;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/d;


# direct methods
.method public constructor <init>(Lcom/yelp/android/m/d;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/yelp/android/m/d$d;->a:Lcom/yelp/android/m/d;

    .line 550
    invoke-direct {p0, p2}, Lcom/yelp/android/p/g;-><init>(Landroid/view/Window$Callback;)V

    .line 551
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 565
    packed-switch p1, :pswitch_data_0

    .line 573
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/p/g;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/m/d$d;->a:Lcom/yelp/android/m/d;

    invoke-static {v0}, Lcom/yelp/android/m/d;->c(Lcom/yelp/android/m/d;)Landroid/support/v7/internal/widget/f;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->s()Landroid/view/Menu;

    move-result-object v0

    .line 568
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/yelp/android/m/d$d;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/m/d$d;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/yelp/android/m/d$d;->a:Lcom/yelp/android/m/d;

    invoke-static {v1, v0}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 555
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/p/g;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 556
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/m/d$d;->a:Lcom/yelp/android/m/d;

    invoke-static {v1}, Lcom/yelp/android/m/d;->b(Lcom/yelp/android/m/d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/yelp/android/m/d$d;->a:Lcom/yelp/android/m/d;

    invoke-static {v1}, Lcom/yelp/android/m/d;->c(Lcom/yelp/android/m/d;)Landroid/support/v7/internal/widget/f;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v7/internal/widget/f;->m()V

    .line 558
    iget-object v1, p0, Lcom/yelp/android/m/d$d;->a:Lcom/yelp/android/m/d;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yelp/android/m/d;->a(Lcom/yelp/android/m/d;Z)Z

    .line 560
    :cond_0
    return v0
.end method
