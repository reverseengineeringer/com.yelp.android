.class Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;
.super Ljava/lang/Object;
.source "ActivityEliteWelcomeSplash.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;
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
        "Lcom/yelp/android/serializable/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Location;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Location;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->disableLoading()V

    .line 331
    if-eqz p2, :cond_0

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->disableLoading()V

    .line 333
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->e(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    const v3, 0x7f070289

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Location;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->f(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    const v1, 0x7f07061f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->b(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    goto :goto_0
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
    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->disableLoading()V

    .line 323
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->b(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V

    .line 326
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 318
    check-cast p2, Lcom/yelp/android/serializable/Location;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Location;)V

    return-void
.end method
