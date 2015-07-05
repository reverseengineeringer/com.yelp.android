.class public Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;
.super Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.source "NotificationsFragment.java"


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

.field private c:Lcom/yelp/android/appdata/webrequests/gg;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/notifications/m;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/yelp/android/av/i;

.field private i:Lcom/yelp/android/av/i;

.field private j:Lcom/yelp/android/ui/activities/notifications/e;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;-><init>()V

    .line 219
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/g;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->g:Lcom/yelp/android/appdata/webrequests/j;

    .line 273
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/i;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->h:Lcom/yelp/android/av/i;

    .line 289
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/j;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->i:Lcom/yelp/android/av/i;

    .line 330
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/k;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j:Lcom/yelp/android/ui/activities/notifications/e;

    .line 355
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/notifications/l;-><init>(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->k:Landroid/content/BroadcastReceiver;

    .line 389
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/ui/activities/notifications/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
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
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 185
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 186
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/AlertAction;->setPath(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 193
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->getActions()Ljava/util/List;

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

    .line 198
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/notifications/a;->notifyDataSetChanged()V

    .line 205
    :cond_1
    return-void

    .line 196
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->h:Lcom/yelp/android/av/i;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gg;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->g:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/gg;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gg;->executeWithLocation([Ljava/lang/Object;)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->i_()V

    .line 181
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->i:Lcom/yelp/android/av/i;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    instance-of v1, v0, Lcom/yelp/android/serializable/Alert;

    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 163
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 165
    const-string/jumbo v2, "url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "list"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    .line 150
    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    .line 151
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->a_()V

    .line 152
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->b()V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Z)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c(Z)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gg;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gg;->isWaitingForLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->g:Lcom/yelp/android/appdata/webrequests/j;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/gg;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gg;->executeWithLocation([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->AlertsList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->j:Lcom/yelp/android/ui/activities/notifications/e;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/notifications/a;-><init>(Lcom/yelp/android/ui/activities/notifications/e;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->b:Lcom/yelp/android/ui/activities/notifications/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/a;->a(Ljava/util/List;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    .line 80
    return-void

    .line 75
    :cond_0
    const-string/jumbo v0, "alerts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    .line 76
    const-string/jumbo v0, "next_page"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onPause()V

    .line 115
    const-string/jumbo v0, "alerts_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 117
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 93
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onResume()V

    .line 94
    const-string/jumbo v0, "alerts_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->g:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gg;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->c:Lcom/yelp/android/appdata/webrequests/gg;

    .line 97
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    .line 100
    :goto_0
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->i:Lcom/yelp/android/av/i;

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/m;

    .line 103
    if-nez v0, :cond_0

    .line 110
    return-void

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 109
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v0, "alerts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 125
    const-string/jumbo v0, "next_page"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
