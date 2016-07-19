.class Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;
.super Ljava/lang/Object;
.source "AddAddressFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/BusinessAttributes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/BusinessAttributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/BusinessAttributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l()V

    .line 684
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Lcom/yelp/android/serializable/BusinessAttributes;)Lcom/yelp/android/serializable/BusinessAttributes;

    .line 687
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/serializable/BusinessAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessAttributes;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/serializable/BusinessAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttributes;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Z)Z

    .line 691
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Landroid/view/View;)V

    .line 694
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f05b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 678
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 672
    check-cast p2, Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/BusinessAttributes;)V

    return-void
.end method
