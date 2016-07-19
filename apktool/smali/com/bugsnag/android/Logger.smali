.class Lcom/bugsnag/android/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method static info(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "Bugsnag"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method static warn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "Bugsnag"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method

.method static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "Bugsnag"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    return-void
.end method
