.class public Lcom/yelp/android/util/u;
.super Ljava/lang/Object;
.source "YelpAppIndexApiClient.java"


# instance fields
.field private a:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/yelp/android/bh/b;->b:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/u;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/util/u;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 23
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/yelp/android/serializable/AndroidAppAnnotation;)V
    .locals 7

    .prologue
    .line 30
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/yelp/android/bh/b;->c:Lcom/yelp/android/bh/c;

    iget-object v1, p0, Lcom/yelp/android/util/u;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->c()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/yelp/android/bh/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    .line 38
    sget-object v0, Lcom/yelp/android/bh/b;->c:Lcom/yelp/android/bh/c;

    iget-object v1, p0, Lcom/yelp/android/util/u;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AndroidAppAnnotation;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/yelp/android/bh/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    .line 40
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/util/u;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 27
    return-void
.end method
