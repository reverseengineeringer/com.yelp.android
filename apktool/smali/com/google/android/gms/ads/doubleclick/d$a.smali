.class public final Lcom/google/android/gms/ads/doubleclick/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/doubleclick/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/b$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d$a;->a:Lcom/google/android/gms/ads/internal/client/b$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/doubleclick/d$a;)Lcom/google/android/gms/ads/internal/client/b$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d$a;->a:Lcom/google/android/gms/ads/internal/client/b$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/bc/m;)Lcom/google/android/gms/ads/doubleclick/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d$a;->a:Lcom/google/android/gms/ads/internal/client/b$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/b$a;->a(Lcom/yelp/android/bc/m;)V

    return-object p0
.end method

.method public a()Lcom/google/android/gms/ads/doubleclick/d;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/doubleclick/d;-><init>(Lcom/google/android/gms/ads/doubleclick/d$a;Lcom/google/android/gms/ads/doubleclick/d$1;)V

    return-object v0
.end method
