.class public Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;
.super Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;
.source "ActivityComboNearbyCheckIns.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/friendcheckins/a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    const-string/jumbo v1, "list_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;)Lcom/yelp/android/ui/activities/friendcheckins/a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a:Lcom/yelp/android/ui/activities/friendcheckins/a;

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
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/yelp/android/ui/map/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(I)Lcom/yelp/android/ui/util/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/w",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a:Lcom/yelp/android/ui/activities/friendcheckins/a;

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public synthetic a(Lcom/yelp/android/serializable/f;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->b(Lcom/yelp/android/serializable/YelpCheckIn;)V

    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    instance-of v0, p2, Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_0

    .line 90
    check-cast p2, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 94
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public synthetic b(Lcom/yelp/android/serializable/f;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->j()Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/yelp/android/ui/map/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 85
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->d:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->c:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "like"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "comment"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "view_like_comment"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v3, Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-direct {v3, v5, v6}, Lcom/yelp/android/ui/activities/friendcheckins/a;-><init>(ZZ)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a:Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 46
    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a:Lcom/yelp/android/ui/activities/friendcheckins/a;

    const/16 v4, 0x67

    invoke-virtual {p0, v4, v0, v5}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Landroid/app/PendingIntent;)V

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a:Lcom/yelp/android/ui/activities/friendcheckins/a;

    const/16 v3, 0x66

    invoke-virtual {p0, v3, v1, v5}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b(Landroid/app/PendingIntent;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a:Lcom/yelp/android/ui/activities/friendcheckins/a;

    const/16 v1, 0x68

    invoke-virtual {p0, v1, v2, v5}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->c(Landroid/app/PendingIntent;)V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a:Lcom/yelp/android/ui/activities/friendcheckins/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/util/List;)V

    .line 59
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns$1;-><init>(Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->d:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->b(Z)V

    .line 67
    return-void
.end method
