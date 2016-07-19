.class Lcom/ooyala/android/PlayerAPIClient$1;
.super Ljava/lang/Object;
.source "PlayerAPIClient.java"

# interfaces
.implements Lcom/ooyala/android/EmbedTokenGeneratorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/PlayerAPIClient;->authorizeParams(Ljava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Ljava/util/Map;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$1;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    iput-object p2, p0, Lcom/ooyala/android/PlayerAPIClient$1;->val$params:Ljava/util/Map;

    iput-object p3, p0, Lcom/ooyala/android/PlayerAPIClient$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEmbedToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$1;->val$params:Ljava/util/Map;

    const-string/jumbo v1, "embedToken"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/ooyala/android/PlayerAPIClient$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 197
    return-void
.end method
