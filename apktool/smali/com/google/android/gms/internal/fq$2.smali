.class Lcom/google/android/gms/internal/fq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/fq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/fq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fq;Lcom/google/android/gms/internal/hp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fq$2;->c:Lcom/google/android/gms/internal/fq;

    iput-object p2, p0, Lcom/google/android/gms/internal/fq$2;->a:Lcom/google/android/gms/internal/hp;

    iput-object p3, p0, Lcom/google/android/gms/internal/fq$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fq$2;->a:Lcom/google/android/gms/internal/hp;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq$2;->c:Lcom/google/android/gms/internal/fq;

    invoke-static {v1}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/fq;)Lcom/google/android/gms/ads/internal/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/q;->z()Lcom/yelp/android/g/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fq$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yelp/android/g/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hp;->b(Ljava/lang/Object;)V

    return-void
.end method
