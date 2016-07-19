.class public abstract Lcom/yelp/android/appdata/webrequests/ShareRequest;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/ShareRequest$1;,
        Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 40
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ShareRequest;->a:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 41
    return-void
.end method
