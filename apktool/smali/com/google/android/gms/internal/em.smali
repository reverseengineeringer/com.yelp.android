.class public Lcom/google/android/gms/internal/em;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/em$1;,
        Lcom/google/android/gms/internal/em$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/em$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/em$a;->a(Lcom/google/android/gms/internal/em$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/em;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/em$a;->b(Lcom/google/android/gms/internal/em$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/em;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/em$a;->c(Lcom/google/android/gms/internal/em$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/em;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/em$a;->d(Lcom/google/android/gms/internal/em$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/em;->d:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/em$a;->e(Lcom/google/android/gms/internal/em$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/em;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/em$a;Lcom/google/android/gms/internal/em$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/em;-><init>(Lcom/google/android/gms/internal/em$a;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/em;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/em;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/em;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/em;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/em;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
