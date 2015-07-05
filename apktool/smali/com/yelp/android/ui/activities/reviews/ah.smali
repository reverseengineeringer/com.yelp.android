.class Lcom/yelp/android/ui/activities/reviews/ah;
.super Ljava/util/TimerTask;
.source "ReviewComposeFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ah;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ah;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ao;->a(Z)V

    .line 281
    return-void
.end method
