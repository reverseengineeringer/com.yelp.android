.class public final enum Lcom/ooyala/android/Constants$ReturnState;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ooyala/android/Constants$ReturnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ooyala/android/Constants$ReturnState;

.field public static final enum STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

.field public static final enum STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

.field public static final enum STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    new-instance v0, Lcom/ooyala/android/Constants$ReturnState;

    const-string/jumbo v1, "STATE_MATCHED"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/Constants$ReturnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    new-instance v0, Lcom/ooyala/android/Constants$ReturnState;

    const-string/jumbo v1, "STATE_UNMATCHED"

    invoke-direct {v0, v1, v3}, Lcom/ooyala/android/Constants$ReturnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;

    new-instance v0, Lcom/ooyala/android/Constants$ReturnState;

    const-string/jumbo v1, "STATE_FAIL"

    invoke-direct {v0, v1, v4}, Lcom/ooyala/android/Constants$ReturnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ooyala/android/Constants$ReturnState;

    sget-object v1, Lcom/ooyala/android/Constants$ReturnState;->STATE_MATCHED:Lcom/ooyala/android/Constants$ReturnState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/android/Constants$ReturnState;->STATE_UNMATCHED:Lcom/ooyala/android/Constants$ReturnState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/android/Constants$ReturnState;->STATE_FAIL:Lcom/ooyala/android/Constants$ReturnState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ooyala/android/Constants$ReturnState;->$VALUES:[Lcom/ooyala/android/Constants$ReturnState;

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
    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/android/Constants$ReturnState;
    .locals 1

    .prologue
    .line 251
    const-class v0, Lcom/ooyala/android/Constants$ReturnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Constants$ReturnState;

    return-object v0
.end method

.method public static values()[Lcom/ooyala/android/Constants$ReturnState;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/ooyala/android/Constants$ReturnState;->$VALUES:[Lcom/ooyala/android/Constants$ReturnState;

    invoke-virtual {v0}, [Lcom/ooyala/android/Constants$ReturnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/android/Constants$ReturnState;

    return-object v0
.end method
