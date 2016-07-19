.class Lcom/yelp/android/ui/dialogs/FiltersDialog$2;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/FiltersDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$2;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$2;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$2;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/dialogs/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/a;->a()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$2;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$2;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0, v2, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V

    goto :goto_0
.end method
