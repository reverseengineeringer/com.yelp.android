.class Lcom/yelp/android/ui/panels/as;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ar;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ar;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/yelp/android/ui/panels/as;->a:Lcom/yelp/android/ui/panels/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/panels/as;->a:Lcom/yelp/android/ui/panels/ar;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->c(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/panels/at;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/panels/as;->a:Lcom/yelp/android/ui/panels/ar;

    iget-object v0, v0, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->c(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/panels/at;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/as;->a:Lcom/yelp/android/ui/panels/ar;

    iget-object v1, v1, Lcom/yelp/android/ui/panels/ar;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/at;->c(Lcom/yelp/android/ui/panels/ak;)V

    .line 314
    :cond_0
    return-void
.end method
