.class Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;
.super Ljava/lang/Object;
.source "YnraFeedViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ci/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ci/f;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->a:Lcom/yelp/android/ci/f;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->b:Lcom/yelp/android/serializable/FeedItem;

    iput p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->a:Lcom/yelp/android/ci/f;

    new-instance v1, Lcom/yelp/android/ci/k;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->b:Lcom/yelp/android/serializable/FeedItem;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->b(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;)Lcom/yelp/android/ui/activities/reviews/StarsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v3

    iget v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;->c:I

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/ci/k;-><init>(Lcom/yelp/android/serializable/FeedItem;II)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 117
    return-void
.end method
