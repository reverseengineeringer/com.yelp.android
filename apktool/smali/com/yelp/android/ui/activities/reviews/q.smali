.class Lcom/yelp/android/ui/activities/reviews/q;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/q;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/q;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/q;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 552
    return-void
.end method
