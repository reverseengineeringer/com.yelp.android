.class public Lcom/google/android/gms/internal/fr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fq$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/fq$a",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fr;->a:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/fr;->b:Z

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/internal/fq;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fr;->b(Lcom/google/android/gms/internal/fq;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/fq;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/d;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v3, 0x1

    const-string/jumbo v2, "images"

    iget-boolean v4, p0, Lcom/google/android/gms/internal/fr;->a:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/fr;->b:Z

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "app_icon"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fr;->a:Z

    invoke-virtual {p1, p2, v1, v3, v2}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/hs;

    move-result-object v4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/fq;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/hs;

    move-result-object v10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/d;

    const-string/jumbo v1, "headline"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "body"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/bd;

    const-string/jumbo v5, "call_to_action"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rating"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {p2, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string/jumbo v8, "store"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "price"

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/ads/internal/formats/a;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/bd;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/a;Landroid/os/Bundle;)V

    return-object v0
.end method
