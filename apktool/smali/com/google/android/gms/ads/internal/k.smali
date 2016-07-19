.class public Lcom/google/android/gms/ads/internal/k;
.super Lcom/google/android/gms/ads/internal/client/aa$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/client/y;

.field private b:Lcom/google/android/gms/internal/bm;

.field private c:Lcom/google/android/gms/internal/bn;

.field private d:Lcom/yelp/android/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/i",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/i",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bp;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private g:Lcom/google/android/gms/ads/internal/client/af;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/internal/ds;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final l:Lcom/google/android/gms/ads/internal/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/e;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/aa$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/k;->i:Lcom/google/android/gms/internal/ds;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/yelp/android/g/i;

    invoke-direct {v0}, Lcom/yelp/android/g/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/k;->e:Lcom/yelp/android/g/i;

    new-instance v0, Lcom/yelp/android/g/i;

    invoke-direct {v0}, Lcom/yelp/android/g/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/k;->d:Lcom/yelp/android/g/i;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/k;->l:Lcom/google/android/gms/ads/internal/e;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/client/z;
    .locals 13

    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/k;->i:Lcom/google/android/gms/internal/ds;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/client/y;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/internal/bm;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/k;->c:Lcom/google/android/gms/internal/bn;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/k;->e:Lcom/yelp/android/g/i;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/k;->d:Lcom/yelp/android/g/i;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/k;->l:Lcom/google/android/gms/ads/internal/e;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/ads/internal/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/y;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bn;Lcom/yelp/android/g/i;Lcom/yelp/android/g/i;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/af;Lcom/google/android/gms/ads/internal/e;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/ads/internal/client/af;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/ads/internal/client/y;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/internal/bm;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->c:Lcom/google/android/gms/internal/bn;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bo;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->e:Lcom/yelp/android/g/i;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/g/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->d:Lcom/yelp/android/g/i;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/g/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
