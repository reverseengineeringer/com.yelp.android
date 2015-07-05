.class public Lcom/yelp/android/ui/activities/ActivityBadges;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBadges.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/ui/p;
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/yelp/android/ui/activities/f;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/appdata/webrequests/gh;

.field private final f:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 270
    new-instance v0, Lcom/yelp/android/ui/activities/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/e;-><init>(Lcom/yelp/android/ui/activities/ActivityBadges;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->f:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityBadges;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBadges;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityBadges;)Lcom/yelp/android/ui/activities/f;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->b:Lcom/yelp/android/ui/activities/f;

    return-object v0
.end method


# virtual methods
.method public a_()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gh;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gh;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gh;->cancel(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->b:Lcom/yelp/android/ui/activities/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/f;->clear()V

    .line 105
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gh;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->d:Ljava/lang/String;

    const/16 v2, 0x32

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->f:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/appdata/webrequests/gh;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gh;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 108
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadges;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    .line 267
    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileBadges:Lcom/yelp/android/analytics/iris/ViewIri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserBadges:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadges;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public m_()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadges;->a_()V

    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadges;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->d:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "User id required for this activity"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadges;->finish()V

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    const-string/jumbo v0, "badges"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->c:Ljava/util/ArrayList;

    .line 75
    :goto_0
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->a:Landroid/widget/GridView;

    .line 76
    new-instance v1, Lcom/yelp/android/ui/activities/f;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadges;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/yelp/android/ui/activities/f;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/yelp/android/ui/activities/e;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->b:Lcom/yelp/android/ui/activities/f;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->b:Lcom/yelp/android/ui/activities/f;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->a:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 76
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->a:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    instance-of v0, v1, Lcom/yelp/android/serializable/Badge;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->isAssigned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    check-cast v1, Lcom/yelp/android/serializable/Badge;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Badge;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadges;->a_()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gh;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->e:Lcom/yelp/android/appdata/webrequests/gh;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadges;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string/jumbo v0, "badges"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadges;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method
