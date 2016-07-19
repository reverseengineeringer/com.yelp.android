.class Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


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
    .line 295
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 8
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
    const/4 v7, 0x1

    .line 316
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 317
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Alert;

    .line 318
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/AlertAction;

    .line 319
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->c()Lcom/yelp/android/serializable/AlertType;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/serializable/AlertType;->FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

    if-ne v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/user/accept"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    new-instance v5, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v5}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    .line 324
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v6

    .line 326
    invoke-virtual {v6, v7}, Lcom/yelp/android/serializable/User;->e(I)V

    .line 327
    iput v7, v5, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->d:I

    .line 328
    iget-object v6, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Context;)V

    .line 330
    :cond_2
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlertAction;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 331
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlertAction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Alert;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Z)V

    .line 351
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

    .line 299
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    move-object v0, p1

    .line 300
    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 301
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

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

    .line 302
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

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

    .line 303
    invoke-virtual {v1}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    invoke-virtual {v1, v6}, Lcom/yelp/android/serializable/AlertAction;->a(Z)V

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a:Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 295
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
