.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a$1;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Z)V

    .line 909
    return-void
.end method
