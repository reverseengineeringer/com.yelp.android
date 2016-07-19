.class Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase$1;
.super Ljava/lang/Object;
.source "TipUploadRequestBase.java"

# interfaces
.implements Lcom/yelp/android/util/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase$1;->a:Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase$1;->a:Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    int-to-float v3, p1

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase$1;->a:Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;

    iget-wide v4, v4, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->g:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->e([Ljava/lang/Object;)V

    .line 84
    return-void
.end method
