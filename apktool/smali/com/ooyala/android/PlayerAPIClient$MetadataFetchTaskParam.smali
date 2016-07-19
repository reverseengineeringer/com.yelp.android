.class Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;
.super Ljava/lang/Object;
.source "PlayerAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/PlayerAPIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataFetchTaskParam"
.end annotation


# instance fields
.field public item:Lcom/ooyala/android/ContentItem;

.field final synthetic this$0:Lcom/ooyala/android/PlayerAPIClient;


# direct methods
.method private constructor <init>(Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;->this$0:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ooyala/android/PlayerAPIClient;Lcom/ooyala/android/PlayerAPIClient$1;)V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/ooyala/android/PlayerAPIClient$MetadataFetchTaskParam;-><init>(Lcom/ooyala/android/PlayerAPIClient;)V

    return-void
.end method
