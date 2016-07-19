.class public Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUserTips.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/tips/a$c;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/profile/d;

.field private b:Lcom/yelp/android/ui/activities/profile/tips/a$a;

.field private final c:Lcom/yelp/android/ui/activities/profile/d$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 142
    new-instance v0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$3;-><init>(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->c:Lcom/yelp/android/ui/activities/profile/d$c;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)Lcom/yelp/android/ui/activities/profile/tips/a$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->b:Lcom/yelp/android/ui/activities/profile/tips/a$a;

    return-object v0
.end method

.method private a(ILcom/yelp/android/serializable/User;)V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/yelp/android/ui/activities/profile/d;

    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->c:Lcom/yelp/android/ui/activities/profile/d$c;

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/ui/activities/profile/d;-><init>(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/profile/d$c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a:Lcom/yelp/android/ui/activities/profile/d;

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->setTitle(I)V

    .line 120
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$1;-><init>(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 132
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$2;-><init>(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 140
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->b:Lcom/yelp/android/ui/activities/profile/tips/a$a;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/profile/tips/a$a;->a(Lcom/yelp/android/serializable/Tip;)V

    .line 67
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 83
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/d;->a(Lcom/yelp/android/serializable/SingleFeedEntry;)V

    .line 88
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/d;->a(Ljava/util/Collection;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 78
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/d;->b(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->b:Lcom/yelp/android/ui/activities/profile/tips/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/tips/a$a;->d()V

    .line 62
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v1, "com.yelp.android.tips.update"

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public d(Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileTips:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f0703fb

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/a$b;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/UserTipsViewModel;

    move-result-object v0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->B()Lcom/yelp/android/appdata/m;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->C()Lcom/yelp/android/bt/b;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/yelp/android/appdata/m;->a(Lcom/yelp/android/bt/b;Lcom/yelp/android/ui/activities/profile/tips/a$c;Lcom/yelp/android/serializable/UserTipsViewModel;I)Lcom/yelp/android/ui/activities/profile/tips/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->b:Lcom/yelp/android/ui/activities/profile/tips/a$a;

    .line 51
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->b:Lcom/yelp/android/ui/activities/profile/tips/a$a;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->setPresenter(Lcom/yelp/android/bx/a;)V

    .line 53
    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserTipsViewModel;->c()Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->title:I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserTipsViewModel;->d()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a(ILcom/yelp/android/serializable/User;)V

    .line 54
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->f()V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->b:Lcom/yelp/android/ui/activities/profile/tips/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/tips/a$a;->a()V

    .line 57
    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/serializable/UserTipsViewModel;->b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/UserTipsViewModel;

    move-result-object v0

    goto :goto_0
.end method
