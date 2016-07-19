.class Lcom/yelp/android/ui/activities/feed/FeedFragment$3;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/notifications/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Alert;II)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 882
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 883
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v1

    .line 884
    if-eqz v1, :cond_2

    .line 885
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 886
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/AlertAction;->a(Z)V

    goto :goto_0

    .line 890
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    if-nez p2, :cond_1

    .line 891
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 892
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Ljava/util/ArrayList;ILandroid/content/Context;)V

    .line 895
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v0

    invoke-static {v1, v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    move-result-object v0

    .line 898
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 899
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_2
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 5

    .prologue
    .line 905
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 911
    return-void
.end method
