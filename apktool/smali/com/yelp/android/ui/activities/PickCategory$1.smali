.class Lcom/yelp/android/ui/activities/PickCategory$1;
.super Ljava/lang/Object;
.source "PickCategory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/PickCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/PickCategory;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/PickCategory;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

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
    .line 346
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 347
    instance-of v1, v0, Lcom/yelp/android/serializable/Category;

    if-eqz v1, :cond_0

    .line 348
    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 350
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->f()I

    move-result v1

    if-lez v1, :cond_1

    .line 352
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->NearbyMoreCategoriesCategory:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "category"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 357
    const-string/jumbo v2, "category"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/PickCategory;->startActivityForResult(Landroid/content/Intent;I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    const/4 v0, 0x0

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/PickCategory;->a(Lcom/yelp/android/ui/activities/PickCategory;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->NearbyMoreCategoriesCategory:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "category"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    iget-object v1, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/PickCategory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 374
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/PickCategory;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 375
    const-string/jumbo v2, "category"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/PickCategory;->setResult(ILandroid/content/Intent;)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/PickCategory$1;->a:Lcom/yelp/android/ui/activities/PickCategory;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/PickCategory;->finish()V

    goto :goto_0
.end method
