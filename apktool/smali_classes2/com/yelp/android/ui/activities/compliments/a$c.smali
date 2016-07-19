.class Lcom/yelp/android/ui/activities/compliments/a$c;
.super Ljava/lang/Object;
.source "ComplimentAdapter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/compliments/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;Landroid/widget/Button;Lcom/yelp/android/ui/activities/compliments/Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 245
    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->c:Lcom/yelp/android/serializable/Compliment;

    .line 246
    iput-object p3, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->b:Landroid/widget/Button;

    .line 247
    iput-object p4, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 248
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
    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 265
    if-ne v0, p2, :cond_0

    .line 266
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->COMMITTED:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/Compliment;->a(Lcom/yelp/android/serializable/Compliment$ComplimentState;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->l()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/compliments/Mode;->getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 270
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
    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 255
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->c:Lcom/yelp/android/serializable/Compliment;

    if-ne v0, v1, :cond_0

    .line 256
    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Compliment;->a(Lcom/yelp/android/serializable/Compliment$ComplimentState;)V

    .line 257
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->b:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/a$c;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->l()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/compliments/Mode;->getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 232
    check-cast p2, Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/a$c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V

    return-void
.end method
