.class Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayListData()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/categorypicker/e;->a(Landroid/content/Context;)Z

    move-result v1

    .line 330
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/categorypicker/ActivityCategoryPicker;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
