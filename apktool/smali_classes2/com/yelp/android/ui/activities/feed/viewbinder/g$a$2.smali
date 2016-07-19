.class Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;
.super Ljava/lang/Object;
.source "CheckInFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ci/f;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;->a:Lcom/yelp/android/ci/f;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;->b:Lcom/yelp/android/serializable/FeedItem;

    iput p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;->a:Lcom/yelp/android/ci/f;

    new-instance v1, Lcom/yelp/android/ci/c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;->b:Lcom/yelp/android/serializable/FeedItem;

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;->c:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/ci/c;-><init>(Lcom/yelp/android/serializable/FeedItem;IZ)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 124
    return-void
.end method
