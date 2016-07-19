.class Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/notifications/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Alert;II)V
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 362
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_1

    .line 364
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 368
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v1

    invoke-static {v0, v1, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    move-result-object v0

    .line 373
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 374
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method
