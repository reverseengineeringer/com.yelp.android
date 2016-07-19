.class Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3$1;
.super Lcom/yelp/android/ui/util/av$a;
.source "YourNextReviewAwaitsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;->c(Lcom/yelp/android/ui/panels/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3$1;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/av$a;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3$1;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3$1;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$3;->a:Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;->c(Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment;)Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/YourNextReviewAwaitsFragment$a;->f()V

    .line 216
    :cond_0
    return-void
.end method
