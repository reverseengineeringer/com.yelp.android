.class final Lcom/facebook/AppEventsLogger$PersistedAppSessionInfo$1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1358
    # getter for: Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/AppEventsLogger;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AppEventsLogger$PersistedAppSessionInfo;->saveAppSessionInformation(Landroid/content/Context;)V

    .line 1359
    return-void
.end method
