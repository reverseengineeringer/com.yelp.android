.class public Lcom/adjust/sdk/ActivityHandler$InternalState;
.super Ljava/lang/Object;
.source "ActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/ActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalState"
.end annotation


# instance fields
.field background:Z

.field enabled:Z

.field offline:Z

.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
