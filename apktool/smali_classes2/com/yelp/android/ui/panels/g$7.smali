.class Lcom/yelp/android/ui/panels/g$7;
.super Lcom/yelp/android/ui/util/av$a;
.source "YourNextReviewAwaitsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/g;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/g;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/av$a;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->e(Lcom/yelp/android/ui/panels/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    new-instance v1, Lcom/yelp/android/ui/panels/g$7$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/g$7$1;-><init>(Lcom/yelp/android/ui/panels/g$7;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/panels/g;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/g;->a(Lcom/yelp/android/ui/panels/g;Z)Z

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->f(Lcom/yelp/android/ui/panels/g;)V

    .line 331
    return-void
.end method
