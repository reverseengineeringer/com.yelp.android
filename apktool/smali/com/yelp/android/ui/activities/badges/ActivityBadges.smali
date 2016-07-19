.class public Lcom/yelp/android/ui/activities/badges/ActivityBadges;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBadges.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/badges/b$c;
.implements Lcom/yelp/android/ui/k;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/yelp/android/ui/activities/badges/a;

.field private c:Lcom/yelp/android/ui/activities/badges/b$a;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/yelp/android/ui/activities/badges/ActivityBadges$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges$1;-><init>(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->a:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)Lcom/yelp/android/ui/activities/badges/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->b:Lcom/yelp/android/ui/activities/badges/a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)Lcom/yelp/android/ui/activities/badges/b$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 64
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Badge;)V
    .locals 2

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Badge;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->startActivity(Landroid/content/Intent;)V

    .line 69
    const v0, 0x7f04001f

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->overridePendingTransition(II)V

    .line 70
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->b:Lcom/yelp/android/ui/activities/badges/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/badges/a;->a(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->enableLoading()V

    .line 75
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->disableLoading()V

    .line 80
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileBadges:Lcom/yelp/android/analytics/iris/ViewIri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserBadges:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->setContentView(I)V

    .line 40
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/b$b;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/BadgesViewModel;

    move-result-object v0

    .line 44
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->B()Lcom/yelp/android/appdata/m;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/yelp/android/appdata/m;->a(Lcom/yelp/android/ui/activities/badges/b$c;Lcom/yelp/android/serializable/BadgesViewModel;)Lcom/yelp/android/ui/activities/badges/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->setPresenter(Lcom/yelp/android/bx/a;)V

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/badges/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/badges/a;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/badges/b$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->b:Lcom/yelp/android/ui/activities/badges/a;

    .line 49
    const v0, 0x7f0f00f9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->a:Landroid/widget/GridView;

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->b:Lcom/yelp/android/ui/activities/badges/a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$a;->a()V

    .line 54
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/serializable/BadgesViewModel;->b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/BadgesViewModel;

    move-result-object v0

    goto :goto_0
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$a;->d()V

    .line 85
    return-void
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c:Lcom/yelp/android/ui/activities/badges/b$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$a;->d()V

    .line 90
    return-void
.end method
