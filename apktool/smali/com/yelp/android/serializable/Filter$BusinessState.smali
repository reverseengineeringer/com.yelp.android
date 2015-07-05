.class public final enum Lcom/yelp/android/serializable/Filter$BusinessState;
.super Ljava/lang/Enum;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Filter$BusinessState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum $:Lcom/yelp/android/serializable/Filter$BusinessState;

.field public static final enum $$:Lcom/yelp/android/serializable/Filter$BusinessState;

.field public static final enum $$$:Lcom/yelp/android/serializable/Filter$BusinessState;

.field public static final enum $$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Filter$BusinessState;

.field public static final enum OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    const-string/jumbo v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Filter$BusinessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    new-instance v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    const-string/jumbo v1, "$"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/Filter$BusinessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$:Lcom/yelp/android/serializable/Filter$BusinessState;

    new-instance v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    const-string/jumbo v1, "$$"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/Filter$BusinessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    new-instance v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    const-string/jumbo v1, "$$$"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/Filter$BusinessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    new-instance v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    const-string/jumbo v1, "$$$$"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/serializable/Filter$BusinessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$:Lcom/yelp/android/serializable/Filter$BusinessState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$VALUES:[Lcom/yelp/android/serializable/Filter$BusinessState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Filter$BusinessState;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Filter$BusinessState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$VALUES:[Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Filter$BusinessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Filter$BusinessState;

    return-object v0
.end method
