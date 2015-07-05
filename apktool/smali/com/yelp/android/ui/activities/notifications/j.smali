.class Lcom/yelp/android/ui/activities/notifications/j;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/j;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/j;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/j;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/j;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Z)V

    .line 324
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 293
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    move-object v0, p1

    .line 294
    check-cast v0, Lcom/yelp/android/ui/activities/notifications/m;

    .line 295
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/j;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Alert;

    .line 296
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/AlertAction;

    .line 297
    invoke-virtual {v1}, Lcom/yelp/android/serializable/AlertAction;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/m;->a(Lcom/yelp/android/ui/activities/notifications/m;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    invoke-virtual {v1, v6}, Lcom/yelp/android/serializable/AlertAction;->setDisabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/j;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/j;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/notifications/j;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
