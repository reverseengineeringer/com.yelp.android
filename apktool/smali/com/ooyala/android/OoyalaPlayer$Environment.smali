.class public final enum Lcom/ooyala/android/OoyalaPlayer$Environment;
.super Ljava/lang/Enum;
.source "OoyalaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/OoyalaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ooyala/android/OoyalaPlayer$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ooyala/android/OoyalaPlayer$Environment;

.field public static final enum LOCAL:Lcom/ooyala/android/OoyalaPlayer$Environment;

.field public static final enum PRODUCTION:Lcom/ooyala/android/OoyalaPlayer$Environment;

.field public static final enum STAGING:Lcom/ooyala/android/OoyalaPlayer$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$Environment;

    const-string/jumbo v1, "PRODUCTION"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaPlayer$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$Environment;->PRODUCTION:Lcom/ooyala/android/OoyalaPlayer$Environment;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$Environment;

    const-string/jumbo v1, "STAGING"

    invoke-direct {v0, v1, v3}, Lcom/ooyala/android/OoyalaPlayer$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$Environment;->STAGING:Lcom/ooyala/android/OoyalaPlayer$Environment;

    new-instance v0, Lcom/ooyala/android/OoyalaPlayer$Environment;

    const-string/jumbo v1, "LOCAL"

    invoke-direct {v0, v1, v4}, Lcom/ooyala/android/OoyalaPlayer$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$Environment;->LOCAL:Lcom/ooyala/android/OoyalaPlayer$Environment;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ooyala/android/OoyalaPlayer$Environment;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$Environment;->PRODUCTION:Lcom/ooyala/android/OoyalaPlayer$Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$Environment;->STAGING:Lcom/ooyala/android/OoyalaPlayer$Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$Environment;->LOCAL:Lcom/ooyala/android/OoyalaPlayer$Environment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer$Environment;->$VALUES:[Lcom/ooyala/android/OoyalaPlayer$Environment;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/android/OoyalaPlayer$Environment;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/ooyala/android/OoyalaPlayer$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OoyalaPlayer$Environment;

    return-object v0
.end method

.method public static values()[Lcom/ooyala/android/OoyalaPlayer$Environment;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$Environment;->$VALUES:[Lcom/ooyala/android/OoyalaPlayer$Environment;

    invoke-virtual {v0}, [Lcom/ooyala/android/OoyalaPlayer$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/android/OoyalaPlayer$Environment;

    return-object v0
.end method
