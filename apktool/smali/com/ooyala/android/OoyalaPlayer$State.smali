.class public final enum Lcom/ooyala/android/OoyalaPlayer$State;
.super Ljava/lang/Enum;
.source "OoyalaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ooyala/android/OoyalaPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum INIT:Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum READY:Lcom/ooyala/android/OoyalaPlayer$State;

.field public static final enum SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "SUSPENDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$State;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->$VALUES:[Lcom/ooyala/android/OoyalaPlayer$State;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/android/OoyalaPlayer$State;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OoyalaPlayer$State;

    return-object v0
.end method

.method public static values()[Lcom/ooyala/android/OoyalaPlayer$State;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->$VALUES:[Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v0}, [Lcom/ooyala/android/OoyalaPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/android/OoyalaPlayer$State;

    return-object v0
.end method
