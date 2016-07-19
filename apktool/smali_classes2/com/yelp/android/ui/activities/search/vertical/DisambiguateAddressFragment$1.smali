.class Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;
.super Ljava/lang/Object;
.source "DisambiguateAddressFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;
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
        "Lcom/yelp/android/appdata/webrequests/bf$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bf$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/bf$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->b(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V

    .line 158
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bf$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/bf$a;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 165
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 167
    new-instance v4, Lcom/yelp/android/g/a;

    invoke-direct {v4}, Lcom/yelp/android/g/a;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v5, "SOURCE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    const-string/jumbo v1, "source"

    iget-object v5, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v5}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "SOURCE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    const-string/jumbo v5, "did_geolocate"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 174
    const-string/jumbo v1, "did_geolocate"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v3, v2

    .line 184
    :cond_2
    const-string/jumbo v1, "did_modify_geocoder"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_3
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchDeliveryAddressSaved:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 189
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->d(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->d(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;->a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V

    .line 206
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v1, v3

    .line 171
    goto :goto_0

    .line 193
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 196
    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->e(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;)V

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "tag_did_you_mean"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    const v1, 0x7f070297

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    const v2, 0x7f070595

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/support/v4/app/l;)V

    goto :goto_1
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    const v1, 0x7f070297

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p2, Lcom/yelp/android/appdata/webrequests/bf$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/bf$a;)V

    return-void
.end method
