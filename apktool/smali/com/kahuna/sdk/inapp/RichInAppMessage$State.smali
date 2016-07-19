.class public final enum Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
.super Ljava/lang/Enum;
.source "RichInAppMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/inapp/RichInAppMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kahuna/sdk/inapp/RichInAppMessage$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

.field public static final enum PREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

.field public static final enum PREPARING:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

.field public static final enum UNPREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    const-string/jumbo v1, "UNPREPARED"

    invoke-direct {v0, v1, v2}, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->UNPREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    new-instance v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    const-string/jumbo v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->PREPARING:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    new-instance v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    const-string/jumbo v1, "PREPARED"

    invoke-direct {v0, v1, v4}, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->PREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    sget-object v1, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->UNPREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->PREPARING:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->PREPARED:Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->$VALUES:[Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

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
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    return-object v0
.end method

.method public static values()[Lcom/kahuna/sdk/inapp/RichInAppMessage$State;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->$VALUES:[Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    invoke-virtual {v0}, [Lcom/kahuna/sdk/inapp/RichInAppMessage$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kahuna/sdk/inapp/RichInAppMessage$State;

    return-object v0
.end method
