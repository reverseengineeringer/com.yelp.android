.class public Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;
.super Ljava/lang/Object;
.source "YelpAdjustLogger.java"

# interfaces
.implements Lcom/adjust/sdk/ILogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/analytics/adjust/YelpAdjustLogger$AdjustException;
    }
.end annotation


# instance fields
.field private a:Lcom/adjust/sdk/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/adjust/sdk/Logger;

    invoke-direct {v0}, Lcom/adjust/sdk/Logger;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    .line 20
    return-void
.end method


# virtual methods
.method public varargs Assert(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger$AdjustException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjust error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger$AdjustException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 39
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public setLogLevel(Lcom/adjust/sdk/LogLevel;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/Logger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 47
    return-void
.end method

.method public setLogLevelString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/Logger;->setLogLevelString(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger$AdjustException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjust warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger$AdjustException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 30
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;->a:Lcom/adjust/sdk/Logger;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method
