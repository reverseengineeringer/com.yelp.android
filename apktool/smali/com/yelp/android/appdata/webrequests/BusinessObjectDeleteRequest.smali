.class public Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;
.super Lcom/yelp/android/av/h;
.source "BusinessObjectDeleteRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;Ljava/lang/String;Lcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 20
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

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 21
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

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
