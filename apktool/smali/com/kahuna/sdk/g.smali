.class Lcom/kahuna/sdk/g;
.super Ljava/util/TimerTask;
.source "GCMRegistrationManager.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/f;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kahuna/sdk/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/kahuna/sdk/g;->a:Lcom/kahuna/sdk/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/kahuna/sdk/g;->b:Ljava/lang/String;

    .line 269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/kahuna/sdk/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/kahuna/sdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/f;->d()Lcom/kahuna/sdk/f;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/f;->a(Lcom/kahuna/sdk/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kahuna/sdk/g;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/kahuna/sdk/h;->c(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/kahuna/sdk/h;->f()V

    .line 284
    invoke-static {}, Lcom/kahuna/sdk/f;->d()Lcom/kahuna/sdk/f;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/f;->a(Lcom/kahuna/sdk/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/f;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    invoke-static {}, Lcom/kahuna/sdk/f;->d()Lcom/kahuna/sdk/f;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/f;->a(Lcom/kahuna/sdk/f;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/f;->e(Landroid/content/Context;)I

    move-result v2

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Saving regId on app version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/f;->b(Ljava/lang/String;)V

    .line 288
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 289
    const-string/jumbo v3, "registration_id"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string/jumbo v0, "appVersion"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception registering for Push: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/kahuna/sdk/f;->c()V

    goto/16 :goto_0
.end method
