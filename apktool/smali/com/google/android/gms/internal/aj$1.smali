.class Lcom/google/android/gms/internal/aj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nl:Ljava/lang/String;

.field final synthetic nm:Lorg/json/JSONObject;

.field final synthetic nn:Lcom/google/android/gms/internal/aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aj;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aj$1;->nn:Lcom/google/android/gms/internal/aj;

    iput-object p2, p0, Lcom/google/android/gms/internal/aj$1;->nl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/aj$1;->nm:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$1;->nn:Lcom/google/android/gms/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/gu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aj$1;->nl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/aj$1;->nm:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gu;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
