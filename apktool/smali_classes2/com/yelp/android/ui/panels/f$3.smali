.class Lcom/yelp/android/ui/panels/f$3;
.super Ljava/lang/Object;
.source "StickyFilterListHeader.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/f;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/f;->b(Lcom/yelp/android/ui/panels/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sub-int v0, p5, p3

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/f;->b(Lcom/yelp/android/ui/panels/f;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/f;->e(Lcom/yelp/android/ui/panels/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/f;->f(Lcom/yelp/android/ui/panels/f;)V

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/panels/f;->a(Lcom/yelp/android/ui/panels/f;Landroid/view/View;)Landroid/view/View;

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/f;->g(Lcom/yelp/android/ui/panels/f;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$3;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/panels/f;->a(Lcom/yelp/android/ui/panels/f;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
