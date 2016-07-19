.class Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
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
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/BusinessAttributes;)V
    .locals 3
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
    .line 905
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    .line 908
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h()Ljava/lang/String;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    const v2, 0x7f0f00d4

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iput-object p2, v0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    .line 913
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f()V

    .line 914
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->disableLoading()V

    .line 915
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
    .line 897
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    const v1, 0x7f0f00d0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 899
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 893
    check-cast p2, Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$9;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/BusinessAttributes;)V

    return-void
.end method
