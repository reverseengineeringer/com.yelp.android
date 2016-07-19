.class Lcom/crashlytics/android/core/i$8;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/crashlytics/android/core/i$8;->b:Lcom/crashlytics/android/core/i;

    iput-object p2, p0, Lcom/crashlytics/android/core/i$8;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/crashlytics/android/core/i$8;->b:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Lcom/crashlytics/android/core/i;->f(Lcom/crashlytics/android/core/i;)Lcom/crashlytics/android/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 1259
    iget-object v1, p0, Lcom/crashlytics/android/core/i$8;->b:Lcom/crashlytics/android/core/i;

    invoke-static {v1}, Lcom/crashlytics/android/core/i;->f(Lcom/crashlytics/android/core/i;)Lcom/crashlytics/android/core/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/e;->a(Lio/fabric/sdk/android/services/settings/s;)Lcom/crashlytics/android/core/k;

    move-result-object v0

    .line 1264
    if-eqz v0, :cond_0

    .line 1265
    new-instance v1, Lcom/crashlytics/android/core/v;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/v;-><init>(Lcom/crashlytics/android/core/k;)V

    new-instance v0, Lcom/crashlytics/android/core/x;

    iget-object v2, p0, Lcom/crashlytics/android/core/i$8;->a:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/core/i;->i()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/core/x;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/v;->a(Lcom/crashlytics/android/core/u;)Z

    .line 1269
    :cond_0
    return-void
.end method
