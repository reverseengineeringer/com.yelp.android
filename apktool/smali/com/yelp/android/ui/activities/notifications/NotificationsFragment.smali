.class public Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/notifications/a;

.field private c:Lcom/yelp/android/appdata/webrequests/ez;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private j:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private k:Lcom/yelp/android/ui/activities/notifications/a$a;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;-><init>()V

    .line 209
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$1;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->f:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 277
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$2;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->g:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 294
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$3;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 357
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$4;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->k:Lcom/yelp/android/ui/activities/notifications/a$a;

    .line 392
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$5;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->l:Landroid/content/BroadcastReceiver;

    .line 431
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "action_request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 173
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

    .line 174
    invoke-virtual {v1}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 176
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/AlertAction;->a(Z)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 183
    :cond_3
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ez;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->f:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->H_()V

    .line 169
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 188
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    .line 195
    :cond_1
    return-void

    .line 186
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->g:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    instance-of v1, v0, Lcom/yelp/android/serializable/Alert;

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 154
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->b()V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Z)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Z)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ez;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->f:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/ez;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->AlertsList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->k:Lcom/yelp/android/ui/activities/notifications/a$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/notifications/a;-><init>(Lcom/yelp/android/ui/activities/notifications/a$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/a;->a(Ljava/util/List;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    .line 81
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "alerts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    .line 77
    const-string/jumbo v0, "next_page"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onPause()V

    .line 107
    const-string/jumbo v0, "alerts_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 108
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 109
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onResume()V

    .line 95
    const-string/jumbo v0, "alerts_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->f:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ez;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 98
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v3, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    const-string/jumbo v0, "alerts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    const-string/jumbo v0, "next_page"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/ez;

    .line 142
    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    .line 143
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->p_()V

    .line 144
    return-void
.end method
