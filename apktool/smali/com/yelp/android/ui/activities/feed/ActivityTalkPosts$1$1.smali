.class Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1$1;
.super Ljava/lang/Object;
.source "ActivityTalkPosts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedTalkPostActivity;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;Lcom/yelp/android/serializable/FeedTalkPostActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1$1;->b:Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1$1;->a:Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1$1;->a:Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/content/Context;Lcom/yelp/android/serializable/TalkTopic;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
