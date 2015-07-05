.class Lcom/yelp/android/ui/activities/mutatebiz/h;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/h;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/h;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getParcelableArrayListData()Ljava/util/ArrayList;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/yelp/android/appdata/Features;->category_picker:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/h;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/h;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/h;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    const/16 v2, 0x3f7

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/h;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/h;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
