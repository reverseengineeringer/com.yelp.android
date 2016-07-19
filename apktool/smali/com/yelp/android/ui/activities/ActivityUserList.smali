.class public Lcom/yelp/android/ui/activities/ActivityUserList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUserList.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yelp/android/ui/util/ap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityUserList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "users list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "title of the activity"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "iri string"

    invoke-virtual {p3}, Lcom/yelp/android/analytics/iris/ViewIri;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityUserList;)Lcom/yelp/android/ui/util/ap;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityUserList;->b:Lcom/yelp/android/ui/util/ap;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityUserList;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/analytics/iris/ViewIri;->valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityUserList;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityUserList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title of the activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityUserList;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityUserList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "iri string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityUserList;->a:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/yelp/android/ui/util/ap;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/ap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityUserList;->b:Lcom/yelp/android/ui/util/ap;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityUserList;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityUserList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "users list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/Collection;Z)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityUserList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityUserList$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityUserList$1;-><init>(Lcom/yelp/android/ui/activities/ActivityUserList;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityUserList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityUserList;->b:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityUserList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 69
    return-void
.end method
