.class final Lcom/facebook/appevents/AppEventsLogger$1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/AppEventsLogger;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$1;->a:Lcom/facebook/appevents/AppEventsLogger;

    iget-wide v2, p0, Lcom/facebook/appevents/AppEventsLogger$1;->b:J

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$1;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger;->a(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 305
    return-void
.end method
