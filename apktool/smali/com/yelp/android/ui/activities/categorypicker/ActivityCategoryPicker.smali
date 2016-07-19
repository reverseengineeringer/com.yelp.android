.class public Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityCategoryPicker.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/categorypicker/b$b;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/categorypicker/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

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
            "Lcom/yelp/android/serializable/Category;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/categorypicker/b;->a(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/categorypicker/b;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Lcom/yelp/android/ui/activities/categorypicker/d;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditCategory:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/d;

    const v1, 0x7f0f020d

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/ui/activities/categorypicker/d;-><init>(ILandroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Lcom/yelp/android/ui/activities/categorypicker/d;

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Lcom/yelp/android/ui/activities/categorypicker/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/d;->a(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a:Lcom/yelp/android/ui/activities/categorypicker/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/d;->b(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
