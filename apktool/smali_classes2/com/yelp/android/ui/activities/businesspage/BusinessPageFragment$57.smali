.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
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
        "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 4981
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ContinueLastOrderInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4991
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->dismiss()V

    .line 4992
    if-eqz p2, :cond_0

    .line 4993
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/ContinueLastOrderInfo;)V

    .line 4994
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 4995
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/EnumSet;)V

    .line 4997
    :cond_0
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
    .line 4984
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->H(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->dismiss()V

    .line 4985
    const v0, 0x7f070594

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 4986
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4981
    check-cast p2, Lcom/yelp/android/serializable/ContinueLastOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$57;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ContinueLastOrderInfo;)V

    return-void
.end method
