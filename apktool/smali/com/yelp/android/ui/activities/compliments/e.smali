.class Lcom/yelp/android/ui/activities/compliments/e;
.super Ljava/lang/Object;
.source "ComplimentAdapter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/widget/Button;

.field c:Lcom/yelp/android/serializable/Compliment;

.field d:Lcom/yelp/android/ui/activities/compliments/Mode;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/Compliment;Landroid/widget/Button;Lcom/yelp/android/ui/activities/compliments/Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Compliment;",
            "Landroid/widget/Button;",
            "Lcom/yelp/android/ui/activities/compliments/Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/e;->a:Lcom/yelp/android/appdata/webrequests/m;

    .line 228
    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/e;->c:Lcom/yelp/android/serializable/Compliment;

    .line 229
    iput-object p3, p0, Lcom/yelp/android/ui/activities/compliments/e;->b:Landroid/widget/Button;

    .line 230
    iput-object p4, p0, Lcom/yelp/android/ui/activities/compliments/e;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 231
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/e;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 248
    if-ne v0, p2, :cond_0

    .line 249
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->COMMITTED:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/Compliment;->setState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/e;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/e;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getState()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/compliments/Mode;->getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/e;->a:Lcom/yelp/android/appdata/webrequests/m;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/m;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 253
    :cond_0
    return-void
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
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/e;->a:Lcom/yelp/android/appdata/webrequests/m;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/m;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/e;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 238
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/e;->c:Lcom/yelp/android/serializable/Compliment;

    if-ne v0, v1, :cond_0

    .line 239
    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Compliment;->setState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)V

    .line 240
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/e;->b:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/e;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/e;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getState()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/compliments/Mode;->getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 243
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p2, Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/e;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V

    return-void
.end method
