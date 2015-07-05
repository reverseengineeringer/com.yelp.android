.class Lcom/yelp/android/appdata/webrequests/eb;
.super Ljava/lang/Object;
.source "PhotoUploadRequestBase.java"

# interfaces
.implements Lcom/yelp/android/util/n;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/eb;->a:Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eb;->a:Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    int-to-float v3, p1

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/eb;->a:Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    iget-wide v4, v4, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->mImageSize:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->publishProgress([Ljava/lang/Object;)V

    .line 87
    return-void
.end method
