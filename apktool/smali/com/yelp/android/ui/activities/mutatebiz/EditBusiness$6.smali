.class Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;
.super Ljava/lang/Object;
.source "EditBusiness.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;
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
    .line 211
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

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
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iput-object p2, v0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->f()Landroid/location/Address;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->f()Landroid/location/Address;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->disableLoading()V

    .line 227
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
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    const v1, 0x7f0f00d0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 217
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p2, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBusinessAddresses;)V

    return-void
.end method
