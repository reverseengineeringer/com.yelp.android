.class Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;
.super Lcom/yelp/android/ui/util/w;
.source "ActivityTalkPosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/FeedTalkPostActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;->a:Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    .line 72
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->e()Lcom/yelp/android/serializable/TalkMessage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a(Lcom/yelp/android/serializable/TalkTopic;Lcom/yelp/android/serializable/TalkMessage;)V

    .line 74
    new-instance v2, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1$1;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1$1;-><init>(Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;Lcom/yelp/android/serializable/FeedTalkPostActivity;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object p2
.end method
