.class Lcom/yelp/android/ui/activities/reviews/ag;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ag;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ag;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ag;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ao;->a(I)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ag;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    sget v1, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;J)V

    .line 265
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteRating:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "compose_page"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    return-void
.end method
