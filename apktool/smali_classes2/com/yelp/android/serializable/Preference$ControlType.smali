.class public final enum Lcom/yelp/android/serializable/Preference$ControlType;
.super Ljava/lang/Enum;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Preference$ControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Preference$ControlType;

.field public static final enum RADIO:Lcom/yelp/android/serializable/Preference$ControlType;

.field public static final enum TOGGLE:Lcom/yelp/android/serializable/Preference$ControlType;

.field public static final enum TOGGLE_RECEIVE_ANY:Lcom/yelp/android/serializable/Preference$ControlType;


# instance fields
.field public apiString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/yelp/android/serializable/Preference$ControlType;

    const-string/jumbo v1, "TOGGLE"

    const-string/jumbo v2, "TOGGLE"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/Preference$ControlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Preference$ControlType;->TOGGLE:Lcom/yelp/android/serializable/Preference$ControlType;

    .line 14
    new-instance v0, Lcom/yelp/android/serializable/Preference$ControlType;

    const-string/jumbo v1, "TOGGLE_RECEIVE_ANY"

    const-string/jumbo v2, "TOGGLE_RECEIVE_ANY"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/Preference$ControlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Preference$ControlType;->TOGGLE_RECEIVE_ANY:Lcom/yelp/android/serializable/Preference$ControlType;

    .line 15
    new-instance v0, Lcom/yelp/android/serializable/Preference$ControlType;

    const-string/jumbo v1, "RADIO"

    const-string/jumbo v2, "RADIO"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/Preference$ControlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Preference$ControlType;->RADIO:Lcom/yelp/android/serializable/Preference$ControlType;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/Preference$ControlType;

    sget-object v1, Lcom/yelp/android/serializable/Preference$ControlType;->TOGGLE:Lcom/yelp/android/serializable/Preference$ControlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Preference$ControlType;->TOGGLE_RECEIVE_ANY:Lcom/yelp/android/serializable/Preference$ControlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Preference$ControlType;->RADIO:Lcom/yelp/android/serializable/Preference$ControlType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/Preference$ControlType;->$VALUES:[Lcom/yelp/android/serializable/Preference$ControlType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/yelp/android/serializable/Preference$ControlType;->apiString:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static fromApiString(Ljava/lang/String;)Lcom/yelp/android/serializable/Preference$ControlType;
    .locals 5

    .prologue
    .line 24
    invoke-static {}, Lcom/yelp/android/serializable/Preference$ControlType;->values()[Lcom/yelp/android/serializable/Preference$ControlType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 25
    iget-object v4, v0, Lcom/yelp/android/serializable/Preference$ControlType;->apiString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    :goto_1
    return-object v0

    .line 24
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Preference$ControlType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/yelp/android/serializable/Preference$ControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Preference$ControlType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Preference$ControlType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/serializable/Preference$ControlType;->$VALUES:[Lcom/yelp/android/serializable/Preference$ControlType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Preference$ControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Preference$ControlType;

    return-object v0
.end method
