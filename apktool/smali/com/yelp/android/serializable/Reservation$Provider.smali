.class public final enum Lcom/yelp/android/serializable/Reservation$Provider;
.super Ljava/lang/Enum;
.source "Reservation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Reservation$Provider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Reservation$Provider;

.field public static final enum NONE:Lcom/yelp/android/serializable/Reservation$Provider;

.field public static final enum OPENTABLE:Lcom/yelp/android/serializable/Reservation$Provider;

.field public static final enum SEATME:Lcom/yelp/android/serializable/Reservation$Provider;

.field public static final enum YELP:Lcom/yelp/android/serializable/Reservation$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/Reservation$Provider;

    const-string/jumbo v1, "OPENTABLE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Reservation$Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->OPENTABLE:Lcom/yelp/android/serializable/Reservation$Provider;

    .line 27
    new-instance v0, Lcom/yelp/android/serializable/Reservation$Provider;

    const-string/jumbo v1, "SEATME"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/Reservation$Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->SEATME:Lcom/yelp/android/serializable/Reservation$Provider;

    .line 28
    new-instance v0, Lcom/yelp/android/serializable/Reservation$Provider;

    const-string/jumbo v1, "YELP"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/Reservation$Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->YELP:Lcom/yelp/android/serializable/Reservation$Provider;

    .line 29
    new-instance v0, Lcom/yelp/android/serializable/Reservation$Provider;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/Reservation$Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->NONE:Lcom/yelp/android/serializable/Reservation$Provider;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/serializable/Reservation$Provider;

    sget-object v1, Lcom/yelp/android/serializable/Reservation$Provider;->OPENTABLE:Lcom/yelp/android/serializable/Reservation$Provider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Reservation$Provider;->SEATME:Lcom/yelp/android/serializable/Reservation$Provider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Reservation$Provider;->YELP:Lcom/yelp/android/serializable/Reservation$Provider;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Reservation$Provider;->NONE:Lcom/yelp/android/serializable/Reservation$Provider;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->$VALUES:[Lcom/yelp/android/serializable/Reservation$Provider;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Lcom/yelp/android/serializable/Reservation$Provider;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->NONE:Lcom/yelp/android/serializable/Reservation$Provider;

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string/jumbo v0, "opentable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->OPENTABLE:Lcom/yelp/android/serializable/Reservation$Provider;

    goto :goto_0

    .line 36
    :cond_1
    const-string/jumbo v0, "seatme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    sget-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->SEATME:Lcom/yelp/android/serializable/Reservation$Provider;

    goto :goto_0

    .line 39
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->YELP:Lcom/yelp/android/serializable/Reservation$Provider;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Reservation$Provider;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/yelp/android/serializable/Reservation$Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation$Provider;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Reservation$Provider;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/serializable/Reservation$Provider;->$VALUES:[Lcom/yelp/android/serializable/Reservation$Provider;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Reservation$Provider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Reservation$Provider;

    return-object v0
.end method
