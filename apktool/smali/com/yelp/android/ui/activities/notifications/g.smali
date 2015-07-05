.class Lcom/yelp/android/ui/activities/notifications/g;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/serializable/AlertsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j()V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->getNextPage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->getRevision()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->getRevision()Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Lcom/yelp/android/appdata/webrequests/as;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/av/i;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/as;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 255
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/as;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->getAlerts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    .line 261
    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->getNextPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Z)V

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_NOTIFICIATIONS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 267
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/notifications/h;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/notifications/h;-><init>(Lcom/yelp/android/ui/activities/notifications/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/g;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Z)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    check-cast p2, Lcom/yelp/android/serializable/AlertsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/notifications/g;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V

    return-void
.end method
