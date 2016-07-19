.class public Lcom/yelp/android/ui/activities/feed/ActivityEvents;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/ActivityEvents$1;,
        Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/feed/ActivityEvents;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityEvents;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityEvents;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;-><init>(Lcom/yelp/android/ui/activities/feed/ActivityEvents$1;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityEvents;->a:Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;

    .line 42
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityEvents;->a:Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;->a(Ljava/util/List;)V

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityEvents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityEvents;->a:Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityEvents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 45
    return-void
.end method
