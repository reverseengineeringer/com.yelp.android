.class Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;
.super Ljava/lang/Object;
.source "ActivityChangePrimaryEmail.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->hideLoadingDialog()V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->setResult(I)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->b(Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;)Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a(Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;)Lcom/yelp/android/appdata/webrequests/ex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ex;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->b(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->finish()V

    .line 147
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a:Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->hideLoadingDialog()V

    .line 138
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 139
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
