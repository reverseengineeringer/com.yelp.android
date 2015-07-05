.class Lcom/yelp/android/ui/activities/reviews/v;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/u;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/u;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/v;->a:Lcom/yelp/android/ui/activities/reviews/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/v;->a:Lcom/yelp/android/ui/activities/reviews/u;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Z)V

    .line 854
    return-void
.end method
