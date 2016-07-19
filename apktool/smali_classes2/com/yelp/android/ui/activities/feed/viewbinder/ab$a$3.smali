.class Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;
.super Ljava/lang/Object;
.source "TipFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Tip;

.field final synthetic b:Lcom/yelp/android/ci/f;

.field final synthetic c:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->a:Lcom/yelp/android/serializable/Tip;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->b:Lcom/yelp/android/ci/f;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->a:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;I)V

    .line 164
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->b:Lcom/yelp/android/ci/f;

    new-instance v2, Lcom/yelp/android/ci/i;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/yelp/android/ci/i;-><init>(Lcom/yelp/android/serializable/FeedItem;Z)V

    invoke-interface {v1, v2}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 166
    return-void

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    goto :goto_0
.end method
