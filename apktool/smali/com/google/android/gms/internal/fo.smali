.class public Lcom/google/android/gms/internal/fo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fn$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/fn$a",
        "<",
        "Lcom/google/android/gms/internal/bt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/internal/fn;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/bv$a;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fo;->b(Lcom/google/android/gms/internal/fn;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/bt;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/fn;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/bt;
    .locals 10

    const/4 v1, 0x1

    const-string/jumbo v0, "image"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v2

    const-string/jumbo v0, "app_icon"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/bt;

    const-string/jumbo v1, "headline"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v3, "body"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

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

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/bt;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
