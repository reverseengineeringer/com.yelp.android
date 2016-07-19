.class Lcom/yelp/android/ui/panels/g$7$1;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/g$7;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/g$7;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/g$7;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g$7$1;->a:Lcom/yelp/android/ui/panels/g$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$7$1;->a:Lcom/yelp/android/ui/panels/g$7;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->c(Lcom/yelp/android/ui/panels/g;)Lcom/yelp/android/ui/panels/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$7$1;->a:Lcom/yelp/android/ui/panels/g$7;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->c(Lcom/yelp/android/ui/panels/g;)Lcom/yelp/android/ui/panels/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/g$7$1;->a:Lcom/yelp/android/ui/panels/g$7;

    iget-object v1, v1, Lcom/yelp/android/ui/panels/g$7;->a:Lcom/yelp/android/ui/panels/g;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/g$a;->c(Lcom/yelp/android/ui/panels/g;)V

    .line 350
    :cond_0
    return-void
.end method
