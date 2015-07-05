.class Lcom/yelp/android/ui/activities/fl;
.super Ljava/lang/Object;
.source "PickCategory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/PickCategory;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/PickCategory;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 332
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 333
    instance-of v1, v0, Lcom/yelp/android/serializable/Category;

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 336
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getNumChildren()I

    move-result v1

    if-lez v1, :cond_1

    .line 338
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->NearbyMoreCategoriesCategory:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "category"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 341
    const-string/jumbo v2, "category"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/PickCategory;->startActivityForResult(Landroid/content/Intent;I)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    const/4 v0, 0x0

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/PickCategory;->a(Lcom/yelp/android/ui/activities/PickCategory;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->NearbyMoreCategoriesCategory:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "category"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    iget-object v1, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/PickCategory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 356
    const-string/jumbo v2, "category"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/PickCategory;->setResult(ILandroid/content/Intent;)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fl;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/PickCategory;->finish()V

    goto :goto_0
.end method
