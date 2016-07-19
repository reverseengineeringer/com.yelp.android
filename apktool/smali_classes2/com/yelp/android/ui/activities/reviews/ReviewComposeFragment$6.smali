.class Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$6;
.super Ljava/util/TimerTask;
.source "ReviewComposeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$6;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$6;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviews/c;->a(Z)V

    .line 291
    return-void
.end method
