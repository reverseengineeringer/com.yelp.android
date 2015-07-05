.class public abstract Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;
.super Lcom/yelp/android/appdata/webrequests/eo;
.source "PhotoUploadRequestBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/eo",
        "<",
        "Ljava/lang/Float;",
        "TT;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field protected mEntity:Lorg/apache/http/HttpEntity;

.field private final mImageFile:Ljava/io/File;

.field private mImageParamName:Ljava/lang/String;

.field protected final mImageSize:J

.field private mPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mProgressListener:Lcom/yelp/android/util/n;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ep;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ep",
            "<",
            "Ljava/lang/Float;",
            "TT;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v5, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/eo;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;Lcom/yelp/android/appdata/webrequests/ep;)V

    .line 52
    if-eqz p3, :cond_1

    .line 53
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageSize:J

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageSize:J

    goto :goto_0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Ljava/io/File;
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    return-object v0
.end method

.method protected getPostEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mEntity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getUploadedPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/yelp/android/appdata/webrequests/eo;->onPreExecute()V

    .line 81
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eb;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/eb;-><init>(Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mProgressListener:Lcom/yelp/android/util/n;

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->setupEntity()V

    .line 90
    return-void
.end method

.method public setImageParamName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageParamName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method protected setUploadedPhoto(Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 76
    return-void
.end method

.method public setupEntity()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageParamName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v2, Lcom/yelp/android/util/m;->i:[B

    .line 98
    :goto_0
    new-instance v1, Lcom/yelp/android/util/q;

    const/4 v4, 0x0

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-wide v6, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageSize:J

    move-object v3, v2

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/util/q;-><init>([B[B[BLjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    new-instance v0, Lcom/yelp/android/util/p;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getPostParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mProgressListener:Lcom/yelp/android/util/n;

    invoke-direct {v0, v2, v1, v3}, Lcom/yelp/android/util/p;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/n;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mEntity:Lorg/apache/http/HttpEntity;

    .line 108
    :goto_1
    return-void

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageParamName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :cond_1
    new-instance v0, Lcom/yelp/android/util/p;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getPostParameters()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mProgressListener:Lcom/yelp/android/util/n;

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/util/p;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/n;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mEntity:Lorg/apache/http/HttpEntity;

    goto :goto_1
.end method

.method public abstract writeMoreToParcel(Landroid/os/Parcel;I)V
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->writeMoreToParcel(Landroid/os/Parcel;I)V

    .line 122
    return-void
.end method
