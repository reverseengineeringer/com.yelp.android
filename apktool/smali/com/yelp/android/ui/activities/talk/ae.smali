.class Lcom/yelp/android/ui/activities/talk/ae;
.super Ljava/lang/Object;
.source "TalkViewPost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ae;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ae;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ae;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/ae;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TalkTopic;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->startActivity(Landroid/content/Intent;)V

    .line 347
    return-void
.end method
