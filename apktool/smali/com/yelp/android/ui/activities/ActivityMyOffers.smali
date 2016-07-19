.class public Lcom/yelp/android/ui/activities/ActivityMyOffers;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityMyOffers.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityMyOffers$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/db$a;",
        ">;",
        "Lcom/yelp/android/ui/k;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/ActivityMyOffers$a;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/appdata/webrequests/db;

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 150
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityMyOffers$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers$1;-><init>(Lcom/yelp/android/ui/activities/ActivityMyOffers;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->e:Landroid/content/BroadcastReceiver;

    .line 166
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityMyOffers;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityMyOffers;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "show_offer_on_biz_page_launch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/db$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/db$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/db$a;->a()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d(I)V

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->disableLoading()V

    .line 116
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/db$a;->b()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b:I

    .line 117
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers$a;->notifyDataSetChanged()V

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->s()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b:I

    if-lt v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 122
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 126
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers$a;->notifyDataSetChanged()V

    .line 129
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c(I)V

    .line 133
    :cond_1
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/db;
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/db;

    return-object v0
.end method

.method protected c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/db;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/db;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->s()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->s_()I

    move-result v2

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yelp/android/appdata/webrequests/db;-><init>(IIZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/db;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->s()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public d()Lcom/yelp/android/appdata/webrequests/db;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInOfferListView:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b()Lcom/yelp/android/appdata/webrequests/db;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    if-eqz p1, :cond_2

    const-string/jumbo v0, "offers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    const-string/jumbo v0, "offers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    .line 54
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b:I

    .line 55
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b()Lcom/yelp/android/appdata/webrequests/db;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d:Lcom/yelp/android/appdata/webrequests/db;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/db;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/yelp/android/ui/activities/ActivityMyOffers$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2, p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers$a;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers$a;

    .line 69
    const v1, 0x7f07069a

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->setTitle(I)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 72
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.offer_redeemed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void

    .line 59
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->d()Lcom/yelp/android/appdata/webrequests/db;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "offers"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    const-string/jumbo v0, "total"

    iget v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p2, Lcom/yelp/android/appdata/webrequests/db$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/db$a;)V

    return-void
.end method
