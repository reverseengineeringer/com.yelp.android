.class Lcom/yelp/android/ui/activities/feed/ActivityFeed$1;
.super Ljava/lang/Object;
.source "ActivityFeed.java"

# interfaces
.implements Lcom/yelp/android/appdata/StateBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/ActivityFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/ActivityFeed;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/ActivityFeed;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed$1;->a:Lcom/yelp/android/ui/activities/feed/ActivityFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed$1;->a:Lcom/yelp/android/ui/activities/feed/ActivityFeed;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a(Lcom/yelp/android/ui/activities/feed/ActivityFeed;)Lcom/yelp/android/ui/activities/feed/FeedFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B_()V

    .line 93
    return-void
.end method
