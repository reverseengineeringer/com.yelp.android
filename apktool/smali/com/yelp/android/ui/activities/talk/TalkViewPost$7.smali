.class Lcom/yelp/android/ui/activities/talk/TalkViewPost$7;
.super Ljava/lang/Object;
.source "TalkViewPost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/TalkViewPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$7;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$7;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$7;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$7;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TalkTopic;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->startActivity(Landroid/content/Intent;)V

    .line 369
    return-void
.end method
