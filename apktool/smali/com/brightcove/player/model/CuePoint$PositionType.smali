.class public final enum Lcom/brightcove/player/model/CuePoint$PositionType;
.super Ljava/lang/Enum;
.source "CuePoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/model/CuePoint$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/model/CuePoint$PositionType;

.field public static final enum AFTER:Lcom/brightcove/player/model/CuePoint$PositionType;

.field public static final enum BEFORE:Lcom/brightcove/player/model/CuePoint$PositionType;

.field public static final enum POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/brightcove/player/model/CuePoint$PositionType;

    const-string/jumbo v1, "BEFORE"

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/CuePoint$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/CuePoint$PositionType;->BEFORE:Lcom/brightcove/player/model/CuePoint$PositionType;

    new-instance v0, Lcom/brightcove/player/model/CuePoint$PositionType;

    const-string/jumbo v1, "POINT_IN_TIME"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/model/CuePoint$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/CuePoint$PositionType;->POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;

    new-instance v0, Lcom/brightcove/player/model/CuePoint$PositionType;

    const-string/jumbo v1, "AFTER"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/model/CuePoint$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/CuePoint$PositionType;->AFTER:Lcom/brightcove/player/model/CuePoint$PositionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v1, Lcom/brightcove/player/model/CuePoint$PositionType;->BEFORE:Lcom/brightcove/player/model/CuePoint$PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/brightcove/player/model/CuePoint$PositionType;->POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/model/CuePoint$PositionType;->AFTER:Lcom/brightcove/player/model/CuePoint$PositionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/brightcove/player/model/CuePoint$PositionType;->$VALUES:[Lcom/brightcove/player/model/CuePoint$PositionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/CuePoint$PositionType;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/brightcove/player/model/CuePoint$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/CuePoint$PositionType;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/model/CuePoint$PositionType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/brightcove/player/model/CuePoint$PositionType;->$VALUES:[Lcom/brightcove/player/model/CuePoint$PositionType;

    invoke-virtual {v0}, [Lcom/brightcove/player/model/CuePoint$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/model/CuePoint$PositionType;

    return-object v0
.end method
