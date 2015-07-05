.class public final enum Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;
.super Ljava/lang/Enum;
.source "OoyalaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

.field public static final enum CONTINUE:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

.field public static final enum PAUSE:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

.field public static final enum RESET:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

.field public static final enum STOP:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    const-string/jumbo v1, "CONTINUE"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->CONTINUE:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->PAUSE:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    const-string/jumbo v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->STOP:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    const-string/jumbo v1, "RESET"

    invoke-direct {v0, v1, v5}, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->RESET:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->CONTINUE:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->PAUSE:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->STOP:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->RESET:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->$VALUES:[Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    return-object v0
.end method

.method public static values()[Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->$VALUES:[Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    invoke-virtual {v0}, [Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    return-object v0
.end method
