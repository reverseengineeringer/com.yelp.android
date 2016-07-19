.class Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
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
    .line 210
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

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
    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->l()V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->d()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/ap;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 249
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/ap;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    .line 255
    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Z)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_NOTIFICATIONS:Lcom/yelp/android/util/ErrorType;

    new-instance v2, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$2;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 271
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 214
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
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1$1;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Z)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    check-cast p2, Lcom/yelp/android/serializable/AlertsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V

    return-void
.end method
