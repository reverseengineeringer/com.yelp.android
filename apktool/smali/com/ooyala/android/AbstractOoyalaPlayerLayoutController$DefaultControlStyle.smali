.class public final enum Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;
.super Ljava/lang/Enum;
.source "AbstractOoyalaPlayerLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultControlStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

.field public static final enum AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

.field public static final enum NONE:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->NONE:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    new-instance v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    const-string/jumbo v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    sget-object v1, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->NONE:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->$VALUES:[Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    return-object v0
.end method

.method public static values()[Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->$VALUES:[Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-virtual {v0}, [Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    return-object v0
.end method
