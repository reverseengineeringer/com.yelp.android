.class public Lcom/yelp/android/appdata/webrequests/ex;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "UpdatePrimaryEmailRequest.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/update_primary_email"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 14
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ex;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ex;->a:Ljava/lang/String;

    return-object v0
.end method
