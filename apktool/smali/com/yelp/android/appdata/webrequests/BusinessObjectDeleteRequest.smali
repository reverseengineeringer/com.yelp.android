.class public Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "BusinessObjectDeleteRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/Media;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/serializable/Media;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/business/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->mediaType:Ljava/lang/String;
    invoke-static {p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->access$000(Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 27
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;->a:Lcom/yelp/android/serializable/Media;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->mediaType:Ljava/lang/String;
    invoke-static {p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->access$000(Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public b()Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;->a:Lcom/yelp/android/serializable/Media;

    return-object v0
.end method
