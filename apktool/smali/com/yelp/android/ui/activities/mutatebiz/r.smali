.class Lcom/yelp/android/ui/activities/mutatebiz/r;
.super Ljava/lang/Object;
.source "EditBusiness.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessAddresses;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBusinessAddresses;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/YelpBusinessAddresses;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iput-object p2, v0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress()Landroid/location/Address;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress()Landroid/location/Address;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->disableLoading()V

    .line 148
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
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    const v1, 0x7f0c012c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/r;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 138
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    check-cast p2, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/r;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBusinessAddresses;)V

    return-void
.end method
