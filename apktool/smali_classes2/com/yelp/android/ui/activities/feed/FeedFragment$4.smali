.class Lcom/yelp/android/ui/activities/feed/FeedFragment$4;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


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
    .line 919
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;)Lcom/yelp/android/g/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;",
            ")",
            "Lcom/yelp/android/g/g",
            "<",
            "Lcom/yelp/android/serializable/AlertAction;",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 965
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 966
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

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

    .line 967
    invoke-virtual {v1}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 968
    invoke-static {v1, v0}, Lcom/yelp/android/g/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/g/g;

    move-result-object v0

    .line 972
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 4
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
    const/4 v3, 0x1

    .line 942
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 943
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;)Lcom/yelp/android/g/g;

    move-result-object v1

    .line 944
    if-eqz v1, :cond_1

    .line 945
    iget-object v0, v1, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->c()Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/user/accept"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    .line 949
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v2

    .line 951
    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/User;->e(I)V

    .line 952
    iput v3, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->d:I

    .line 953
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Context;)V

    .line 955
    :cond_0
    iget-object v0, v1, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, v1, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    iget-object v1, v1, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/AlertAction;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/AlertAction;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Alert;->a(Ljava/lang/String;)V

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 961
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 924
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    move-object v0, p1

    .line 925
    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 926
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;)Lcom/yelp/android/g/g;

    move-result-object v1

    .line 927
    if-eqz v1, :cond_1

    .line 930
    iget-object v0, v1, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

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

    .line 931
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/AlertAction;->a(Z)V

    goto :goto_0

    .line 933
    :cond_0
    iget-object v0, v1, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    iget-object v1, v1, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Alert;->a(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Ljava/util/ArrayList;ILandroid/content/Context;)V

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 937
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 919
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
