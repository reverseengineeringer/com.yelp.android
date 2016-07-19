.class Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;
.super Ljava/lang/Object;
.source "VideoFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Video;

.field final synthetic b:Lcom/yelp/android/ci/f;

.field final synthetic c:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/serializable/Video;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->a:Lcom/yelp/android/serializable/Video;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->b:Lcom/yelp/android/ci/f;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;)Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->isChecked()Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->a:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/Video;->a(Z)V

    .line 138
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->b:Lcom/yelp/android/ci/f;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-static {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/ci/f;ZLcom/yelp/android/serializable/FeedItem;)V

    .line 139
    return-void
.end method
