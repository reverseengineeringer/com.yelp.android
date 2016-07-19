.class public Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;
.super Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;
.source "BusinessListComboActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/NearbyRow;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;I)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyRow;

    .line 41
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0, v2, v3, p2}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/Intent;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string/jumbo v1, "titles"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "business_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "start_position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/map/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/map/e",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/yelp/android/ui/map/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(I)Lcom/yelp/android/ui/util/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/w",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->NUMBERED:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 121
    return-object v1
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public synthetic a(Lcom/yelp/android/serializable/f;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b(Z)V

    .line 96
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    instance-of v0, p2, Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 73
    check-cast p2, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b(I)V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->j()Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/map/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 136
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public synthetic b(Lcom/yelp/android/serializable/f;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->j()Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/map/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 104
    return-void
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->k()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "titles"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->c:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "start_position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->d:I

    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
