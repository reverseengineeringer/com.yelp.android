.class final Lcom/yelp/android/ui/activities/nearby/u;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/s;

.field private final b:Lcom/yelp/android/serializable/Category;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/nearby/s;Lcom/yelp/android/serializable/Category;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/u;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/yelp/android/ui/activities/nearby/u;->b:Lcom/yelp/android/serializable/Category;

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/nearby/s;Lcom/yelp/android/serializable/Category;Lcom/yelp/android/ui/activities/nearby/t;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/u;-><init>(Lcom/yelp/android/ui/activities/nearby/s;Lcom/yelp/android/serializable/Category;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 245
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyCategory:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "category"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/u;->b:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string/jumbo v0, "MoreCategories"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/u;->b:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->NearbyMoreCategories:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/u;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/u;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v4, v3, v3}, Lcom/yelp/android/ui/activities/PickCategory;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Category;Ljava/util/List;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/u;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/u;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/u;->b:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/u;->b:Lcom/yelp/android/serializable/Category;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
