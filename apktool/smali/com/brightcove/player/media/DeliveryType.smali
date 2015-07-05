.class public final enum Lcom/brightcove/player/media/DeliveryType;
.super Ljava/lang/Enum;
.source "DeliveryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/media/DeliveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/media/DeliveryType;

.field public static final enum FLV:Lcom/brightcove/player/media/DeliveryType;

.field public static final enum HLS:Lcom/brightcove/player/media/DeliveryType;

.field public static final enum MP4:Lcom/brightcove/player/media/DeliveryType;

.field public static final enum UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

.field public static final enum WVM:Lcom/brightcove/player/media/DeliveryType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/brightcove/player/media/DeliveryType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "UNKNOWN"

    invoke-direct {v0, v1, v3, v2}, Lcom/brightcove/player/media/DeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    .line 25
    new-instance v0, Lcom/brightcove/player/media/DeliveryType;

    const-string/jumbo v1, "MP4"

    const-string/jumbo v2, "video/mp4"

    invoke-direct {v0, v1, v4, v2}, Lcom/brightcove/player/media/DeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    .line 27
    new-instance v0, Lcom/brightcove/player/media/DeliveryType;

    const-string/jumbo v1, "HLS"

    const-string/jumbo v2, "application/vnd.apple.mpegurl"

    invoke-direct {v0, v1, v5, v2}, Lcom/brightcove/player/media/DeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    .line 29
    new-instance v0, Lcom/brightcove/player/media/DeliveryType;

    const-string/jumbo v1, "FLV"

    const-string/jumbo v2, "video/x-flv"

    invoke-direct {v0, v1, v6, v2}, Lcom/brightcove/player/media/DeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brightcove/player/media/DeliveryType;->FLV:Lcom/brightcove/player/media/DeliveryType;

    .line 31
    new-instance v0, Lcom/brightcove/player/media/DeliveryType;

    const-string/jumbo v1, "WVM"

    const-string/jumbo v2, "video/wvm"

    invoke-direct {v0, v1, v7, v2}, Lcom/brightcove/player/media/DeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brightcove/player/media/DeliveryType;->WVM:Lcom/brightcove/player/media/DeliveryType;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/brightcove/player/media/DeliveryType;

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->FLV:Lcom/brightcove/player/media/DeliveryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->WVM:Lcom/brightcove/player/media/DeliveryType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/brightcove/player/media/DeliveryType;->$VALUES:[Lcom/brightcove/player/media/DeliveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/brightcove/player/media/DeliveryType;->type:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/media/DeliveryType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/brightcove/player/media/DeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/media/DeliveryType;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/media/DeliveryType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->$VALUES:[Lcom/brightcove/player/media/DeliveryType;

    invoke-virtual {v0}, [Lcom/brightcove/player/media/DeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/media/DeliveryType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/brightcove/player/media/DeliveryType;->type:Ljava/lang/String;

    return-object v0
.end method
