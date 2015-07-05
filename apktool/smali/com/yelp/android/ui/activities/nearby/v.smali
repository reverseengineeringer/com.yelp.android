.class final Lcom/yelp/android/ui/activities/nearby/v;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/s;

.field private b:Lcom/yelp/android/serializable/RichSearchSuggestion;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/nearby/s;Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p2, p0, Lcom/yelp/android/ui/activities/nearby/v;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 264
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 268
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyCategory:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "category"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/v;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/v;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-ne v0, v1, :cond_2

    .line 271
    const-string/jumbo v0, "MoreCategories"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/v;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->NearbyMoreCategories:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v4, v3, v3}, Lcom/yelp/android/ui/activities/PickCategory;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Category;Ljava/util/List;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/v;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    .line 281
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/v;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/v;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/v;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
