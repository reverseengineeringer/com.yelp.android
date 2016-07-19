.class public abstract Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;
.super Lcom/yelp/android/appdata/webrequests/dq;
.source "TipUploadRequestBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/dq",
        "<",
        "Ljava/lang/Float;",
        "TT;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field protected final g:J

.field protected h:Lcom/yelp/android/util/g$a;

.field private i:Ljava/lang/String;

.field private final j:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/dq$a;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/dq$a",
            "<",
            "Ljava/lang/Float;",
            "TT;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v5, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/dq;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;Lcom/yelp/android/appdata/webrequests/dq$a;)V

    .line 48
    if-eqz p3, :cond_1

    .line 49
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    .line 50
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->g:J

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->g:J

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;)Ljava/io/File;
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a()Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->t()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/util/j;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->t()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/yelp/android/util/j;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/g$a;)V

    goto :goto_0
.end method

.method public abstract a(Landroid/os/Parcel;I)V
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/yelp/android/appdata/webrequests/dq;->e()V

    .line 77
    new-instance v0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase$1;-><init>(Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->h:Lcom/yelp/android/util/g$a;

    .line 86
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->i:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->a(Landroid/os/Parcel;I)V

    .line 109
    return-void
.end method
