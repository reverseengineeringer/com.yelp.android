.class public Lcom/yelp/android/appdata/webrequests/bc;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "DeleteCreditCardRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/PaymentMethod;)V
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, "account/payment_method/remove"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 13
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PaymentMethod;->d()Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string/jumbo v1, "payment_method_id"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/bc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
