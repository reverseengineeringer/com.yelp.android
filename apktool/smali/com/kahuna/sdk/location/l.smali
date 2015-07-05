.class public Lcom/kahuna/sdk/location/l;
.super Ljava/lang/Object;
.source "KahunaLocationUtils.java"


# direct methods
.method protected static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "KahunaEngine"

    const-string/jumbo v1, "Google Play services is available. yay!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const-string/jumbo v1, "KahunaEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Google Play services is NOT available. Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 65
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 67
    :goto_0
    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "KahunaEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " permission available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_1
    return v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/h;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "KahunaEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " NOT available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
