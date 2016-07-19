.class public Lcom/yelp/android/ui/activities/mutatebiz/PickCategory;
.super Lcom/yelp/android/ui/activities/PickCategory;
.source "PickCategory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/PickCategory;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Category;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, p2, v0, v0}, Lcom/yelp/android/ui/activities/PickCategory;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Category;Ljava/util/List;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/yelp/android/ui/activities/mutatebiz/PickCategory;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessSelectCategory:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/PickCategory;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method
