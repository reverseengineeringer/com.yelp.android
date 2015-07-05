.class Lcom/yelp/android/ui/activities/notifications/k;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/notifications/e;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/k;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Alert;II)V
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Alert;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 334
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_0

    .line 336
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/AlertAction;->setDisabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/k;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/k;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/av/i;

    move-result-object v0

    invoke-static {v1, v0, v1}, Lcom/yelp/android/ui/activities/notifications/m;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)Lcom/yelp/android/ui/activities/notifications/m;

    move-result-object v0

    .line 340
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/m;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 341
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/k;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/k;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/k;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void
.end method
